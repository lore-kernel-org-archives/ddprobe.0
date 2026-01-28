Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088B5221FB6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769586234; cv=none; b=V8Mb7DkyhegPWSeXmQZL4mtJaTfNIDmysZ1spySYezKi1KqX1shBYKa77NR86Lz9dIdy8Z63gxydTuDdz2wSCpLLuRK83sIB5DInS3lAF4PwU5a/OMYq4v35yKEeKM8kJ84033VYEICU1U2teNL4VlTqGTbR4XDOu2kOZj2SmAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769586234; c=relaxed/simple;
	bh=Im+RtDhsXKtuokC6T4Rl4Kro7xWfm3hufDS5LV/E5mo=;
	h=To:Subject:From:Message-Id:Date; b=A0BVIBOrLmx3OmhuM2zTQed1dtixDww95uS1Ta+Kqrh4lSUkiCGhg/ELCo029rB7nfMo1OfXZmtVsFWXdVNR1NHAHqsJ4YXGbyOZjxw3uHVwS4axVU3d15utjiZdkUgr5lQkttCZ/oJACDwCAIVgGD/QLG57ioVA217FxrtHRBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv8ykDUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv8ykDUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5037C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769586233;
	bh=Im+RtDhsXKtuokC6T4Rl4Kro7xWfm3hufDS5LV/E5mo=;
	h=To:Subject:From:Date:From;
	b=Sv8ykDUrAnicG1W8+yPeLYUlcRyPrlW2SSAPqVt0fM48myhsbWb0kImLdnuX5bL1I
	 rOaNxAx43t7tfjRcRThxlRZ6TAkCEhIRdBcdQBoqMShDthUVIzPRQrvB/tCzGWdUeR
	 n7eJoHjQIl14rDzY3nbwChnEt9mMGO+Nuu6D6TgvoCmLGOpkKegyEg/Iu3c0M9imzE
	 WOJ0ihrYnv0OPIvC1ONbknuTqE+HNppHroHM5SzvSjSQlVFKTAOwUuFWWObj01gKpx
	 9MEALqbtemjibpvteOU3RnAsSA5cDs+P9IClNJ/KoJkXfxnd7Cu8hEw2ZdteVRoEhd
	 QICuYosTd6Xsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E87D35687
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958623358.24039.6306531233987130007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b0cc59b8ddaf2bb31d614725f6b5edcd03f3d6eef57101a0204fef88eadbec
Date: Wed, 28 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769586233
