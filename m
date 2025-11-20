Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C67F2FF65A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763619114; cv=none; b=AU1aTaS5Jsa8vq6nDe2Df/VuQAd/48Opic2RYa9cE3FtagzDdhQDZ7ZXANVbyH/YY7qzxBnYRWVdTxJNYWgUTgtNMVnTW+UhT5sRAJP7pqhQhHuKtEJo06cxCg6k6gVhLruGZlMnDC4wwlTN8pRtW6Yo+8gLQ9BkvqQXoq9btC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763619114; c=relaxed/simple;
	bh=Dh/b7b8BkxVTUhj9ZfB+deEmEzLvQK78sQCH8V+55Ig=;
	h=To:Subject:From:Message-Id:Date; b=OP+uc66XJWMq+Dv7diDv8lg+ba1LiXQQ7luuYAA60ImVGw8/L5RANlyJe+wq4SNWH7a48OpGOoB7csjhb4PuZHqIBlCP+DRuTY28f/x4kte/z4y5PagmJcziH3VVfKeDTkjfMfgrTT4CUBdORKNgmDKKe6Pl2FyO1kObyG94tA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8GIYM9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8GIYM9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CFEC19422
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763619113;
	bh=Dh/b7b8BkxVTUhj9ZfB+deEmEzLvQK78sQCH8V+55Ig=;
	h=To:Subject:From:Date:From;
	b=Z8GIYM9IzRJsPVpguhnozV19ZumECktkq9xi8scejEnVdKav8zDvozWVb+l4+mtZa
	 DqMyFUQRPzoauXzO4X+UraWHfz3caow/F4VBg36J8J/HvO2BzQ+34UsobNPoQ079oF
	 G7zV7couzpfgHaj2efN3hFqZp1d+ZdatUZDQaHSIjUVotrUe1Xwh5FjMGrhXhgEera
	 ypPI82u/77ZVeJ/YvyHtwSQJrDr/rM55fHBZiGigB46QLR0dcyikqsEpxW4f0vR7xG
	 zqZcgpFehUXU20ja86D8/GX945liHk6AyovieQceUj/jaNWuyLyCg3wwbawzYS7Pk4
	 0tizvIVMMLdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914EDCF64BB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361911358.10703.17626983039734678287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e68097bd9c6e0c82910201074f53142c944b463c67e6895915bab9e47f05439
Date: Thu, 20 Nov 2025 06:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763619113
