Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5C522A7E0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764645773; cv=none; b=ZUaTB4pva1bjibKoRmYcRO5ZyKMJ/V6RdP6w244THsaWBzqou8KbByVfHTSP4GXO4w8a969sQr1qsaSZTSIeaqq0pc8Vfpp0jEbFQ8c4i/eaxLCOT2z329SBfVapI+oZTro1Eopa8fm3NXIMk7FpvHvI5I5Lg5eCPg04kQSFhEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764645773; c=relaxed/simple;
	bh=EUp6/QYBARua+GOyMOjBVRaQimPO2JLkryz15fV+3II=;
	h=To:Subject:From:Message-Id:Date; b=bUDJyrsmIUQVwhha9X0jfATnXLb0F0YKlC9w7qFwDuAFp7MeEHlqVhkAPzucQvBkxLagp7x7lSYHa28bSnUPKH3H5LJwlFaUBcGXn5QdquQ5/En0Li4P+w+gfo2x1JnaiQ6xsXiKnjSLySODwKXtNQMJNDSJdj1J+w8jIg3QG+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEWVDrLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEWVDrLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1848C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764645773;
	bh=EUp6/QYBARua+GOyMOjBVRaQimPO2JLkryz15fV+3II=;
	h=To:Subject:From:Date:From;
	b=CEWVDrLP4aE5fEzL0olg9uGfcSjT56SgBttU+XV6Mlv3S6SMp1tSfn2sGAPB0yPnx
	 wkgVDLLVD4tyoThFIFVl1PZVhqNkZQbQnNFYXcOpQBsCWT86t9gQzLfazexfLkMqE2
	 eEAaqN+hql1PW+wdtP17Bpvj/uue99qcJC8f32A6j7axDwYAKOfOnn7tlnM32cbBlp
	 XbzChinLO9kamQx1RPhBNciS2GrHmNV3icXSRxgGg887PAaEzRqbM659jzuuSw8h0b
	 e5ZtUH02rS9YX9tT0ZH6222oUSLsOkkTHu8to4cVjb7ZA2MTzPPvMFm8deXTBwyuyV
	 Sy4l5AHuTxe5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F2DCFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464577359.7872.5171235060200011251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cfb37c20aecf840809d506c0de6fc712a7fbaa5837916512ab9ea8838ffc56f
Date: Tue, 02 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764645773
