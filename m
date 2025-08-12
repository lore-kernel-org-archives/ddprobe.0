Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AF22F0669
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755029994; cv=none; b=ggaN83jyp2c74sNnVFxDxtGVPi8O1en8QcYVNav7fonq98SCnCGnv0fvEoW+77BT6qeAxWepthfrhyhko4TSitSzfcCFCHISZ4vdzEPTpZ/DOPHrFPB1gPil/xqMYqKy3Cjc+73Z/ca3SkV4Vq78lTR8PAUwjCqKHL459F7+1Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755029994; c=relaxed/simple;
	bh=8410ULIWWQihMA5GGq06++DtEInB6Rkb1386pGE9KHo=;
	h=To:Subject:From:Message-Id:Date; b=hy+7rg8nNIE7LopJOcF1QbVzVDPlC3lr9/mJVqSSX3p3qTafriu2kvNLQBJ0QgogITwqYmue9CUflC7SCeiL80EleI5P64H9BdmAnJgMJ0srio04hgEJvL2Ng2R4f3K1m/SMmYtGWO4Zyx75MvuZujNS1IYWEjoZ1/EBUwSWAcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHSmkq5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHSmkq5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FB5C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755029993;
	bh=8410ULIWWQihMA5GGq06++DtEInB6Rkb1386pGE9KHo=;
	h=To:Subject:From:Date:From;
	b=WHSmkq5HkDQF8+fOdEIUZPjZSQzu6qHiWtdRYYABuNgXzvNXj5R8vLrQA17qtOiR6
	 EkC1pQgQe61SbsHa91gqkpr2QOkre3oulWpecB6y44rHR25Ir6EyqMSVhx3X4priwg
	 Va1e3xhrRusqy5/WXacYZNmLdJCGs6BfzetHFJTfdhuPb14iP596QTAnKsSYS4Zg1R
	 0N0QGPYV9PKZVGjYnEuMc8iHR1V1yX84B+94ujnKMgHoqIfzFKAnDhZ9m09ajQnzLX
	 w1Pk2K2ONUPAjDMeS7e7WGumSphUL/psfHHVoXQCTknz11Z9gn4gEw/EJ/qOwOEUHl
	 9RR4tiD7mDJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93515CA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502999358.13471.5688339678703374823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0741d67242d3054e39108e97122561581435359b56d914d2c09643603f0df236
Date: Tue, 12 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755029993
