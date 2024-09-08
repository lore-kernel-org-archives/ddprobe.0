Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B17A176251
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725822354; cv=none; b=hlxhF5X4gIr40TCRXx86ti2hGunaliZUk2AUQoNcAIzqDQigEt7lycvPOEGoB0PVSGJIEPWY2Of41KVO0V1H+NnmGW1wCxsMRiLE1DcCqS3pekqBxZeA6lnZJ2YM8zqjYtaePloAsD5/8+TbibvbCKHAg8h75ai/MyzPmXSly88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725822354; c=relaxed/simple;
	bh=qQC35qThvgTBck2ahOPa542yHIPYDWefOBmuDJoYlgs=;
	h=To:Subject:From:Message-Id:Date; b=KilQfTKsHqQjkbEFaT8yDVq4QQr/vm2QHiBcbXNsqViZtzzO+6QA8ntZXKeUsrfuuNCMM/kspnhu5KHLh1YDpVkbHybtCTlT2cmk1BCt3+/UaBxK8gNp7yjiCGmM22vG8V6tCKVqVuNj+0AIJp1XAKFtH/Rm1KizJvZC4mMVLBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noiFuA+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noiFuA+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4A3C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725822353;
	bh=qQC35qThvgTBck2ahOPa542yHIPYDWefOBmuDJoYlgs=;
	h=To:Subject:From:Date:From;
	b=noiFuA+SG/l52sOH/C2WptHEhQcEGhUcsYcDyNr/Eio6zC5CJoASZN7Dzy3RL5Fo6
	 DlPF1tJKpjKwvpJz3T7cVKN+hwR0GIxzmLHJPHhMIL6s0muH95u81JvXD+h9DEvMDc
	 biWlK7bb+zzJYfHbrsdAlBfifaT5vpuLXzmwghCdwU75vgIste2HgaALJKpJbWxvF+
	 tlgvG6tkvyiPwLs6bAERVYkFBL69UWOXIeN65WyKS3BUgdQJJwhe0UkgzaADTd4MpO
	 F7S5z316WsqmxK1Oie98QVi7I/xmBSwNGLWWGyfAJCxXTYtgaGk24WvIyXZKtZAVe0
	 99SpyEfeT2lLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B8FE6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172582235359.9589.10474029440475549416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7418506ae63014b8e6c91f261e5ceef91da6cb857edfb02871a5f560db3a4559
Date: Sun, 08 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725822353
