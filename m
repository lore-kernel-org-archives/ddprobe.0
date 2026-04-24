Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E7629408
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776995254; cv=none; b=NI7b78SUSfkPALIl4kTSAfP3qgwOkRNQjvpK+qlNpdtSy0JPr8BdgCgEmv7dlM3DYS7KWgVEFk4WxemAvZiw1GXDh5dlAmD68F1pcQswxitPM8L3JoOq7Nss6tfu8kpM99QqwL+5YCGFCVIzFFeVaUyoXRkG9a7mHKqXkROh1A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776995254; c=relaxed/simple;
	bh=0hD9Z68nNiGh+6KitfQTdKwBEbxHp/BQtKpbydTr4Mw=;
	h=To:Subject:From:Message-Id:Date; b=gsuN/7BcnAKIlxcDB+9vTUgV/sOyIMuBC81XuZtCEksh7xK6KJHwcq9FEMSWx/oX2Q/cNmzznlSRfWDfOBy8eh0RL3BTsW7w9gucN3A1Sz5X8JqNYpxXDC//1gmsZetujE3h18s4Jbb0hW9NBN8l+mfhJfTTlO/MO9KPWjk3LlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0MmZXE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0MmZXE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAE9C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776995253;
	bh=0hD9Z68nNiGh+6KitfQTdKwBEbxHp/BQtKpbydTr4Mw=;
	h=To:Subject:From:Date:From;
	b=l0MmZXE+14R2wKSmz+29vxNpAXTrucq/yXXZLSK90IHaUklTmx6w/tOEYf4FG5TiW
	 fHcQbMoIjfAHJv52lIXE69GgsdiOgvAcbcRMLMKejvS6/MlT1XgHTORsXGG61zEgDw
	 zcNEkzoztlVpZeJuId4KHOpzmWh7S069XWlLuz7hb8wjzcsfk6zyP3cencvj9fa8yc
	 /aCkEbVTi12yTssHt3yIT0KmYtpv0mk0azArVEIXVbPqPv1+v7YBtfo3XvEk0Wvg9R
	 0fxsI8Owoqy3wJgSV4C8skXgdT9R2fi6QH13mBrQaFle4zsPORZEI8SS0ToUak+ZKW
	 /CKW47CXaetJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA462FDEE5A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699525368.32238.9179177591981961306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29514764da6ca5618a8b3718e2406bf6d5c392fab823a4da6b1f622d354de29
Date: Fri, 24 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776995253
