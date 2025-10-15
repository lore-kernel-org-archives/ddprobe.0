Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B10288522
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555994; cv=none; b=ZoOdytYhV2dc2I8CmWk7hXp9RJqP4mGz2vuo5RvBwiFLqdb1q6ddK/pCiogrCgy4Jb3uR68W8ZoS93kER81egBh8mg1ROgVCvkI8OMeMeQDPaLKhfos3MNhuLNjsig6vRO6eekJxnA1FYcVSGekulfR/gGfAuMz3pfvSsdaOKJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555994; c=relaxed/simple;
	bh=K2BlHAP8VyUIwKap5B2hy1rg9nRo+v1mGFZ6M8CqLAM=;
	h=To:Subject:From:Message-Id:Date; b=EL34OP+f2+1bEYF+5E3EkLApZAYEGJmpxYmy6uQe7MCK3ksBaJntMOCZm/1rcUxtaf2j8LIFkz0DBuUAhXuTger8WiSPTnxnPL5VWdW/ge3peeNIRpd7FI9Pq1VW9GbqxTTPUj/C3sJvX5kxFHoljJKiHhnChcSiFkQQkbFuBXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=At8Jk8PL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="At8Jk8PL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9835C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760555993;
	bh=K2BlHAP8VyUIwKap5B2hy1rg9nRo+v1mGFZ6M8CqLAM=;
	h=To:Subject:From:Date:From;
	b=At8Jk8PLIFnUopMR8iscJX614Uo3KHI3PsituWcnA5Fn0NAFwm5QQTlqLpfjjGljf
	 zRnpWDN9P8vWtRPZNceqKhyxnsydmshVDraMJJDUebSWtglqOvXBjfGyeAIa/HY+F/
	 5PBf6xiZC0JzNCEO7S/pKjtmnTee3cI0vtui/WbQYSIo1pH+apMkDPRz8YEyp6iggF
	 CvzKmZLUroqeDKO7Jh6euPIqvkuHaCkuQAtvk9WxRVWyX6xXADIbwWU99MpiDZMVMK
	 FEbtmxEZZjHumxAiF/P0/omZm7JunBno8MN9BMweOyq5e8cUCz/4E2IJHhBAwoC8ph
	 ofVU1RIhiEdHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957DECCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055599360.26022.3688619715657721006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badca7fa16af2288331dd2e1470ec1054f48ff2e5d32b4d8f3cd5af96355b43b
Date: Wed, 15 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760555993
