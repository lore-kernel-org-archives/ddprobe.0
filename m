Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E48522D7B6
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751900994; cv=none; b=oonEkbLpmC0D642nCPKQz1YHljQROCn3zmIy+pUKDXIv+Yjte2d0YIwaMVMzRO29LcX0jI56LFPoBZihGMVfMkV/jQJs15Bwe7ChoBVVLKc34M8NisT/T5FCjATDGlw+ISkfC6Cngm8VVeg5KSddV/u1Lr2H+EOG0S8iUkxssDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751900994; c=relaxed/simple;
	bh=kzbHxNSNjP929DVU/FAWEdpyBHFBFgJoN7v7/nbOmWQ=;
	h=To:Subject:From:Message-Id:Date; b=pVVR0azPqqa4341syawbKDcjtAsbJH2GXO2mRx1Kru6XDLlaNa+fIQvTa4wNjs3KnqG/eRuGCxzACkg9wO2634MJTEKgS2eSxDWcuCBQv08cUQlCDZHwEM+G03PG+jB81ykn5noUdlOfcn3oMYau/9TwEABXtcnGAmaQYpqZsmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk9OgoOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk9OgoOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5436C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751900993;
	bh=kzbHxNSNjP929DVU/FAWEdpyBHFBFgJoN7v7/nbOmWQ=;
	h=To:Subject:From:Date:From;
	b=gk9OgoOSoGUPQ2BfRd3H3TUXcc/3UQbN3OxPw9myIJvVOqUx+Dc6vTS8fTjUdmiMQ
	 eTYYh28PwhCAoFSgXOFAXHfpQw7NtUHRSiP1CR1w2iBc1d+qywcU5Um9S/DxFrydRg
	 wkYG/7lukyjKGxIYl2zhxz0fmP5MxuwuvoLFauBctyrJWCWyonSvx475fm1DkYdTRG
	 RopScBNUx2dDwtOcwl/m4uZ//DsptLmF50MwZR24+zuHdjuSXBzahinlz+PLZ1SdQc
	 Bzp9+0qQBPK/YsNXttNcZ86UInZKNTLvcFAZXCXGgcw6sGdwxCuVnk1WcL/TdsvTNc
	 Fq9KPk98AoNzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD5C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190099358.26117.7375038195114777814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1a753f8e11ef307704d5f50727342bf273acf84b17dc4ecee896627f3320f5
Date: Mon, 07 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751900993
