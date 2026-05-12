Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F91F392829
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778575835; cv=none; b=RJ5g5JIXpN+PA+HcfQdiI1V7ydIoHrK0kmfkZVRztEPpSdgO9qzS341pP8PeAKTP5m3Qj5pKxL4Fl9HDlZr2vxHE3qhF/XlSX1ROyi/mETFk0doqcERmPADGAimyF28cDgQVAdlYNbT9/D94j6KO2d5CBwKQI5eSc5nlWxte3ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778575835; c=relaxed/simple;
	bh=BbV+FlcWFVxSEcxT92zokPYogFKm7rUeV3qhOcs3XCQ=;
	h=To:Subject:From:Message-Id:Date; b=u7zb/4an/mqejV9ru+5DH6O5sqFG4udTGLtLBQJ3iq6MkxyfKB9xmvJ59mxYjnxVBcFLllWx4fiC3d8Q7dKKgJc7R38EDa9KK1ZBUxRToslhsZ2eORZ11KVlewwdwthpGgKGP1KWO3C/MWc4peyE45ReaydsGEeDX7hMsAb/C9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8qyEB8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8qyEB8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA38CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778575833;
	bh=BbV+FlcWFVxSEcxT92zokPYogFKm7rUeV3qhOcs3XCQ=;
	h=To:Subject:From:Date:From;
	b=i8qyEB8Gt6CUl/B46t7W4/e7ahDKd8eBmcqwwHuDQkvCxIBC1NdOV12QzuRdudX+C
	 cCSsNrCz8vbM3FlNsqkc8A+lTaE2OwjUZA2IPDPats2XZYvmkwqLqfYxCfH/IGIo96
	 FyhvpTyhMjuC2SYvT1vIBwMAG7t0fXUaKMm+ckZaNmG1S9TSyysGXaPyUaQZyx4OlL
	 NT1c9iRBmTFu+LlQR+1jK6k17fXZInso6U9ae9YW2lbQ2rgxEB8zhLg0UFZNbIitxU
	 JhESJRoU5mX0UHYWdftl5eiMAPTOUks1HY3WpQ75VwEOfB1h4P7PyzjqlJSuHZKhzq
	 flQUVBLHLubtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9C2CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857583369.15318.8243298216413890593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76e2457d7d2038558aca57e516d7904ca1962662ddf8b397cad828bef5e3053
Date: Tue, 12 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778575833
