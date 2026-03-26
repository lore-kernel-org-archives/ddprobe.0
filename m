Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C652BDC27
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774562694; cv=none; b=Exd3lHBQ89gWFy5HDihvU9WaW7YcVhbMvpr1YOEaQyyjJOHk/yHD6ZZDxXnO5wzdn6OvJ98i08Sjusw+rpgYnqWNzis08o5/D3rMsqzXAfA7U49pKGBQS7R8NNXwXdIgq8a3anlaaoGi6uNsbEiFW/CNNolHY86zStEA+YPSHHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774562694; c=relaxed/simple;
	bh=B5S7i/DTHXPKJSDa1nmAZ1VKoHpv+IKjZ2fdGxvcu5g=;
	h=To:Subject:From:Message-Id:Date; b=LZSs76IAjmOQd4oaQE++OwKNsY+1yIlle0XtwuWupCh/S0FCW+B0y7nx32K6z562LkwmfQW+5iyrL5sYHgQvjwtCDRX6MBik2HGTws7etDkpvOt1z/QXeVOxFeOeRKicM5T9I3NJttXUuqAB2Z67S/RwUPN12nUcUy8vG+kCZls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCb78erO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCb78erO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A36C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774562693;
	bh=B5S7i/DTHXPKJSDa1nmAZ1VKoHpv+IKjZ2fdGxvcu5g=;
	h=To:Subject:From:Date:From;
	b=tCb78erOSwMx/ZbN4B+L4quaA1T9G5KxqBXomD0jsQmm4c/bDjn0jrddblqjuP2FN
	 4IgTV1vofuW0dsovfy+70syqhy1V7OW5ouz50m/ZsYIdOjkm6MUw/tlWQ7lGPnTYwg
	 VddWzSek2ApfAU/CiZ4HbWymShDCfPEj4rlC5Y9rS4ikTinXvu/mPxDpZddTMoyLvM
	 W4EbCY62mCqNJL+DX7xoTkkxhpS5AipQr+dBPaHHSRaKdnql+g4rerw5l/n/8slCu1
	 lc29+IpPASACqwcahEOqmeGVWj3ti2w0lLDH9r62qUg5qZW1wBk0ox+tGF7Pu/AU9w
	 9I3xOLvs5pWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB410AB827
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456269359.9474.15646145836841341274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fec1c09949037e671a7c5348fd78e1dc0666979d0d29beadf1bd4130d82d522
Date: Thu, 26 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774562693
