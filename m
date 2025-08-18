Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8577111A8
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755485394; cv=none; b=qq26e6eUby/T8UT8V8u6RSAbtA8HD6ID1PaMtFVLjvO39DmCcQ7N0VWow8cDPlCY3vPSNXA02IhjxF0ZoJBHEB/kfILxDmVLTbwg/64Eg2TcBPZgHi398u43mRnRrSsfl+Djnt8IQ0Bsm69JWh6qNNfmvboj4pzAejlAavQHjbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755485394; c=relaxed/simple;
	bh=0XcuxfizSBJGPA0vEJV7I1Go/hfIiOjLSSN8wzRvtSA=;
	h=To:Subject:From:Message-Id:Date; b=LjIS7/0DXugK9IexfYXwEFpxbgP1+CVgrKGwy965Mu9ayxAvjwSBbBX3g/tQizK5KSaOduF7JmHeu2E6ujRkr6z3ZTfBQyIMdcTJ5Iizn23aV96fCw1kAFjCJEgUN4AOoIH6QPerQIBJyNRsVPWAJ41UG5dUGafGihzx8ZynllI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xagti5QT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xagti5QT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C50C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755485394;
	bh=0XcuxfizSBJGPA0vEJV7I1Go/hfIiOjLSSN8wzRvtSA=;
	h=To:Subject:From:Date:From;
	b=Xagti5QTBXuc1lyMxucgtt+9ML4MDx/Z0xeAe98hDtaz/ZXm3/YxBh54x0HGSXAl7
	 FMPT9bc6ATvQdUdtO0j2RT7IFOoj5eqAfav/UNQjqTghE60HTxOg1fjikl0HoYwomM
	 13ITiJi/jAn5apXbgrhBzeUfEsIPN60bc4qKcOFwbRK1E02Tl6TeyAl/RQcpu0Itmw
	 NjrD2lVtPYAE4fadYUrjjffIL5kuCEGc4uRVVGd4E/Iqn69Nrp2OxuW92xKhaIEYs9
	 SXZ70MPHh99//6fA+PgPrGMA8CYYYg4HHqn+iCdKAHNe+xDlsYtjoa13j2oBmc+QBO
	 AOTbik4v2yPkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D62CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548539357.558.13704633938517253278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38864299c3c0e127d8132841bbeba1994f044711fbb49e0b57152b6ccdcda75
Date: Mon, 18 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755485393
