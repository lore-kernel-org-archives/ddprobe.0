Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4017A1E480
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748953795; cv=none; b=mXiPNm7gIMabrhFAsW8Hp8qs302tE09J+nKQO5T7buoZa/72XFVeVNziVUzViMP7ZThraOqACcrFoPyK9GOqmiPc4FAGaklsF57SqHWKiZsDXwCG47VA6NTlSVwp1SuZGFn29fJv4VSkfDM9pAzjp4tR1InpPc++yKYEtoE6vH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748953795; c=relaxed/simple;
	bh=7/b+XZbXvsPItFKKZgRIcfQ+FYs7gFt+2ouQlUPwWtc=;
	h=To:Subject:From:Message-Id:Date; b=APqfaWG4fgAmPbSwdj1kVRTKSPCcE/GNbAWVew3mLhJ1y29xwlAiXDj4DJM0BSGqe0DwZDv39Yhf+jT+1chdUl3uU10d6RkqsjKAmIkqHWKjiXJ4FY78XTbnVo0zjRpHoQmYqe+cwLhx7nnq3xV6Jr2UplXvYHvKyrWu2qG+xis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHgxxAzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHgxxAzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09AEC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748953793;
	bh=7/b+XZbXvsPItFKKZgRIcfQ+FYs7gFt+2ouQlUPwWtc=;
	h=To:Subject:From:Date:From;
	b=PHgxxAzmifJk0MlVmD/I1k+IxZSARD6QxEJo+EhV+JcTtIFj2IN4FgjFAtbusQ3zh
	 7UXn0PzLLvVMkkxoHDr+gmfAz88vZdTKtaYh/N7EJZbdQP/UBhhzI9IRvlh3gdUJB1
	 M/ev7mTHj/af05Cb/p0kH/aqWOBqj5Csy+Tu9OGTB9dPqrC4OEcIo8GfJJ8yZYAgKK
	 /11eIzK9D2FkY1wrEwL2nBAVR+RNQrGenrphDa92crBIiulcxa8BsVEZpsOgfdzK9a
	 +/ltnMg1WEjPa7gLL18qlPu4Agcxkw3lctWitMIL7FxsoYgNqddFMeFp3zcGs9bv0v
	 Mb0FIC7MLUN+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7FC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895379357.7029.10527682578261885105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8977db903cdd22a1399120a685fcfb40191e7cdb6a8eecd5ae90652fc571134
Date: Tue, 03 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748953793
