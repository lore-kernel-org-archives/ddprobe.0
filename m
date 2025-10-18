Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380B950276
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760782194; cv=none; b=NocltAelfXAVBA22Edi4XccriFYatwSc8gqqlM/Ozf1k51KqZgZXEijt/8QPFBJm/cgb3Fdl0+DwDz1P5g/vnJ2cC9DVCDYgPYtCqloQVUysHT4pOtRHPLvh0mQ1m24vHA4ITtOtkQQSoa8J/nr5LO9hUleVEx21FppRyhJNHtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760782194; c=relaxed/simple;
	bh=qzIOJwunn3NhZCSkFGcRo8gd3Bci/UMcL1pfaV0lBBQ=;
	h=To:Subject:From:Message-Id:Date; b=VNV/3pPLfXD59dzgdWUvTGSShA5iDrnM+drEBNnxMAcaiUmMhZFTsr14sclponQWV0ciUPo7qwdHVjlO+zEwfenfNPuTuXdsw5R2dlfSlIYtob9z2vTm2SVds8dz4mBYSi6npgZ3NQjDN/cjmWy7tIv36YUJj4NRD+P8TrvD9kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOYp9S1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOYp9S1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EE8C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760782193;
	bh=qzIOJwunn3NhZCSkFGcRo8gd3Bci/UMcL1pfaV0lBBQ=;
	h=To:Subject:From:Date:From;
	b=cOYp9S1H19+QJtVJzsSc196x9yatzbdXtbjatxQ/CZeRTAWPBVOkyhiyPcpF0ca8L
	 sgJOpqwvimtiyi+LKjJ+IQjHtJpWqetCNzaipDrl0pnfVs3JJp2HsYoc+xC5f2JHEg
	 bHvaMo5V1AFHnVsVEahM86XG1SYLXXkxUyC6oj4JiheEXrTzNHZOR8ES7reycFLa7Q
	 fn69ZW31xLOmlOnSwxGC426S/uyhvWu14bvo2TA/ZLng5GNUtBViG7ZGVo9vgKj2b3
	 FdjCAQzI0bxvmrAOfA4DNcTEA6AP5wwvIjT4DMEa/RPJNFRCn3vANV6KaYi/1ha4Hp
	 GBjEPM2xoJNhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930F0CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078219358.7547.7301106538646703789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bec0af2d3abe099616df551a312499fef6e6745d61fb86461600ba4176d5c8
Date: Sat, 18 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760782193
