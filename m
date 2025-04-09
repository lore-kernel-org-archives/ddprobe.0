Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A27C276040
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744223395; cv=none; b=WUEBwvNjLTfxhXjf28SpHUo3kcPhv647/w8uOa226ksP+HztO/i/FgzQyILdqJ+NCAdINjg/013fKZT2nt8AO5c5tLOBhI37tMvP/i+lbP4Gup63+dWrLwlTpxN2+hVKTguYCxxhv1ulKfUi4jYLPbMffZAaacderYUHc8NIaho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744223395; c=relaxed/simple;
	bh=5vEHV76B9PRdiMR2rWEth44W/ar1aQzSf0eEpxq6h84=;
	h=To:Subject:From:Message-Id:Date; b=AEZG/zV9ZeU7BE1kHGRFoosVvvshr7FdcMjza8nba5jYAup5EGJaz+Bfjuev/RS7aSlE+4JZ6CvbPk0pPHwMFL1rOxCBhd+J/QPTK0EktUTjTE1hBBcMUJtsjGim6PL0lfkg1WlchKkHR7IfUt/yfoh6vG91Sx+5Zgpk1Ken17Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSyaF4iK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSyaF4iK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED2DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744223393;
	bh=5vEHV76B9PRdiMR2rWEth44W/ar1aQzSf0eEpxq6h84=;
	h=To:Subject:From:Date:From;
	b=GSyaF4iK2E3A3W0sHz+RpXXCcbGoDUXSlEGZSfXsfvOsWY3VPm9bCcx55arDUoLmI
	 SlPFzvtmjr/+BKoQkC4gDGoQv8Z7EAsIfwxQfcDVYeiRbome0GcgVI69mG5FY403+8
	 E6GE5RZZK+hoqbNDyzf9/C8is9r+x3tvMoRZ/8HFF8EcZ07sykSbVRmDmjnCfBInxl
	 g7G+MNUth6rqHE8k+r2iSZ4biwfn0cKFLEBbWiQW1o9aCkrHqdULuS+aZUfW7TYVSK
	 +/3sBevE7JUvgNC97f/0wxPXjrHbQUfv4EJwJ6eBSMPRxwRACmHh6bmcAkShpgTfRe
	 bDrnXD/npIOZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BDAC369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422339361.17748.3365908462076863486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46635f6ea535f7c574185471535b766e2a56777380a8abf675d58c4b4e4f3c80
Date: Wed, 09 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744223393
