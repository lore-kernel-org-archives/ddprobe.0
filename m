Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DF91F12F6
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745326195; cv=none; b=Dgj2+1dd+Qmom2AVFntnAeYBEoxV+ELNXwMlgULTQKGkVXDsxZRFzMwEXpniNBHCfUvm/lDHHz736W5DrotNadStDHhizXsIspWilp2zjZXdDkTxkG4UK03NqjtQh0CFB2jUeotOZYTpNXlNZtLHbqFepEfLutdyVCMpq/BOC0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745326195; c=relaxed/simple;
	bh=dqDCVaYTZMem8cIfhvqjvTIqMX6UsCdaIZ5MmpeG4xM=;
	h=To:Subject:From:Message-Id:Date; b=AYfeaI4fThN3QOrIoVEIuyjoaqTzHsTKhicDMxHBRhI782oFqyf/0LRZZhoie+OOqltj/Q6NiVzZITzUsDkfvdLS3S7SwOnxZEJRXT79hV2/I9N4NoxFXasPcG5eGit5YDtM2Ecarmpss4K/rlZ0Q6vXo610i16R7d9N1e0d99I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETrVQTEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETrVQTEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8533C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745326193;
	bh=dqDCVaYTZMem8cIfhvqjvTIqMX6UsCdaIZ5MmpeG4xM=;
	h=To:Subject:From:Date:From;
	b=ETrVQTEYNkCaG0N5S2Y7imX13tcbytvi7Z4qnb5cHSuCa2rcR5LVsZ44g+5wK3kYH
	 oxhnqiCWd4rDI2F4mRpGAtNhPBFibEjNHQy4OPrlzzE13SajuLTYAPazqvw5pcBrvL
	 m0MiMv4ieRWylfi/f0fRxxx97sGUYQh90u9wIFp97kxkV5so2lHHFuXsDlSzr+Achc
	 UIwxyUS7dNfe0RMyUXJq5W6iOk8pIWxj7kUVY02YkuAXIoNe/s93l1K4pO1bD2hOow
	 +Bzvlo7RgfxmLo+p3LMJoQHkZx90pUTggaPYQ00v3Aq+NNFKyuoijAZJOKnYKP8DFa
	 eyfz6DrKLxF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC92C369D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532619364.3222.4333352040576518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edf160789b5aa4d9904662a114ea68e669f567573ca0f428300437557a21c70
Date: Tue, 22 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745326193
