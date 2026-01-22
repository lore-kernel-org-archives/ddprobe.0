Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5763101D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769045634; cv=none; b=IDrc8ufKM1c347Py498Wph2qkuAw47Ix+vHYyCorX6CWBE87mTVBeW1fCvqctB3Ln+5vdoFIqCdGReOH5BAzKWkIvDvB/QAJods3LEwqNl2JIVg9z3JhYgjUVBXE8K2hpbXC6AI6GUnWo/htAMLspV6MJk5qV44yecqdfxj+TDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769045634; c=relaxed/simple;
	bh=JzizvKwGlKgEPZ87NOtg3lTADu9T+xfY51ViFczRZpk=;
	h=To:Subject:From:Message-Id:Date; b=PLQGBWjGtSkQDumx8tbcLiA+hA6ql+KQdzl5PAP/enGRv+iAjKEq9SilrCPrSCVNI8IUgy/I3mOhB6IMIWSxzfo3vKuAgQDtSLvO7XtKobm3GFWOYlcwwh01xNNLB0KKTKzMIzgCPieLRwqpY3Ba+uUwRLrcDBqwD9ADxUgksAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijvM4Zf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijvM4Zf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63D5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769045633;
	bh=JzizvKwGlKgEPZ87NOtg3lTADu9T+xfY51ViFczRZpk=;
	h=To:Subject:From:Date:From;
	b=ijvM4Zf9WcnJbNUmBAt/sP7wO2+ZPa3NxHwKGpBPitEO/+GocCZfnGtkeGLUcd8GJ
	 TzooxkReAqJPeeIHPqigqwHfp8G+5uMEmQR88ZTeZ8YuDq0W70rDwwbQp398o/8mKF
	 CiH17//vm1ZryAJceUD7U1bJksyML3OwbXIClQhV2FJOAnQA/lmN4MQnTh767Mjc6t
	 zR3WxOgbSrKrHLSAMIG1lzV+lR34DlHz25jAY59lZLCshxHHz7ydnEawW76W9EKpw7
	 kU4Rfk157hl29nQL4txomFXOxi0i3Nisv+nSjQoeWuePgGUkKSoKfJuCuSDj6ipYnR
	 m1juhBBX6zztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D69D4695A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904563358.7248.9008925628683109857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5c7de0efbcd2bfb2f3267698270663857ab5972fba19a9f6c0e54a13df1fa3
Date: Thu, 22 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769045633
