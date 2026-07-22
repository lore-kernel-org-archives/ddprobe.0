Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5CA40F726
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784717914; cv=none; b=rjaPOHJYHyJSfoubFGdxX2Ndhyd4C+yBAjyHefyW87IP+cjFyefetEK68HPhD0DtKgeXgZdRngziqpKOnPQZH5N9cqAbLnJ7heSEMG+UbvbnZtR586GxqdWwBRSxAGV/9RD9J1aOAeMmRDg6F5pPNb8I6/D7ehQm4CWfaMju7LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784717914; c=relaxed/simple;
	bh=YD9YaGYPMiz9RZ3FQv+bhe48kpw+KSrEdQ/oSuyjKgE=;
	h=To:Subject:From:Message-Id:Date; b=qlWUYELOTrz//mcxhqlm4pDkeVlsS5EbJIfIXnAAOy5ZUszxNF6d8wBU8tSUMwcerB98jX6gEN2kizKmkFjkea2mKP2S82qRLYqfJKwP6iEdxmPuHy1Wn28apI0LLCAbzj7GEiZm4qYcjkYgxO4YBvracFql96KijXr1bAtk00I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThtcfliL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThtcfliL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB68FC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784717914;
	bh=YD9YaGYPMiz9RZ3FQv+bhe48kpw+KSrEdQ/oSuyjKgE=;
	h=To:Subject:From:Date:From;
	b=ThtcfliL36k01bFiNCrwUCoz8tfmTiVnNFon8U2MRLbkB/7n6qBYOxfI3cMaj2Ynr
	 5KokOTNDm6fPlKGg3UsxLfK0JvfGnZ/r2Rr6KVYyMTZ6uTtbXgjh16QP18UEayCDXo
	 gUNDpoB9xd2r5NB5p7HbfPiRyy9/OJGiasZCntI4tJZaESMztTrp5xtLeoXqpKiM6V
	 zOTsAErDZJcc5a89WrTqCqE71JmVe8luckFYDZzWtX3vvmC6dkENMRpVQ38OEGHx/b
	 ur/6qkO7jDnWzG1lQLg0X7raBWgAX7vQuKhQ5ACkRPx3Io7k0KEckipFySoisucDWp
	 z8LaT9XVfFPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF96C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471791374.9300.3196886830890654785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6050b1b9082fae576cc491f64385501d0d162c9e85f29bf771d21e5668fa3465
Date: Wed, 22 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784717913
