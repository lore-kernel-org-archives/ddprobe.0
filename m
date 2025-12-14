Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AAE15853B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765677174; cv=none; b=iOCVT0+BnyYLcVa13I8Q1z0FKrHKJNBJPLDfGOXIkf11CDV3P7aPdFZKBY2dJYs4zsCKC+JdMr5G89QuHsDvxyDC8Xuo2f1meovjxuALXSj6WU8Fp/CYpf4JIGcSfbyyH6OV7+VLQA0zzh9ug2astHqSbCErJe37rLTZIMri+e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765677174; c=relaxed/simple;
	bh=vOgYGy1dFjNsV0BXBinvhrNv9x9hAu8oImWk9+sjUT0=;
	h=To:Subject:From:Message-Id:Date; b=L/JBHwp1Y7iTJeYJKBhafXUdmvI/LanMHnulufRPDhgWBEgozz0dDqr8wukIdlg6vuPb1EfzduItQTxC0sDiAhelSeZD6YMSZWn5RdF8MGm7l2EHUHNOccANyy6E0A11p7Bd3OaYVz2ucZc7dvlJ8Wruv1f4Tj6DjQmuZ+KZtgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqDUdYCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqDUdYCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765677173;
	bh=vOgYGy1dFjNsV0BXBinvhrNv9x9hAu8oImWk9+sjUT0=;
	h=To:Subject:From:Date:From;
	b=ZqDUdYCb/CN37RpIR/e1/X7/Xjgb+seJiikZZTmKTDGLHfW1ZXG3z7d7AizSlUUBr
	 e6T+HYE/OtkSmdWEyp2vlRnRRNpl5tG9p4GAzygHM2bLZBcAD6Jj/zhLYoa4vEIblT
	 cBt/683LbKx+0JWW+bpvttuuTCGIxv42vZDHL5QnDXvSGfegYAd3LFGR6E7jjPTjl5
	 VEFw6RixY/KFoMs/HcVw8fBfi0SvDME1MoW2PIr/BYuMNqVjxmmwTFcH1wTglQ5BRP
	 mSt1C+TP4OLqxKQLAt/FFhB3bOmkkuPweZgqRYRVz4Q3tAsVap2UnpYYcKIjtcH3c6
	 8/9DnvHhIvNxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96681D5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567717358.31091.14036750479204457814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8b25a063a464a63eee8a263e185eb4358e3ba56f616add7c9c372dac2fca6c
Date: Sun, 14 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765677173
