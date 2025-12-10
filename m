Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0170C2877D8
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765365774; cv=none; b=hhqHaxNEcM1LQws4k2UH7ixsv+RS7PXAvRFtAnVPHnNwZFtjTs68yNtha3I8eWPyvJIeN82tnCQuuElt8xWpC1xixDFwqnHX5W2Nocj5R7xKPwGUnTN2TvWi5KNPbroOH2Ta6QL/wCKYPKjts9Y5hxq0y3VUfdEyNzUGecQJZ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765365774; c=relaxed/simple;
	bh=fsAmoefpGMf2/zs5HNktODixsyKV9fr/ZerpHPzkybw=;
	h=To:Subject:From:Message-Id:Date; b=HDGPf92ZNvK8Jq4q1Hk/I1D+vKIB5IX1a9bEenmag2NqkNQBvveZoIaHDM6lVqVgGn6lUk74QMRNIc/4lHYdccoDQRXJGUQcnYS/BdkK12A9tluj3D4x2KMTuXV1ADvnXq1I3n551XMs/OmL/UynaaTVv6ghW9keK3bfMu1T/cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbPujsT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbPujsT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765365773;
	bh=fsAmoefpGMf2/zs5HNktODixsyKV9fr/ZerpHPzkybw=;
	h=To:Subject:From:Date:From;
	b=KbPujsT67yuIzRjhT+dHGOcrIAZpIKHTLKabEyk7WTABzv5KvJzZuRyIqfIK9XCu1
	 5Pu6O5oV6Smo21JSvvdDR0GQWdPtZo5+e0M8H5Xee8ifuLzDmFhuAi02wYM/SpuErg
	 RRRKwoZ0i7RXwGEacaC3y1a/HJN3+hrVYKNhmU84BR8PXJd/PRgb6jPEv4CEoFv+Q1
	 +F4zrsbN+CWtAK0s2izzUUjEP8hfJGpCGTcNnG/g2b765vDcCCOu0Oe/xw6TcTZX8B
	 KKNzC0T330FdnsRAX3sT+nOVhd3udtr7o2nuYTCs1hHOf2V6Gc4+bFPP+4s9ROPE3/
	 TazdnlmkFRf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB8D3C52C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536577358.16489.13864357570330749040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8727537fe011eea94b4b39e1eb280a85c75594f2e8f2886d22e44128df25a951
Date: Wed, 10 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765365773
