Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3338BFF
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741459734; cv=none; b=CYqRF1gaig5eDwYakaZqNeN/cC5xmAUI1Gygn/PlyDK9s/0H76Uhb11HziCoNnWHrrHWY5CXlE0dXlaqZzT3GsGGKj9cbDNWbP8T6dnAPf7oQ2dXx1McHUcOb2YxRezOhjetKD/ypa7Nc7fp4VV1p0vFCLCTVhd35paKNCoNcFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741459734; c=relaxed/simple;
	bh=0jCjFdCiHdTkS4t4LfsfaBtWFQ6PrXa+36Fekdsg41o=;
	h=To:Subject:From:Message-Id:Date; b=QGCp32bfUpucwKUjWzWfZmPEcA0cqyBoVoiBHllsAfZw/qsT+Yue7sGcGzYCT4Ykir1HZ2Kc0nvIqLuPmRiwdoBkKQGuBrVEowZ1e0TphxFSUMF5js8OO8giwnYS1a4REAodB1QpDjPyK1Tp88guCAi4dqzwwGRn9hOIR3QM3lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It955ayF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It955ayF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DD6C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741459733;
	bh=0jCjFdCiHdTkS4t4LfsfaBtWFQ6PrXa+36Fekdsg41o=;
	h=To:Subject:From:Date:From;
	b=It955ayFe8BPKCp7YNSOcaCOMSw/vft6fqNsbrNePVzkFuWb5i2CFHTS9RhyMnqsW
	 Zsik9xw4tHklJXG/82j2ZR2oxb452R+gUkzgTfuAvQT46p5WIUzr/CTffIyBLQ7SJg
	 stEaewcB/GzghS7+7SgnvgRQtJV80ysdNQgo16tfOOSHTn+mMsJGRwKzQreMPgioQg
	 w2aBVBxKbGwj/aD/BYcanVrvTTmaJIROGUSLKH8jHelmi+lcVCB4iIgevIJq9no9Lp
	 DoMymasS1kn90wMsZ5o85HZbp2nhPDDbiUdXj9Y5xn+BYKm8S2/u8xa5LuoQuYoQEh
	 AQ9yNTcHgQeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9972EC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145973361.5671.13588705620184376654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32c615cb65cd02711335f677b661441b39ec068aed84ed2b4d8ff24d1fb167d
Date: Sat, 08 Mar 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741459733
