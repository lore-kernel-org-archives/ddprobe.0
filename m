Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F363594B
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749010794; cv=none; b=DVDSOLcXkvVcwGhdNrqoFx8TmwRiDZCNHLtTLAE7MpC1kAM+0D6TuGumV3qouBDdgm0R9Ge/ct8hg2YdsS2tmTfwCckV74biKsTqIaxtd7j2y6m2bbXm+lhw20tnD7/js5GAOpcra07TeQGcc4rVL4BrNMM57eIViQsRf+qjOsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749010794; c=relaxed/simple;
	bh=zIrX/4elGh/zx+3pSw3p6BKA+CL6he5jAAlt+I3XZG4=;
	h=To:Subject:From:Message-Id:Date; b=pZ7dPJxBVkYNQVdNGpV8N3volQ6lKzZhIxfFNk1UwZoTs8HnjLFLnVq/uuA72edcdxFpnb7v0fWI84gsImHbKxdWF/UvNREJHhAKRrjsCSlXe+JbpLdlGilZHPJZoJXO/h00tKjD3xtzEzMJ4WJ44qv/jYunIClhuGCgoae1KAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVqolP3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVqolP3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E1DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749010793;
	bh=zIrX/4elGh/zx+3pSw3p6BKA+CL6he5jAAlt+I3XZG4=;
	h=To:Subject:From:Date:From;
	b=nVqolP3MZ5Enddgc2TaOfVn1EoRLsmBPs5be6Ndio+KHRmwLzmH5mECPNCni+ymjG
	 yBKIM1wG+pdBBJMLxzBT/7wx5pcs+kxLr3663Kc9j1l9LZWaxvpFbmwoOzhe+mvINu
	 8JJdNZ0QEmszYRGrVVotXGEdChmj+yvqBpJhUH+b9lecXnobkltzRQbARjMWF1PT0m
	 OKXlSSQED8kTfYGVCbtiQBT60W1SS2rz3F+uQtqdrBMPN4Prrmiwqgtny9vdtolhjv
	 is3MB2dPir+aMRzw5206OVnVEO0ZyZVZpsRjNMq5pnNpwFIkvGQehLysFtf3OYlWif
	 jjgOSajvcCYwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98373C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901079361.25635.16111023016326167303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbbb2b1eea2598129726407bf21d9c2ba164517533c865b7e0200363994dcf2
Date: Wed, 04 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749010793
