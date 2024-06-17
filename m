Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A75153AD
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718618303; cv=none; b=Kaxbxm9QhxnB5LWk65Q65GH5Qn8jWbWKdYKyVtBg19skvjW6s42jvcDvraeNgPOf/TXsusYrHVvefSLCnsmp5KigTGCEuJJ62FhD0c3i3L2iJBlyk1aW1sOkfSP63vSKpYRr7xo5UeCsjdMgxPVyLpv9omdFSyutX9Qke3993V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718618303; c=relaxed/simple;
	bh=DrE0O90xTJ/X5e1dQIlP3WCIJ+XMi1FqIcN0MxX/bHI=;
	h=To:Subject:From:Message-Id:Date; b=nyoLlgtJKTcbc+g4aWcE79ldVR5TqjHONUL6IUECrSuvvzs9tjbWwO07A/XOJIOPKr0FXM6lepAfMDj/6f887HFY6IJoOE65Py3c6oGa9D8eU/pWhVeZ7gjDAErZV5ihRDRvHoV5PjikYC2qanJwo+fu9iN+5/Hr/eGHGVSHuY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2YfpsXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2YfpsXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7882C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718618302;
	bh=DrE0O90xTJ/X5e1dQIlP3WCIJ+XMi1FqIcN0MxX/bHI=;
	h=To:Subject:From:Date:From;
	b=c2YfpsXjC27XIqRn3db8By5Vg5RV9GiFfB625j1OfU+pZErrxupC8GGVgWW8OdV0q
	 m3T9vVK4XozxIO2+e6i1Z3tFbMJMNQof+7r0EE6ZD0/hmsrRJRfmYlMcg8FnICX5Qq
	 iO5kxJMpY8o59n7w2HGQRwcbkLkxBK0N3NNO+886hqp0k906Q9coZIOLgZ4SAzBXrU
	 eNji7Dcdz2CipEGzYriG7IhrH4EyAMizmZs16ho3jKwfkSi563h0UkzB0fDGPnXoPA
	 GJwJZK8PXGkpXTREV3/tAA1WqzunAje3lBOF37eApJJlp7713z0JBH2et0Kz6For7h
	 j6pE40BVlsnKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0865C2BA18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861830277.8921.9668248160081877813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7354dd9f4696fccdb4511fe21a702224d774e5d146a00f76e548db94f71883
Date: Mon, 17 Jun 2024 09:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718618302
