Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E52E23A9AE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765131174; cv=none; b=ono0heIn4RfWajdGzMOIgm9wRTWpr/ajqbKxzbVMoLvA3Y7edmtKBSt6odshbMwhjvjTJ+lbJlaS6UfGJ/8MqC6O/fOTIKelcnCWYwrs+oezrDaOVVWftWsDZp7ZPGSo8MO415mtCnuHw16hwtoUG3SaLr1u6btSa/lpU7OHgso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765131174; c=relaxed/simple;
	bh=UBR360DUC6OPLWsoMfQbdAL1ezYRFy1qa3R+OkvrJ8w=;
	h=To:Subject:From:Message-Id:Date; b=bWseZhTsXNO02ykptM+lxS7INKkD4kHcpBhjI7UcSsC0uEa8OOYIQbUwkqdnSiSFAzrrBW/eMiaoPlLBP7UAjZAI1aIeqkrDuhTs6l4cpMEgca++Bjp5zoYg6E+PNfkTX1j9tXoF2nKchMppzInL1k3c3UCzYbLH9RIS+i2WET4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhb32hb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhb32hb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE96AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765131173;
	bh=UBR360DUC6OPLWsoMfQbdAL1ezYRFy1qa3R+OkvrJ8w=;
	h=To:Subject:From:Date:From;
	b=jhb32hb8/gWZ3qV8l1R9D4xxL8sbOpwAbEVuHimuS0cYqhw/LxfQv81aG34xTyPBO
	 jO2ildAsmuNYvzAn+AFHII18LxM6elC+e9+OfKv4KD0GXGF8b5YbLwKIp7kiuFjS4O
	 bNmM2OVyetZCQW49cHG3XmEQq6MT2UYT7tWTy7i8iuUZZO33c9mBHgDy+B/cHB5dCT
	 w4GU4INhl+Tig/jdnwpOzXekXnNHfuoKViTvCmP9s9tCl0VhF/nnnvZCWzOvCklsD3
	 W9APDApYITtb2IOKhCo6BjCUhrvo+D+4cLLU+7QpjmMUXseHMCef55Rt29/rmQHpJk
	 1XawZ5NbZ4Rgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A840D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513117359.5236.17036950698514021963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba5ab2042535141072e6c7822496d0d44e8e1851343a090050dcf3d26c9b1b0
Date: Sun, 07 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765131173
