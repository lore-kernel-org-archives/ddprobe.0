Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7667E13CA95
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718273303; cv=none; b=s+KP2225IUmU39rglOIjER2YM5ZBfUYFZlzjU9OEtSY1AxZ60H2I7QtAGMYa7Z6jiK8WrkikRUSbXuA4LGYsquUyfcgnYNQAVd89Tt41xGsW9IogViY4IdG3caip3Rlh9TRJt5eStlDuvsy6KktbU0UbmDRMQexgwynoFb2gNp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718273303; c=relaxed/simple;
	bh=bj+dExwiAClNzE+InzrVxZkIJWVr5SV68ew9oevb+EA=;
	h=To:Subject:From:Message-Id:Date; b=qnu/v0DsIx5XHzlJY3Gr2Qzop9t+DzU9uqpwgKqwOd06EfCOW4olXbK1MxYkSEAm6Bt/JD1nSnp1uC+zr6BKk5lQwjMDnP2TWQe02IL4E4rw0fE0Eu/NkQtfeenNs+oazBKoyGz2q93gWuUt9BA8y/BgFDVUke3hUlJdyEd+MCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sL1zRDK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sL1zRDK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5293C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718273302;
	bh=bj+dExwiAClNzE+InzrVxZkIJWVr5SV68ew9oevb+EA=;
	h=To:Subject:From:Date:From;
	b=sL1zRDK24AtFCrLDQ3zlT3MU1Zf0KbI1CMIMHZcuQcfXyhW7n9T/paUr17UHWE6I6
	 38A/Tb/4DQo1czKs74rQMWXLx508xfcUOBbc+ufndm575vUbYWjUCeViZZTwEfdECI
	 +/+grXjo6LWPN8K8LDjLzR016YvO8RNn91JW+0VAHwCUV/bDHaA78H8FBgr5093ibQ
	 tnUHaBGy/tUxVVLSBMfs14Ow3EFLBIL/cuWuwzRQhRUNClhpKZnBx9yat+TJPeEePU
	 BAdRIbnvr5rf2wC3rx0cL+y4ZfOAUweJORT4/S4i2cO7CcHUu50M3cDyEl2hvG8sIl
	 0O5xB7ciVVoQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C134CC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827330278.15774.6772634413778727170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866a7564b7654171f28131a7be6baf4c277de78906e03740160a2012efa98073
Date: Thu, 13 Jun 2024 10:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718273302
