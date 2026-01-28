Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C5D2F361A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769589834; cv=none; b=cPENrcXMzlzXlOWfJtsX2L+b+3Qx0xWJB0Y+VsuKMOlmuAu/MWeReIBkUxuSjcIcGrFeL4dSc3v1eEItp0hZx25Q6Fuc92BXoP434vjHzQmQCf2+R4LnY6AA3Wxz9hMZgBqDfvCIgMCcyJFwQuHA02cq7gMWt+1ZczCFrZV1jDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769589834; c=relaxed/simple;
	bh=SKj7u+e9nC5gH8Doqbi9l2er5txkFg++5A5F41WUB1k=;
	h=To:Subject:From:Message-Id:Date; b=F4WiisSC4uKb48vH+jEVwmXn5WbXtfIzcT3JZElw0kYU4YQ47fgSf19HxaU7AkrxX+5bOxFBL/P+eV4ljmsE/d1fMrTR//i/afoF1Jo9zFGs++efy8H92PkKzrlzFQepgCKxMUQzD0clZbK5ssXX57trEW9wQtiDStB4cK4TI2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9p1iCjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9p1iCjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5780C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769589833;
	bh=SKj7u+e9nC5gH8Doqbi9l2er5txkFg++5A5F41WUB1k=;
	h=To:Subject:From:Date:From;
	b=l9p1iCjm/uNvQRCU5cHpd9Ni4Kn0KhBoyNsTvf8Bb1XcT+E9aM7PLeVx8n3TF/acf
	 FWwjhBcEakF3jw3SnilHvn4al8RvTG+7B5jIoafLh9o93LjjRsrj2Tzor6BD2t+0Tk
	 Va/QVRg6bWF/12ahY0GcaIpM7SyxPR//hMtU5dgwkYENnZq8wyu4mpw65E8oJtegJo
	 fRzvthDVEQKcsCJC1+K8/9AF/qUmWRwimAtocrJqV5NsTof/JcEBJ97INxaR8C2dfA
	 9ZWM4AVSEyNE42ajRqtRDhvjQG0iNUy0A910OvmCEduwHuzBWxrkROkKUILerlIDUS
	 hpg7hqOgffBJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC9D35690
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958983358.12126.9721741362085035656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a853615835345020c5575a2e6eb4529a4fe5e04ae921fc7e26fc66bddf94cc28
Date: Wed, 28 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769589833
