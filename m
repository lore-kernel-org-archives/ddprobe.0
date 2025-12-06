Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ACD2046BA
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765015374; cv=none; b=EZU9FJVVk/y7CPOO/N9gq+uaOit3lYkYbRt/DS9+lxL3o+5t0QjGqy4fLtxbnzbv8qo+Yd0GAtFPlKd4C/qY38YSm5z2t2uapH9tGAkk61iju8K70zj7O2Y77lwOzWzoPwds4zqYKtBPuXwemi3EhyTO2B9075IkM9tAXVAXRQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765015374; c=relaxed/simple;
	bh=pSWfwDJzB3ZtwGqex7tBD2V6/+0u968Kac2Qxv/FoAI=;
	h=To:Subject:From:Message-Id:Date; b=Xu6HRZqnGqyXpUQvuL7CCkl/Tz00KeC7kcnJLgK9JBRm7aojYUr19Ug/SdpcbOwfSnpQ6Bt1Et8S287IQPGELYkHtKb3yCBpNn7AuCJQJIM5E4PIeuQ83I1S38w/5Y8AHkec/ESPACHyNP5c7/ul6YZkwd12SH6oGtPbvNFfR9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dviMYhuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dviMYhuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8102C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765015373;
	bh=pSWfwDJzB3ZtwGqex7tBD2V6/+0u968Kac2Qxv/FoAI=;
	h=To:Subject:From:Date:From;
	b=dviMYhuQPUmHeUodPOESJM/MwMPE5nfEzfKX2uOccPmRvifhSueVOirZTZ4wA7Vev
	 k4HoZ4XqLINOnWG1c51aUqX5jxSTUyjVHhlCIl+zvhks2FNfjGLuh4DR1vRNtpoT4p
	 oxcZtDERpxlOarqpss5r9gfMwHOjfksuWuPSvdx/bss06MITpQ3sEcFfYqueLji48z
	 dVh79ATsRs0akLNU6fgLc+ydMN6i6FOELAr5I6G5aRPenQLhAOrzqChDgFUo2iLZGo
	 Wud1fPsbTLqbY0xeb0ef+K4Y6FNzCu7VeI413B0Buocf19Luyirb/wbLcqJvy64l+T
	 IOSB0U0rQLaSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93409D3ABF4
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501537358.13563.15471235117035900396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656984e092d5247cea76c476d457ee6586dd87a33f7e2de1bbf2a16c83cdda66
Date: Sat, 06 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765015373
