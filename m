Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F3320DD40
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744819794; cv=none; b=uBZ+D+FQw+nNy6MqrX89nE3HtjWZP4unLbGIYUIGk6Ty6OK3/DCcnzcnJnZJOZph8ZumROuukhe5rqWtKmdh2UOtsW8QNLxetj/0BMh/WOwY8yvOJLk3owjL3kkXkz7gZZlf9Dc2HZwaU5PAa2L97YOko/3BMDYL8JO3M+CSnxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744819794; c=relaxed/simple;
	bh=dT+VOhCIJWCqn99qLrz+nDewkOOIpOvD00NK39BkNWY=;
	h=To:Subject:From:Message-Id:Date; b=JOw+QOLmqT9UoH9BoF59JeQaPn4u1Slsxtlv28apVxJQ6FdiXQXiSe8W6yoqcKQ0ubTT5k43TUZdgjFCHNfElQ8FU0RIIiuF27b3+tXw8IbbyrwD/Yj5rhrSdPRYqUS2P85k41Yb97DV8VKG+OxGoikoneB8/i6dbcchCMT15sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJWNTsQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJWNTsQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8D1C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744819793;
	bh=dT+VOhCIJWCqn99qLrz+nDewkOOIpOvD00NK39BkNWY=;
	h=To:Subject:From:Date:From;
	b=sJWNTsQdWQP0SuSLVA2lUY1XbR8hYi4fYCOySndOiwC5ROzjIS8ZduvciYKUuLgU4
	 iUcw4gOSoIpld2ijBRa+YhT988I9scfw46Vh7xTrJRvfvjioVWlv2ewmaOapAuKihT
	 hUZo3rahe2EcUpMpe/qPwVmoVBN9WnRfiovmDp6O1gMdXwW58Y/mafhp/Cpoy/93RW
	 FfMlOTKuggflegis0p8al53vbQlirjQFYJpcje7uAEP3xsc8cJoR9NKPbEpB/K39lD
	 q1TzGrHUfgD4Q6QrkuRqpKe5sALn5JBJC2UAlqMMFYRcUuxChTzV6bU2E66vgd54FH
	 EeHP9OpnXhjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE96C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481979362.23709.8408500661314545205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8614346897279581281e318176e705073c2bb850cef94ebd7cb1a1abc965acb4
Date: Wed, 16 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744819793
