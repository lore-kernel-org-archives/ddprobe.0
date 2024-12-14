Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F887E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734194154; cv=none; b=TDti9evvc25mWlzY9dxtSiKnBPihWj89WZLLIzIOp9eVcziz1Tk2zEeGn/InzsORelIuvjfS1Q5dfB2Xc6P93t/00SqvmRVrMBVzDhoXufLBlIpxC3BQR1lc9sWq9NuhZNY9M4ncO/gmXzwiMI3iQK3Scz1nKhJlyd7eyJhOGFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734194154; c=relaxed/simple;
	bh=78Aib1uMQoRN+7KW7w/aYxy80AxNgujQCZQCfqfG95s=;
	h=To:Subject:From:Message-Id:Date; b=CQNKvDz//Z7SAB9wjWItjrnIDZ+K+bO5DE0ulZLnTKAxuqTvrkoZfeEVZlbCR1vfnvYY4oa3Tv6LRDZGajjMkukUOjVmUn5mTbMa/1l4nMGdmY0N5i/YM5HgGjmNdCei4noiR/qd3w5xBOG6Qls+sLE26xV/ppy93XGQNzcIEmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByybMf1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByybMf1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE706C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734194153;
	bh=78Aib1uMQoRN+7KW7w/aYxy80AxNgujQCZQCfqfG95s=;
	h=To:Subject:From:Date:From;
	b=ByybMf1cDEZEc8UEUuEz4LX84lL6qCx/0W3kmYu1JDxttDRQ3GLFThrQleODkWL66
	 cdV4J+xglmRRTqCObIeUJMkM/7+v/VkBMYBytAocmkVEASpBqqZZ1FBArArY/steLq
	 0fnNdGyfxQWrNUh71Q/QM1+OasCsITto5ODntyLVnE6xox1A90ujoLYC+SNNgjwam/
	 DsBODNGtprMYjOvW19WE1VvEMCmzMlGvTmfc8rm6ZAitbnsvsDePJSO11TPrTtMgbh
	 cQlaW3AHteXU9hogi7ycfDFzvvtgQTgcL5VERAxSSmg9s8HplelQoe+JkiyHkzIb1u
	 kTPvI2QfZplJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B03FE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419415359.17679.1230930673183495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a0accd8a19885d29b24f234057c4b2d59614b8589c5d8cd793a07610f57764
Date: Sat, 14 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734194153
