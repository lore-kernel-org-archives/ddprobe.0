Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391641991B6
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746260994; cv=none; b=Bci/Bwk4HuHfwfHRNY6AyVTFvaMPayaVPmR5JH+6EJg2I+eswPC/Gb0Wr68o/hnnL8gNxOoVKN0XiAKTAiCSwtYSsiDPMaOqYJ8Z/7AqW2pQ82t/19r11OC55cFPb2Lhu1YlnmqjsHKq3tRQAgfdX88/AfdVrw4vnGM0cm7yoyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746260994; c=relaxed/simple;
	bh=N6R0CjBRgIY5JPInxMuo36IHueKchlGHX+GC/YfxJwE=;
	h=To:Subject:From:Message-Id:Date; b=D4fMklddN3D56YnXhhAVKhCiLeVVse0E8EHDSoJeNRBe6CsUVF23i47guQgzuTnqhdlr1G8yhc7QftCglDwBmjDCoTywqpT8jBN3qfe0sZ6nMnEIeiY3xJv6M5RC0VPbN9OeWeeUR4A3NPC6GKN4qLlMRsMrAdPWLEXE7E5gb04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UacpvvKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UacpvvKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746260993;
	bh=N6R0CjBRgIY5JPInxMuo36IHueKchlGHX+GC/YfxJwE=;
	h=To:Subject:From:Date:From;
	b=UacpvvKFxevW6Fc5buP7SiMeiKSSDqk9fLrspD78MhIR4m3IQcY7/bkWCrRB91jg9
	 cRE+bkT5U68vNGqf1o0mKc7QRhv0Muc1TkTSIsilIZ7j+RvP+KwSBoceofaFYuXchf
	 XuI+7bpntZeMcDEs/mPpFipdAjJ40kbgSJ2hXPKf+HiF/uYB8UG4aBrWwzyRy9LDKM
	 lTmTEXYEvTvP5fXc+/Niu2lnu53iti/Yqg0zOkO3vs+mJHMj4CD+A9b0lbdhuhNSVf
	 by+4tW5bl6E8KdstZEXZR84gVtTadlpF3CaUXD4GlJ3eMWYYGoIxM3ZUOq4SGvC014
	 VljVtj+16hkSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92028C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626099357.16777.12369062238541149036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397ff0774be492ba682a7533efc1a9eefb94cd48460983aaa595b1a4040abb1c
Date: Sat, 03 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746260993
