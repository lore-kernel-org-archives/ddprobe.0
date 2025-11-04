Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0989E29E0F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762246794; cv=none; b=hiyS3IL5fuGHpr84VRPOhG1utunE4dgitwOAKyIT3ignm79WH2+YuPRjr3HzM9O1VteL3N86u6E5F7m/oIXtDWsdmpWSa7lvaNyWK15Z5cxHeTcStXADx16PHHjZZjmrnnzTNilUyddCr4/t1KEZLTgD/Kz+bikKgD+sxjFUrdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762246794; c=relaxed/simple;
	bh=NCOtZWcfpHKPwtRufkc+T8bIFaeW4kFt+a9z50KAeDc=;
	h=To:Subject:From:Message-Id:Date; b=aKA3U1mfJheU2DgKHeGH09YIY4acyxI8RoAlLRBeQKJ964WCLVPNCURA2sObdz7KIZsdjPfrUbNCAwHoIFde4yv4haoyLjaa4UMq5RJZQSK9GMrGOvHxfk5OLP4Shn026++LYhSpiaw0OCzSLzcoBpHKU3SkErNB6T2V+w981Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4NACw4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4NACw4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F63DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762246793;
	bh=NCOtZWcfpHKPwtRufkc+T8bIFaeW4kFt+a9z50KAeDc=;
	h=To:Subject:From:Date:From;
	b=b4NACw4vGskomgYxcCHq63r7RRA1C/kPd78U6Xe6rqaRu9y/mFCyBhVKpvApCpTK+
	 EwCtXVCwSDDZ59xRT/RUmlhWPRV6IAGh1UWncjzAv0CbBHRl/6rYGSExEX2N7Aa9Ze
	 CJpAMPiR+bGS/+23NwEZTbBu5Wm5CypEWKcDzhF86gjiiXb1mV18rPgRcoD4Sf/RlQ
	 WZpnBORBC9CNRweXzHq50FHD9uwh1/bv1SZ8TBMtcymOVFhix7UfiOJUdHPYzRdFj3
	 rc4Xqrhf8hGFEG9yORURKlGTGwH7/ZcBS8cLOFRgjH6RcX5LK36q/3ZqICOLKHJBkj
	 0S25WW9ablaJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F7CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224679358.23033.7785042803908283924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319fc9edaa0a4d5101cc06da1032b498b0b13f1ca81cf7e0af2757bc98d250a2
Date: Tue, 04 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762246793
