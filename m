Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147BF39768F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777495054; cv=none; b=OaHTPMTDF4zXbzQLUi6T5adVoHPuwb9D/cBn8HJyV7AwLx78qA4d1pUQ/SVezzH90VESEFHLub4H+xXXMwFefphVJETHCvaLYVOWsQZtZKVt7/Vwtz1LfbMo+L/I9REkbMRd5s+dtYoCXDEgZrXaXvk9hM2prujdGR8D1v6xc9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777495054; c=relaxed/simple;
	bh=/xac/mdB3+LtpaUlEYXyssgNJO3WuysvQDy+iFzmsdY=;
	h=To:Subject:From:Message-Id:Date; b=WWKHuuIHG8MDFfwyvlJNT10J9SSIxWPC5taMvhq1VdZQwJifS1Ub2oBlxHYDGmU/94MHClUA360SW5bg1UBRXpTaHfISLb3Qu/cBoL5b3EnlcFcEdlt7GkfJ1hAiotKGXU+sIzQ3OaJRPkIKBBZuT4WOi5bC7E2cPP1ER5pKulw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVdD+Fbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVdD+Fbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FD2C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777495053;
	bh=/xac/mdB3+LtpaUlEYXyssgNJO3WuysvQDy+iFzmsdY=;
	h=To:Subject:From:Date:From;
	b=sVdD+Fbf2jdkxZqYbPECBGxFi0MSMfsoGrKVf+eLqDChL0c6CzZ5SIBb3yqoJPbFL
	 uu4+hWL+/XM+jtEukTt3IvpItIwX1o3iwoEY4gxjlKK+LPlHRRh36H5Ux7jJcqrCS9
	 wBIa/vEhH2/0uJ8Lk8MbYjLowBQQiOf6LelEusXCdoBR+DIOfOo4uS11SgmD6K6kj9
	 X3/gfJo2rgOWg2S/NYl/JzZcmgVpV5D7UbL5tE/uwMW9Q1uod9p6MZDBTRhj7tadR1
	 32ShoeDnzpN4Ifg4A7zONZT3JmIN061FX76+cmNKFAFWTiLt/xwj+XcnSdqyiC9K1z
	 FBTv6UK1f/Uaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC9FF8873
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749505368.903.8674969492304238676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1518af5899cf9f6dc045b440460832e567486957180a547f724f3efd831432f2
Date: Wed, 29 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777495053
