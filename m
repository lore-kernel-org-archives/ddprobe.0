Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC2426FA7D
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744979394; cv=none; b=gmnlT1lWrs3wsX8f/ymTeXLRp7ROF5GaNfuK7IUFzu2auc5s0d82vTEKulsiSWBFcBAfy0hSnWmMXAT83GZwCqEUrJ0XlTfX/pPqsV/C6lxvxUKGYFTS6Gs9htUhSVBJIdVW5/kh5P+POjgg5Nd4mRoIqLKnke/Kiqx/b7tNLQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744979394; c=relaxed/simple;
	bh=uDSzAGU2zRjkdPAEG62WMBYkgHH8V6FY3XhaonxGLtA=;
	h=To:Subject:From:Message-Id:Date; b=Zh9Lj8xKANKgL7+3QWzwCtsMej/uJFXRzaZ2k2vUUlJhwaVtFU1mb5XXLqNkRm06g71GhN0e4QnCHhBptDoEe1Qte77zFiGUpG2+wacnTYNiZpPhvuaZnmYOYKT4reP0tcArz2lXKwE5lmVduUv3RPcrIPGpa91Gs5RVCqm97LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOWQqXk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOWQqXk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA325C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744979393;
	bh=uDSzAGU2zRjkdPAEG62WMBYkgHH8V6FY3XhaonxGLtA=;
	h=To:Subject:From:Date:From;
	b=MOWQqXk2olKclxUyvDw62vfmedz5P8WtcV7abWSWZsu+uYqiCnfKGdTrBUSibL5IT
	 1d8eyNOGVppzlQJvsm1TjoWUbYd8comYWO68x527U7UruoEPN75kUDsotC2e8OZreA
	 eghfZ3xLb0fGpVKjNJRi25zDoH7NidhBudqi4yJ6s6hV9DvYJ0JsIjD6xqoM3ngMzQ
	 6Y54OrcIBjCn5F/JNJOVE5vs0fzpFlWnuoO0W3UmizLEFEZdb14i2Z2xOdDzhqhf/E
	 KqznwwpPZDMgXBeV0d17w1SgwxEahMViTvVxMlO7Yc7cmG5cczkldzlYgjla38B0zV
	 BOuW0QxbnE7eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D0C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497939358.10568.12762954210156523503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40c4ab4cd54ba0b1d3f7203b7d83cba58c726b523d5842247a652bed2b564c0
Date: Fri, 18 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744979393
