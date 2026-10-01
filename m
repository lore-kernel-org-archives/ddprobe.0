Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505703911DC
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790824234; cv=none; b=FlC55NsJbsVCImzStxNJBfv9TKiapT2GyNS1D4t1N4YEvb30EI/lYkI1QbslQq3W7ZLEkIx2wj/BVO+CmGZTQnq0BCLh6Gjs4kpcJVembYRxVJDf1bMC6naS6cjXb9b2C9SW6F7ReTPhJho5qdF+iAoS0QkvQGIzey1lWudWFCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790824234; c=relaxed/simple;
	bh=+m2cbU/4ZFnSP4/QluHqkv9+ZJGNnkShucrUybxhmro=;
	h=To:Subject:From:Message-Id:Date; b=Xy86joqC1VqpEG5t8l+XYYBsWx/EfNm5uu9e8gEfQ2dkxrRaX3DCJel9h1kToG9DPjXxhY2czg5oFqvSkOWaKgMGd0GmhoXPWHGtzdR+iqt5V0iFOpAZhIGtevdjvPOE2oIAtQZ4PosA7hc63/tddtG/6NZNWPo8p9kNVgOStKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOoh9OQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOoh9OQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2271C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790824233;
	bh=+m2cbU/4ZFnSP4/QluHqkv9+ZJGNnkShucrUybxhmro=;
	h=To:Subject:From:Date:From;
	b=kOoh9OQYKPYbk1v2NPxpwTOtN/fOEHncmuX75Qr6l9vO7KL1L15aE3BGwInR38UUU
	 d/gwgC4y73reUdOfNAVn8ufGgw/1rwQAb6Mcyub1cpeVqZ+xWaAO1wdNwMUkaPWmDF
	 xJktu3NiX6UWn05vjdgFexXT6OKhqeBpikprC8ogy+Z5BiZWKKEE3zlAGucNmn2b7i
	 XggQ9rJdyU0Eb2dO8jhV3ktMQ1hc6MHvBboWGhFbUQBAU3QkDv/4JpFyjb57y+TSK+
	 JbXglAL+p4oq5n9XnzNgTgfT3uMHH5XvqPBJ333VBF8EckQnIUbHEL1FwP2biK2VUr
	 U2TCPs9qhVdPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB41BCA5FC1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082423369.20552.1748561456729675656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d32ce7cb28a3b66d094e2306a8a65db293d8ee8ce5c7bf769e47ad83c362f39
Date: Thu, 01 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790824233
