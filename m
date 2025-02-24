Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D68E1A4F09
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740368334; cv=none; b=a+LxFlmFCowHvB70eSW2YBkdM8YoUleAihz25uprVnhKKfY8C3wVCawD8k7IDG4etD80O40cBXGZnjcvcLGBV/EBdAWygyqbospO70rhSzaxxdNswO+Aw0JtzyvRNylEAfFRvvgNiOK7NMYHW7luy3BaPdehaT40d0yEMYZ6tuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740368334; c=relaxed/simple;
	bh=asBENqqwbuxL/YMUAmU6LeZMoolJVn7BMHs1cjnV9AY=;
	h=To:Subject:From:Message-Id:Date; b=do+c3scwfQFqH8TL3gqVYYwdroYLeW9XGc/2zZVFKHyTqSBdPnV1FXCI+RCx1zhTSNSo1lXK2s5c4f/xB2liOjKKYifj3gE3KIw25dIoyFEBCpHz5XYvA+H3bm0m7zWtiv7ucc4Xj+dtIEuzu4UoWcDryOTkfoXYdouX/H1Kapo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwNlK5yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwNlK5yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D03C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740368333;
	bh=asBENqqwbuxL/YMUAmU6LeZMoolJVn7BMHs1cjnV9AY=;
	h=To:Subject:From:Date:From;
	b=FwNlK5yilVNdvwHv5trW5HamTsg5p+FJacGhOjobqc23c5w+Olg1jGxB2IYkk7laB
	 +S7oXDUpDP843mbfiQRyN1jxsvEAF21KkSwQidgOnuhOSibCK1vsjHkef1PxNMJHu3
	 IWdMOU8N+YD8+CAerptk15WeBvT0K/ecPDQkA4Sq1AfMDweZdFyoguBXvClzP8tzy7
	 qjwEEUyHlUHxGGqnCkdwoYcjA3bqhFI9HIt4JH0XQBT/s6vKnVgHkkK5saDNo0AkI5
	 ZRrc3rwzwuGux196nUxlav6cjYeBChVUyAt/KyN+4Cde9bCLGcUxo6gAGhULS28VKQ
	 HWwQo31vODHIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF8C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174036833359.6048.17959874013617527148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9505a737167fdc4d369d9bda38e84767bd5594bdc6ecbd961537aa571fa89128
Date: Mon, 24 Feb 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740368333
