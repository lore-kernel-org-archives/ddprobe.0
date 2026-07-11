Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CF12D617
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783778914; cv=none; b=M1J06b9Hp9rgsFlTBGX7XlMwhEnW2RUqkZRzA9sWPAiy5TwgLQUE3P4SZjQaDmAPga3ws6ijMaswxFEOIr4sxrXutT8SVLoXY9RsWw+Tu+c0sl6q0Z1cIDlNmOkw/1g8aTU6ieO59pBpuAjWaybLBSU9VR96PwhoXJV9CThdVs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783778914; c=relaxed/simple;
	bh=u2L6KhkePiCbjmtY55OV12Yw/KovAigVv3e/QptFjNo=;
	h=To:Subject:From:Message-Id:Date; b=ZCykwKwMXUq2RTC4jWzzVikR01nZpD/nZjtQl3grLxmgOBQpwiI/z6T0+mGXRE6jE9yXZDMOeQ3MOv/INyspaWKwdy7Jss3MAjB13aVbV1sitSvoBZx9B+HcSJIT5RcchEpuHoFqGMreZz1puOIj+PgCBStz2BLnhW4EvHbBMSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTNfHYok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTNfHYok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9154C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783778913;
	bh=u2L6KhkePiCbjmtY55OV12Yw/KovAigVv3e/QptFjNo=;
	h=To:Subject:From:Date:From;
	b=cTNfHYokZ1yLSANA9frUgTYSLcvVLyrHx2P+FfgBe2/jW/69/9l+FJ5urguzXdh4r
	 EkIe3i4iZrmuXpGXeBFTcX59JrjTs7C0b25UXwzVQx0pBPTdVTWN/YAio4Vd0FOry8
	 PudmzKMXXYL23V9PS4PkhfuzJ2g6Z4E0eoUPgN57qpX3HYEGTVA6z5MRSE+2WYb0zR
	 CvpHF57g2O0yVkVk+3bym82J9HkoB+NJ4pYcEywgaeCPqVYQDcrSrqhkLRFYEyvImH
	 nM3mUuj9k75OQTX1/ksP2wGFfQqaIHZYnzcxXr8E2p+EvjhfSs7qq6JRn2tq23E9+h
	 o5es013FfsMSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88CBC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377891368.30768.232084239458137886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38e57dcc5560927b2e48b190a3185f6e5a35e4ca9d47bc11ee183b47e67519b
Date: Sat, 11 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783778913
