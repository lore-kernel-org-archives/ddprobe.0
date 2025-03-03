Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFCE4C85
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740964134; cv=none; b=dEq6atQOA9McGfkk89B0mfVKr1nv+EuY1drptIzSnayQwLiO5e5ZoB9kSp4iX6alZfocE06F2gF7mwYXdc6W05BZWbJ5Zt03ouajjUgtSh9mpI2qlqpZFpxjAVMxawp1SumZmWyqFeaW2dvxe5MrDGaRKouix+TT/0vKzBRSvD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740964134; c=relaxed/simple;
	bh=paB7b7u85Csp3vjtslumikwZBwx9bwQkPmHsYpMLWqs=;
	h=To:Subject:From:Message-Id:Date; b=L3wOQQH9VsV5+qAf9/vh5L239EKtCSwKf+66QRMGhOBPiIL63FYi97it1ATVNZMpdWnmd+2f4jW37/H3uckKkb7+XdP1/Uuzfc2tG2S4EqW5OC7UxbRGDtzzbVLmyE4/bs4dhGnuaUFgj2TLAYysAWJOyf7vVdCKhY8AkpPKj2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe8Y/REX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe8Y/REX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16BCC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740964133;
	bh=paB7b7u85Csp3vjtslumikwZBwx9bwQkPmHsYpMLWqs=;
	h=To:Subject:From:Date:From;
	b=pe8Y/REXhHiKZws1FQBFR3zAbBhZjH0Tiobnxunl3A2qHonEVfbfRxISJIv1Mannx
	 JWSTN5wHr7mJb3+TDRjY5PTZIN2+j1WmHC+LtPpyI03GCjZdM/AGJjJcHnbE2oRlyv
	 0OybcL/CKwPmb9e8orsKpeLQiGODO0lBWp9B5g4AUTmkwkADkGXJyR2+uObtJB6AxS
	 PMiGg/TNoixbOXK1AN5vHeqI9AsZU/Q/5jFKLCW6H1hxg0djleIFGgmj8AAtTqIvxK
	 vAfUyYBH8sWgWKMhZ3Ybr0V3WDfsv8Oij5LMGuRXKJ4dxmtldUED9VwncSsC4xQ9qS
	 Bfa4o+n3hkfww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AFEC19F32
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174096413360.15627.4702291944763509550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a5a9167ffda1a28f0a944429281cbef511062f8c0040ffbe1a9e08c1ce2889
Date: Mon, 03 Mar 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740964133
