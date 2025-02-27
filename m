Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332CD1B0103
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740674934; cv=none; b=uT8hHp4znJqsCYD2C0gd1Dm8duS7bgyL6vOZykHRzwjAu1HahcFAz2wY0wlSg6Dxeba2LROrVWCWLG6djEgYTHNra4vvfbjVCMTaHkvWW/pd5NXTEpGdtyTt3LZnHZk3fYqXAucX66oSwP6CZvlxXlxeZAG9zwvgSp43lCPLpls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740674934; c=relaxed/simple;
	bh=VgZ4vqlsblh0iChZzOn3727Bsg/mvzhkLqw6Nw/3fII=;
	h=To:Subject:From:Message-Id:Date; b=XpZiKzoWtPibxwaJZqAJMahitBygs6NSNWU2W80fytKkiQi61ePub5YSZ75BT/0LkguFBveu0rSYUbv/K7Gjna98zf2d2okpRxHt+NbZf9rwZrzpEDiis/lWn952xg4GRKc3rniBc90LIn7pDn5CFQku3kvDF7oufArdih0vEsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpOyicPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpOyicPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740674933;
	bh=VgZ4vqlsblh0iChZzOn3727Bsg/mvzhkLqw6Nw/3fII=;
	h=To:Subject:From:Date:From;
	b=XpOyicPEpbZ3xhZyCPxBzSBriS0a7XGAMDvkklO1/OP7KpaT78SejB+0wrJ+QTifH
	 //TSMcv4uund/3DnRP+9/XLdULaqN7vOVRyCs04GsEPzbrwcrn5krFfiROZLY7mfZ6
	 53V7gb8YpfSddESG0UuwQT6702a8ZESctLwz/mPT5NvrObdW8xVqba5T8a2rceXIqo
	 hQ6e2zxfTSnlloP6OGRBVzeeh3qNVPkOB65odLzx5LuOSF9kdJdCuW+t1vTl2viZte
	 A69eb8d5q50AZuuAMZBaJfTsIhwjGurw/8RfVTVMhmyJQlfA3e3//N9HHV868pre0a
	 pxPmZ8a8g6AGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93834C19F32
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174067493359.13233.3955749769079911347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169b1c5720af60f0579bdde2a321304b085b8ba5de40793d804e6d5ef78a85d9
Date: Thu, 27 Feb 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740674933
