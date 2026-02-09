Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1614308F05
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770632034; cv=none; b=DDlJBhmWncKmalAjv0DbDTviD3NQWYCm6m7SLMB0HSkNpMarVn2nWmHLP6CwQ3O9qhUigCr153cm0mI6W+U4D+SzFBm4KMLACBFHdSsNxSIsuEE2d/J0I3kbA+vEVRti+ek1AShTCyw66aEgoAF3Zusv8unCKhDiKRaHawUG1oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770632034; c=relaxed/simple;
	bh=IYggiAQnFWVsKd2ccVdi0UCd7xqJX/7gAdJZ2GNVj5k=;
	h=To:Subject:From:Message-Id:Date; b=gYzdie8MwzO6+bJrzDa76QzJzzHVFqcHG5JBWdZa6xK459eMzgnRm2qyPrWKdY/3MXFSa5Aggdni6XCCd2q07favm4nc0SjCJt/8TjTUwqRDwjlrWl7hOrnxYqt6NtN3u15vdN3fABoPWeGFT6sP118zO/tsWddjjckb+FLAcIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcmCRBw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcmCRBw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF234C19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770632033;
	bh=IYggiAQnFWVsKd2ccVdi0UCd7xqJX/7gAdJZ2GNVj5k=;
	h=To:Subject:From:Date:From;
	b=bcmCRBw4OfWHB5N5k/1/qIHOLWpcwqTGKIidWPWWSd3StQsL5hSgm64Ar6mnuraGn
	 JeM7JRaMc1QS5h2zkQtxWhcuc730qAE9Kh0FSMzeauczO2bKcMxRPjrkzkk308NpHI
	 ekHgWFgOLC82AlrB5NKZvjKKp3V9YF2+okJSSVNjcAWMBNMxKM+kc0DdXVBs8pYIQ4
	 ZLBkOBmiX2dRkuV5zssNaA44gzzKbY9WL5LVl3OOr9HT63lHpEm4AjuLHlH8dViOZX
	 UQB6KtMupMfxrQc3r6s1pNdXP/ljhPqKljv+hXuDd5k+f6Bz5ksy+daqc94Sjq4Zf4
	 A1DljH7DJgPpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9B5E7E0BE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063203362.9621.17114569269479404223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee83ba7158f889e98ae42099155308ca177b78c9ea3e89457a40b62308d1cc4
Date: Mon, 09 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770632033
