Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE172309AA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783241914; cv=none; b=X1cUwM9hijoWJ25TbUk78OvXWdfPqlLJcEf8ysSAHgvwsGhISqDznB7qsABceb5aDZqK+/pZxQ2bosfzxPuFYqr8lJTz3Q5C+HiOM7nslIiQXg5LJcMTavdVx0rP8Q1/AIqVbwGfU56uMi5oEgBhOMV9u6dJG9US+m4iYZHY18M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783241914; c=relaxed/simple;
	bh=d9gWHhjld7Qw8oADl9HAZ90Zzb2VNiz6PNYMuFjpSMY=;
	h=To:Subject:From:Message-Id:Date; b=uV2G5WS4PUsLix+zKzojt8PYaW/QcIfHyTdynaffti6j+runeotwDTniiTkCBSHiXY7KPppi6wG6BQqNPyGO36QfLUSdj0EYdDFUyybtsX0vZvMz7Qy5VLtSoeWkse5IvWiiPLteLni7sD7Z5p7n7gWeuMqvEwQWe3aAa6cam0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcG3D1uV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcG3D1uV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5022C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783241913;
	bh=d9gWHhjld7Qw8oADl9HAZ90Zzb2VNiz6PNYMuFjpSMY=;
	h=To:Subject:From:Date:From;
	b=gcG3D1uVtPzuGhrsp7nnnI+x870Q9P3d5dXwRjOLllR+Jf/y0k5qbyUzv35BfsLN4
	 yJLAOTd7RMhEoSATyGQulaAdHlMra8F9hwpPRUPx+i95qeJ9nqXWsKtKI08F059pWT
	 4tvNOHzLXfeJpz9yKTHTNEw5WIJeuqYIgd8bmOjyXuROx/mi8bTmt6HKdkEbSGLHHE
	 AkETL4ty7XSSE+ndTgPYqW0gEe1OdquNtb9BYGuIOsZvsCMDkNGyQOm7ZNS3e2Wp3u
	 ouLQUioYqdxjWKMkbksmUXKsBfhXID8MBHxxkpWAje1IKp5ObLQTlEux+Cfm0ku2t5
	 0dOPDeerlnHdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA5DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324191368.24866.663143296273356996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e071e1394106a582ec8267172afd4c8af5449dddef83d37914dcaf0ec182293b
Date: Sun, 05 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783241913
