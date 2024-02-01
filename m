Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE26F3A8DB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706758097; cv=none; b=eNyDDg0hQSDA99/BnQ8l6NjxHzzE8k2hdPN3fR6kSAGach0B+ZkZ229cObYR+bvBLLUZfUR33GnUW4vq3G3eZJTuBtk9507hovLGhifOUssSI872qS5j6SOzNSthnzJXpYbjd4AFKtsy82TcdctcdE423DOJsvQ072xWsIOzPGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706758097; c=relaxed/simple;
	bh=sRUUtNuHfCd8wCFYTc7zO5ij+4Xs2SY1UkK5yPGa6UM=;
	h=To:Subject:From:Message-Id:Date; b=EKu4vi5j3F5XhZIudEsHij54B+w84IZhhbpv1CubVH4nE5gofKQC/c+l46MT/ms+YjJNXv7kBkyIJaQyTTKRjMEE8GSTcvA5NpYWpVjEKzy+sJkE+dMd0QRPebYIPqaCWzyJsxbG9Hh3phFviAFivSTrGd++mgX4eDEQLrYsQR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmWZUFG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmWZUFG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756B1C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706758096;
	bh=sRUUtNuHfCd8wCFYTc7zO5ij+4Xs2SY1UkK5yPGa6UM=;
	h=To:Subject:From:Date:From;
	b=DmWZUFG4l6Ct6cfhYiaLH4S1PCBznitYeOclWUU4vdAuLOueoaXFdael94GxXtv9C
	 k4vN9R7jVuJ1+qZBndbmnYXm685+nZwwB3LzOyUoDNK+lukA6nK6RRKgqaQSFmKRtq
	 /UsVRlX0QzE0mMn+uwzlUx1zm7muAyE7GP9U2lF85DjKb9Hhph9gE+tC/CbV1zf0sF
	 4ZCnx6HIABVJJyfcqfx91/bim+bo1tYyQFPPpemotCx7gNVVBMhR/0XjqTvNT2YEdi
	 zkNAZmhUDsnHiS2osWIeT4LrPzdT7DN4JlKndxvwGkO8XwnmDt2hhV12A9O5+7qBOd
	 nI8zDoJAFQSsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7DDC47258
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170675809636.27659.12847059908049984816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542884f6f47cbd957bcec7109aaa8ab3181b5af45fc363edb8bf2ebff49a05dd
Date: Thu, 01 Feb 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706758096
