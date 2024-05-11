Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607A68F6F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715452343; cv=none; b=S7U/JKx0YHWdZSLg1/sTQWR4Um871ErciYSf6qaZsjlV9fX/sLggGMxQUcrENgbAbgmpZ65AGocpIk0svkp5PPYYZokydKJpco4OA/qxo8UKHUtUsYgQLi7Py8nt3KaOzrcCISajqFk1/2rpSO2laRZ3AA/H1OReKYU3M0bXKLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715452343; c=relaxed/simple;
	bh=dugm80qvxjgD4mDEAKNPztBAPO7T9dS3CATioNmwKZ0=;
	h=To:Subject:From:Message-Id:Date; b=QKnoVDLqmuJyQcyJyXW9DOT2dPGXZMgOH2UgGZ/DIGnujpoZ4pAB3f1S0umdBzXC8XTtqQ9lfazWkTdA5lzGkweOUkU6kWZgUy1dSYGDxPAPMtxSEZh/hvB/xG+XTd64Jh6MZcFsWwW+aiT5qxVn9IlugXjP6c+Le7xQzzm4JGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1mUs62I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1mUs62I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8068C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715452342;
	bh=dugm80qvxjgD4mDEAKNPztBAPO7T9dS3CATioNmwKZ0=;
	h=To:Subject:From:Date:From;
	b=Z1mUs62I8eOl3xkNV3qDC9ZkrzQ1DfWQ8pOdrvTYm85mIP9SfyN6McJnFI/7IdpLv
	 kLLQ9b8qoZVViAdH69smpt8FZCzoB4lIeH2EkplPMPG2ZvXbkfowACtIW+NKi8Z4nn
	 ElpyMJCpdtqnyiYvVMEiNT0CJg9GdrViJlfLzU4jIGbrD1i3R4huhaEJhipuTorhIO
	 fEOP3jVQ3cAihF0NnEJynoOkjwuhJF8p5/zyYOnvDlgYsWQLBFiy7fGnaeA1/Phsrg
	 n8QmfRjsMOEUIaYZxDZbrDqIZXF/SUDZDH0tz+7KaNxLKeyZiXhQzJy7BgOJdTunN8
	 SEGpfM8EMe8kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFB4C25B77
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171545234277.24228.7884425851332633762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f32b56abe58919c62349a6532e53eef3bb7952f61d0133e03c2e7af51b5611
Date: Sat, 11 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715452342
