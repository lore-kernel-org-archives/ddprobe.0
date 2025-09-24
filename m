Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114F030C344
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758727194; cv=none; b=cBsCsPzsVxT/RjKCutoT39AxmMMWr2MSDvxdKf58JpndWHMrA52iiKrsRFQbyB4qGNAS8TQQHFQg7oxrTZ7aHhV649/mEuoxbn85GGKQVR1yZLg1W1C7fPChLAAnfHsLHgta8ERw3f8P95rhTK82AH/0x1/VP0rFUAlfJKKT49o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758727194; c=relaxed/simple;
	bh=VtSnnDTM5Trbcy0rRGGCmOFKyprp8Z6ncuQIXpKroF0=;
	h=To:Subject:From:Message-Id:Date; b=YXBt4+jJ6PE6Da3o0J52S1vpoUSEJryvIzblhd7X4xAO/aMZPPUJTx1gTIyVFJfDSo9C3TVKIVYLiX0rZgz3ZAUCAx7erKrHaMa+B60mrANtPVhOolLzezpXSeORi2RS1OHyShkXdWa4LU0UakuXGAYh3sYYJ7psg8K6fueU010=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/M8eTuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/M8eTuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7945C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758727193;
	bh=VtSnnDTM5Trbcy0rRGGCmOFKyprp8Z6ncuQIXpKroF0=;
	h=To:Subject:From:Date:From;
	b=d/M8eTuMd34ydAEDf2se/fWEMMLXV7vQYSkpH2EkwaC6VBphw80aC+Szd5viq0AWa
	 wc6HC3Ff+u4IrgvZpHoQzx5YcR3JHQQIgcJ9jPuwrWIa+GyEmqwEI4e5NnghiSE/Oh
	 emePvjLnDKQWyb7AnBiLLz9aLHRLPtfLAXXBaf2ilHWqKkUgcL+n0nxiBNTUjhwc9g
	 +zBRa7bea+o2qYEpjV+2svfAr3EOSQTHGWX7qS4UYalTTLOo7fmzoL7Iov/TL0okbv
	 wZDk8w5L8vPtknv41MEagniauzHd+A/5Prs2PhKbH7amZCIXvQ2yd9hJkJILIbDVn2
	 krlCKc4uGCw+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97450CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872719360.13971.7010801932155346085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca06b0a6b80614c5a8a1f3ff63d8ab9ad2be977f4be718d4304dac7a22b6a312
Date: Wed, 24 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758727193
