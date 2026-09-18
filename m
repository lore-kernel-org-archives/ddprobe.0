Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2C82D781B
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789772434; cv=none; b=lFRf0Mqu612FnldD1pn/mQDEMNyOGUmXik1HxnJpphHVQX5otHHe46CArriHY4f4//I8a8Em0hiSPYWAzBtlQFv8FeKKZ0FLNRHN13RGY/vH8cHEFpfLHhH0JHwaQNrtUF+nbtr4OnVU1216voVeG8e/KaOkPDMpmsVzRmkOz7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789772434; c=relaxed/simple;
	bh=8W/2juv2oyi7G0n3A9p54fY3g9dt8jTniIL/3p0J8DA=;
	h=To:Subject:From:Message-Id:Date; b=JNBGOot4hJuQcBhvi/T8W5Met8QPPk21hp0CvFetwBnQBg6SGi63D+1yUpDC/VWJfdQ1zmoCmHMSWcF/kDCiPHweqO+0907pryAltEd/eodALfPFFyNF8TL7vt9CS0dNwFajPcm/8ue/ivHlH+9V5bDGWdV8hDNKMtyBz74cvGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVACkPLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVACkPLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF15BC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789772433;
	bh=8W/2juv2oyi7G0n3A9p54fY3g9dt8jTniIL/3p0J8DA=;
	h=To:Subject:From:Date:From;
	b=pVACkPLwiWuHpGgeIMaw1fS/f1vGQcY/Pk/ilLa8mksYEpiHrYKWMqs0DanlIrB2O
	 VA39+jX4m0/lbWpkWQ2Vz8dQ7xo9ypyyUCgzKSjW2lPtkeLsIhp2RNf9i6+9r6HDxL
	 KH4bUQ2CTjHC0EgFP3mF/Qqhe34Oz3mzTn7SeN9z+EvewZK/UemNemRkT0IUqY8DlD
	 YmZ0gEtAXSfs4R8oS5p4vQJHRcyf7LHRbk9Uf3IAzwcyWB6e7uSelPaxkWPad5A++S
	 T4gT1iDmeFi7xJJmh5PSX4iZr5OguKJ9uoWXxTfq7QHRyGW7pdS54+uMf3W/jCEH6x
	 capBIEreTOi7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9405C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977243368.24191.9369241039774018619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53697f4c2c3830536d066622fe6c96e9cce8efd5bfd9432eb9a0b11f50ece125
Date: Fri, 18 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789772433
