Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72692137C52
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760251795; cv=none; b=rOiQ/ZRQ885nAay6CA9C0332x8xn7I3ZUvYVCGr5vmi6/kFP1V2u3ZjCS4quDFvERmhfmeHqup+xkKFJISG8X3P/7tYvO2ltAG9t6Fn/qsRQZg0esqQnfWhL6dx46hJ9pe5Vbxl9G2z7OjS3e0Hm5iOrbP65WCVn6ed/qA7Mwa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760251795; c=relaxed/simple;
	bh=NLYD2mUYg5lWr5qRi6taxkA0zzxFhjrG1uyVjd64iuw=;
	h=To:Subject:From:Message-Id:Date; b=p7ZpIJdERY0OSTzY20eimzRAUHZ7LnzsCyIxPZtVosruCI+45KRffkf+y/gTuVeTnxcT2uIo5PLrlgnpGBxoB1vuzgTJvhUOSu49zZd3qshb3pmBHjOVGlnCQ4XE1UP1/MT5D9cTM2D/mIhYDV0BuSSIlryIy8Bvzg2iq2R8L/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhREkJKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhREkJKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B76C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760251794;
	bh=NLYD2mUYg5lWr5qRi6taxkA0zzxFhjrG1uyVjd64iuw=;
	h=To:Subject:From:Date:From;
	b=BhREkJKuKtM+L6fp5AwG91WNOAEQxullPrM1nX5b+CQ3O/7xDO9NARxwinCRF/Hka
	 N+oo6adZ0soc/Q2xNq6GaFWFSgFrHxUMXkIVckGRxNISEC7WSJ5nLzw6aIs5b1FVMs
	 fsTLv+qsR/wXhUarwHvk8eKiEmt3mvze8co/ejw0IeE3zH4jxUlJHifjRkxpzD6dIK
	 RSGBFYoNacLkvW7iyRMw9GdZFRsfqOf6/jdxuTwzR6dfPuUoWeXKvEEJLPuQ7QGZW4
	 fQT8Z7CN//EkiaPfG1IrHUNAUy0AsR9vD0iRp5BpngBFi0TJM5tuyfPqcoi0nsj4ux
	 YQCm7Bxth6vRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7FCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025179358.12003.18061174131943415060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4ab7db65ce6ead6c8cf826c493592314b33a79589bd57b6fa489e1e6fc76b1
Date: Sun, 12 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760251793
