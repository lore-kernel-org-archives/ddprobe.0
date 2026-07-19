Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BDB1A9B58
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784435314; cv=none; b=YYGbqZE9x8HI+3CvhXy9TIxEYJa3BHlZKihTvN7/s/mSanupCqkmdhakc7aupsMo7KUwJeqCgWI1JyjNZsvr+fjcQ7zghoVYt139dJSqw4zoDTU7bMQfUZCo5vBR7Np/EbrtMp2JV7pjlUuiCEjrcmHwnffE8Rq48xsBkVVi+UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784435314; c=relaxed/simple;
	bh=cuNOcWNFCX8Ss5phYibkWD9HOzMnDdUlGEzjSZ2gvIE=;
	h=To:Subject:From:Message-Id:Date; b=iZOJ8iYaBoatKR9iErL3GZYQg2rPmlzprIYHmVlZVixvERfG/htRz2iKSRSXtkAamKfT4vw34fvNY8pSMIoHRJfhPtQNPfSYmedhTnHIm17jA/XsUZfiuef8rntDJUerXkNtaNrtPxCplU4Ye6CvlWERvpkR1ToFpFzorenT9go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4jSysFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4jSysFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB56C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784435313;
	bh=cuNOcWNFCX8Ss5phYibkWD9HOzMnDdUlGEzjSZ2gvIE=;
	h=To:Subject:From:Date:From;
	b=m4jSysFrOnfGjgWtD4B1gkTKt1mxA04LcFqG5MzzVnPf/15MNGNqmJDbkJJ1D6G8A
	 ZPbajirxuF/qE9htlDYq17bx5a9s2r0Ub12al9IkKPzyk3tMGsLamaOuNXI37OYwxC
	 hrCHv5kR1iDLD1c2wqwJtl15YRXDl7HeUJoYi76AeQdxUZ1qO+FcwzJay1N1EovtdJ
	 QQwwTbwCEJXu1W7d/BNiDfQ9rQJrMQEMMUMhG7el34JC6Vgx15b+tr3NY/DKBGV6qo
	 B3ZSk37Svhg3DWvmPZdeaRS2WPVeYIcRCngVTXzV3vMODOyAv3mAl2f4dWZXvs4wbB
	 8ePq4Xn8FQm8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B491EC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443531370.3089.7879705133327301592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ba86f74a155494b98fc8a5fe35b9f02cae743866eb37ae523bdc1e500b22ad
Date: Sun, 19 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784435313
