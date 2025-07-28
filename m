Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC97846C
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753713594; cv=none; b=PTfcoHe2gsLc5s77a6aS9Njsk7adHuxaw8EoKKsMSZGuBRfaPGpLmu5MnZl6EIgB+jxsKyv3dTAJg7wQWvPHolwvb8BUzkOPmL6esnzN3mXoqfHXAC/pu5qBVGtgnZjJ4juaqH2tnF3gDFZhTYnZ7mGTN44i19fAePP4AXDD+bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753713594; c=relaxed/simple;
	bh=x0UC8X4qRX1TUT9Q36wNOUbW4fj64PdBznKPR47Wl0M=;
	h=To:Subject:From:Message-Id:Date; b=QPDdDigxy8iTQnR2GTmU/JRhPK9X8f1CKzw19yUR4HPXoVBwtVVRWc0JaZyI0Wu5IyRBhYl5EebFws918kEDhgZ27Rqa//53zyDMa74m7lcFQa9S5rVSGpdwr4bEIieHBeVVG2Tkm6Cb0JCyiGRJcd0cj8Wa7A+PYLayR62RblE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovls6tFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovls6tFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2001C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753713593;
	bh=x0UC8X4qRX1TUT9Q36wNOUbW4fj64PdBznKPR47Wl0M=;
	h=To:Subject:From:Date:From;
	b=ovls6tFuEZ+xSSGuYMDWy/QvWxYIvx2zqj1sovcIc1diFtDXWcfxWTniH3uWsDAAR
	 Ya76Yq8EEz8Q5xwYDfUDX5OBQG2jts/RVXVy4JfCGWKt3o5NmRX5ndBIO4aBKJPBmP
	 NL/H/ON9sMmmrjop+9q5NjGIFahceU/NiUvWQr2/337tDnEpWBE3gFiWhVN8YHXVia
	 zR2grb8dWthHQu10u9dhiu2efPm8iqsdHwhv3bNsiEA0rt/EztvAaprdxAtaQcD1RK
	 gsbC129O7u8JraLKWpFY9GHnDG5kOTMGRvNJbtzJzzdghmWgMaZgHv5wQsczWFVzG8
	 HL8E05c3L2Cqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D18C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371359358.2910.8340395568552097623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b023da189f58a9006ad826d2a86d93653b453a5177f947be0c34486205dcd19
Date: Mon, 28 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753713593
