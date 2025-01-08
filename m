Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0C61362
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736297154; cv=none; b=iPtFrUr7abYQiNk7AVRxUBuQ4WayjhhnxFR6gDc7KhGsCSQ5b1Iy2Tq96alq8Xyh5vIiklyKKr0mhyEARmBPO7F9LOgonMq3HFMszqXhaFz49Cbxcl22s5no1q7mFFPcWbnRI0ELA2fbBzzakL3p8uFrNgJQlsuN5hKjdv2zFC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736297154; c=relaxed/simple;
	bh=B1n4Q613sV2kxzo2g5+C59cP8JPmYXQA75LjgaxgI+Q=;
	h=To:Subject:From:Message-Id:Date; b=J7tN+IC9O/rXmfpEFykqematbKtUehfcXL6k9Uj4P/xv8IMzabsiDa1nf2BJgCCWiIcykSAmet6rSKDNkbbFlR/CcSTgTilCAuaMHL/zfzEE+TDzN9bYYdHpNh7/NcJ/qkaC53Gr7kiqUo3ayN7nn15rXUeTqzSPncNSxS1koaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLZGPJUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLZGPJUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF75C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736297153;
	bh=B1n4Q613sV2kxzo2g5+C59cP8JPmYXQA75LjgaxgI+Q=;
	h=To:Subject:From:Date:From;
	b=QLZGPJUm1QLUxTAgpdccR3YFELUUsT/NiUqj82p/DYn5DanuPwg+7P0XIBpzFXSx8
	 v+DE57imBSLYrn9zc1Qso4zjXoYOVDqIZ55D+EbH+vfSDDZqnTh4aFrf7bHJ9m+AWp
	 EbxbAf5NEnQdPHR8DaKjE80e8nosTbKaHeeiVS5Zdc8Suv59BT0fPInczpJNeonBbN
	 Z5q+/B/f+NHSArtj95I8ilOdi6OtFsD5VgdP/J5qoxiAA8VP+oeaJ4Rt0lbZm3uiNz
	 7rPrmedjUg3hH0vg0nC6DYEBQpNPQg5DqdISH/ieU6XkINlHMtLXWiGY3+pH0SAFMI
	 T6lzqrHsssiFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E7E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629715358.3173.15903549241924412393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e4769bf370c4e6e6a919c64928095ecf6d6f4c2da520e8ec82bcf02df4b2d3
Date: Wed, 08 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736297153
