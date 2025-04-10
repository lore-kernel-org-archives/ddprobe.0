Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDB71EDA28
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744306794; cv=none; b=qiB46ewX+n9MzWHtb1CH5ZV85ainwNSyRHKcpje5AjunivD1J8/ZyiTky9tjyYriddRfQcPLOOZPfyAck3unUKQNq0lA4H1BryiSwkbVXSeuOC9Ze4th0k9eeTpCp+9Uoo9zCN2KB3VxPGwvbo75/Qt/JFS/nQrgvISURcX6Z3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744306794; c=relaxed/simple;
	bh=ia5X8bUQJUidu77k41m24GMpAX2zhY4WvLI0OuGIedM=;
	h=To:Subject:From:Message-Id:Date; b=BM96GiYNZaMIQWlKnqS4IegL7kr5yB8ZwsufDPMXP6pu3ScR7KxG1lPkqgh9bkatmnSE1hwtAtkpjGsTuGeBoWNV8wNDiWm3LxVlb6Ctu78R/yXiNiYahAV+J+Ml2EBGQfz3lccA6duNcrU9vOc+ZeAYiSbaeLIQMQOLTaAr6jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzt7DCp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzt7DCp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DFFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744306793;
	bh=ia5X8bUQJUidu77k41m24GMpAX2zhY4WvLI0OuGIedM=;
	h=To:Subject:From:Date:From;
	b=Rzt7DCp8Xowf0v05ty+Dx+/OlaHMjSGYnlMXdncoc+fHuoYW9lfJKn2fMQUtCyIJU
	 y0B7E/Ja9hnopl2gkoLTxaf7QXMdNVcSDffkT+YyStAPJI79osksjkHsWOVV75NQu0
	 3JMavmvrL0oci6fETRAoeEScIeDJVnTm818JkoYPNefivpO4RLfDWjCexmpgdxmq/0
	 9uTLJAZypYKy3c+NFePThC1Ibj7U6ftIaLPWkDE58nlcZpKL15IFd1ElfcSU97MV9V
	 wyAH6bGeAQ+Mgd0mMnnOohz/vdBvqd31NJ8mM5dYKEp4mUtCHXca871C8PsAi6lZFd
	 qJPe5CXklUw+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9223BC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430679358.12593.7394254500855377475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d1ad44af7ec818071a919bd2c857de08046271d9839d8df522a855382f1a5c
Date: Thu, 10 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744306793
