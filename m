Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279E761668
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770866095; cv=none; b=K9zs3g3di1CkJJQNN++UyLFN97Yfsg7CEXlb1EfQfqqQdkwoLwqMoIhHVFCvAQ8M/EjmkTpvJsmQcLCHiQDrBbi7RzpS+xP77a7Y4nXoh34ECZi9c7nvcf1O2Y45FEOtexpzFqZCqIk00z/vgaegfd1SOXBd1EDmCIPCH2ZsiiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770866095; c=relaxed/simple;
	bh=VIOIxx4F2RTLuCIIRLWNrejzTo0M2ZsqK7UYt8m50fk=;
	h=To:Subject:From:Message-Id:Date; b=Vywy7kOS22iuiS3sdLWoHu2vLPFDQon2q9hH2J8MI+4dPHeXBY6uWpUxm19HxrZsgHU5lUdiJP3vrg1yyagbw18UnfeBuAXxPvrMJwcWkcyJmXX2U/c/OmnH/s0knbC3IcDs4LkrdXPjmObfv1dSdclosWp4hmfNeZCCFxs8ePM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCNj7OKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCNj7OKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC4BC19425
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770866094;
	bh=VIOIxx4F2RTLuCIIRLWNrejzTo0M2ZsqK7UYt8m50fk=;
	h=To:Subject:From:Date:From;
	b=mCNj7OKObnHSlra9wnIGsNKu29/T1mA2OQsp2K8QMYqM6sy31VIywTHeF99/nYa8f
	 N/DPmXgzaRK+ftuRmTuVTMjnGvBKnTU5P/HSLppg2oc5iZbd2G5AtplRFKB2iM0I+d
	 yXX7gQBzrA4vWfJ0C+lXfJWoiGpRcgFDYmNU4cOqYssYRV1q6M3J1mxPDc86HjUOh1
	 WG9gTt+F8KfDafyLDubLa2QNN6Br0vcvZAfp6UHFj8UcJVxR2UJ2V1MOiRl0XR0zC+
	 RO0A6AIvfFm2aR2OAwDP97E16nqIGgZQeTMbRxHK1vYV5SGy8Pc4FsnX3xoa/rQ/bB
	 KHstpGp9rz9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98471EDF023
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086609360.23969.16772589632457556319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf01beac29a3cdeea547eb6fb882972c8c55f2500607e9a94da537e3b64dd03
Date: Thu, 12 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770866093
