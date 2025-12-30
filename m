Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2761A9F9B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767131634; cv=none; b=oRLmCUGJxAP5dk1AQR6AyVUtocOUB0SLn1em8gpoFuHig3gU+TYKlJVoT13VQrf4RVFti6vBV6v5wz+I2aMXtZmbeGNr9oEDfwfZKP0D9LzjkTFalWgxBN8hr3IlqGZ00xhplTKpC4HCUWs5khrmmsMnlwYUlezMxHbxqa9Pnwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767131634; c=relaxed/simple;
	bh=BW3kbssJkNuIukKEWaEphjqJFH9BGs5N97iOtPyk4Bs=;
	h=To:Subject:From:Message-Id:Date; b=kVXzX4VFlFKIDSQibz+2wDGSWNR5ybDuT3MSqCfGPZe8Srjt8FJSax8MxwS2aOJOeSuaFI6prHsrpD/K+gmqg1zUbX+zP5w92RYrbkvTfd1Weh1JQtqRnCCCwfp1GsTgSQBaWIAPKl6G051z7Iqck16nfnO5cQAl6ru/DHQO9hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJTohldB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJTohldB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3147C113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767131633;
	bh=BW3kbssJkNuIukKEWaEphjqJFH9BGs5N97iOtPyk4Bs=;
	h=To:Subject:From:Date:From;
	b=LJTohldBvvPSsRKx5bTckBbvXRWC5DBK9LrhhLdhoJ6DRKxlmN6Ih2z2cXqGiB7vd
	 1LnJiycXi/LCc/W/1Qq9PYJFTF/FVH0PH2ez4mNp3lv6t2T17dIXKfcq5gplOdvIHT
	 hIQZqncSTHdLVGPmhZk+guHI5r9Z7IcTX8SXBtw+OAmgUrrCf3cpm5Qxtp2puiYuZt
	 +wiSSY4PiDtS2QAAxolIrn7EmNZo+8zx0E5utFEXpUn4i1wvFlqEwTr7RaLc8qjxRm
	 yPaY9Sed5/jKcVn4Mqtmas2M3fkz2M243KbfcFFY6LLCDo8URkxb/WFfNYBbbtRiPi
	 ZUd4nhhcWj7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE1EE57C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713163357.7205.13638515927972833085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f766c7046da3fc50c9ad8afecb8a42629e4b198e042594202bd5ec956a37bb
Date: Tue, 30 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767131633
