Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09514631
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717397723; cv=none; b=nks50TUAlOU0G1ubrujVU28bymk1RKT1h+1TRQc3jHAGmke2yqSqOe/mV2MwW84Rco6nD2BPEDVG+4xb9UWvo/ZsoxOAIlkYZ0COcB5BBuB8BKP5kHPCXrW/PJa+T/qkJ//SCCc9P1CbTUNaycaSRD/+kcsLdA8KrcVwtw43BU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717397723; c=relaxed/simple;
	bh=QR7qSl3xqrzaPVHgqCwS35blP0PUxqFTcCTucgL2Px8=;
	h=To:Subject:From:Message-Id:Date; b=XoqMb/rfLKf2JRVmURkCuzLj855t4z7X3LIEasTfC8Ppe9NM7mmpMKX4enQ5tr+Ma8Rs5Hi/A7HtkF7Tylsnwn+dWB9iG04Vrn9NO8Efr8oqDtRpXl+QP/xbmroE9kDKO0FqjkqsUknfpNccFqmCg+lBqBVXqAfU9gwcdQGaJ2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa6Jx92i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa6Jx92i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F4FC32786
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717397722;
	bh=QR7qSl3xqrzaPVHgqCwS35blP0PUxqFTcCTucgL2Px8=;
	h=To:Subject:From:Date:From;
	b=Xa6Jx92iRUILBGlUCp+Epx7LgD9HOTAQYyRBwoB6zvOoFr5pqyTxa2jvEcwbLNUL3
	 lU8GuWzftR9f2qLF7BL9XoWdTVadet4us6uMyTXDdPEP6ALnuXn2px5P8UtdzQDMWK
	 2UAyCVsneNbTchRe6H/vO5eTcrBqk13JTFqBV7rUXdcGxBEurrhfcwSmO80wugrheT
	 IkqPw1YgHrF9q/A4ecEXcPGTWhTbhtsjLckdaxq7adQCd1YWvn2ZMb0SA4KvjR5faR
	 t0NemQ/pvDHVnLIWMUcsYTBAilWIxlH2MWI0CrheFtsspNITQcJqu8cli5wg8IbKPB
	 PL9unHY52s5hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0585C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739772278.3845.8076014867447648590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43e47fc7dd2f2d089c5784b1cc0e436aafaa98067493ca575728e092cf4dafc
Date: Mon, 03 Jun 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717397722
