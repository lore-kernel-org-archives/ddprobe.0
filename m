Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D9B1386AD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706218698; cv=none; b=MijVmeTU7jsrJgHzlxapndjHWzQLiYX+0AptALOVXBWNGV9WhZUWt63NhKJfNy1zEi4mBj05sfS9MYZFZeM/8JIBpR/x/jardVu92IP+pkOU5jRbgBw6ooyzaSyGO6z6Qbx6T+3rMw+jbsry11rsMbKg6W3RPHK8rRytLlQBC8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706218698; c=relaxed/simple;
	bh=uCE9m0+wy0wCjP223k9bHeIn0RnwH9tSLAHwGm8WZNo=;
	h=To:Subject:From:Message-Id:Date; b=nOT9Lnq+46+RoLoD5mVhmhCMoTlDREm+Mydd0U6mKS+hJCxtVhhWP5PQRBDvbvIaG4hqWZNzC/TaHxvn0H5MC9OUfSV5SBICI3gtyceFKMbdgqQvH9AFVRwVjmzVC6FDhHdcAFlPh0jEGs+pxztwiCfS3gqQyhzmh2gTMo0arg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmY8qsz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmY8qsz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FECCC433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706218696;
	bh=uCE9m0+wy0wCjP223k9bHeIn0RnwH9tSLAHwGm8WZNo=;
	h=To:Subject:From:Date:From;
	b=FmY8qsz9H2Ds+TePtEAnfkdBMu2hMGt2INBSxpmkHL+z+/D17qWpKXUAyUVgo4Sh9
	 6UQ9TJ0KipbwY/12S+Q2JmkA03/xpzTbksapJiyGHqrkBoFUDEpCT/PsxUY4xR0y68
	 ixR8IFBV+l/LPnqvw9qE+VZh1+DByG9CCGB2FPFIudEKpBDWzHB7rbKTS2vLqznq0P
	 rSHVe4EEX1D0Ugp4FthF5rRUhwSwEbXjY01MJmOtzGB1Q4tJQgnIQvChR6IZY7ICR0
	 MuNXQOmqjaJCdLiTDUClKK1GRaifusutUSFq6sf50MtGtzNQi2DnpPBM97rvX0ZxzM
	 UJ90dW3aeM+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6123DC47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170621869639.3668.15196798135117256988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f337c74313ba589097094ec1a9494a46c68d1599e27c5107fed92d0313b55386
Date: Thu, 25 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706218696
