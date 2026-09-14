Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B452D8376
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789354234; cv=none; b=MTn6i3WFF92LLEvAXs52uMoY7eZeQ0A1Zk70/mqZyveQk0x71K0jYe+rJW46W1vvCSKPZwwgD+SRd6KUn5kovvmaRiRRHaQKKBODtU4S+DMW2pvxlRqhtRYoNFOgODWi1Mt5yX/r5/BrqmSI2VLX3MsJ6So8317FqX4WweVeqWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789354234; c=relaxed/simple;
	bh=AKqTo7ZXGq8Gno7n/vhqAHphnCSsyvTKfkMduL/MLcw=;
	h=To:Subject:From:Message-Id:Date; b=OSUMF5jOWhddkhjjMaIgvcWrm/7ZASU1OxPrQOQUreRu8PgmIRl1mSYaRzgOTB4L0hv1Ij7VMG2Kpm5h2P7FNtMwi7YV8n8ubMrbjVlDGyyTsuAnA5v3XbJSCT0bUYEM0jbAscFtKI8Sw3H5EN8hDc/1OoAidiEZuPZ/nbcMvWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3v2lPAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3v2lPAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D6FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789354233;
	bh=AKqTo7ZXGq8Gno7n/vhqAHphnCSsyvTKfkMduL/MLcw=;
	h=To:Subject:From:Date:From;
	b=J3v2lPAFPPJZb+r/UTIR+QmjL+s3UpGblfPl/TEzayWMWLwJbmYp6mWICO89EUFPI
	 URYB2VSq5j4wfekgj6yLkWilbgxI4vRzR0R11UOyHIQUcbJOEj99uW5YS3yuWJd+6N
	 3FPrnoP8Iem0AR3Kh79IGIOL19yAm2XFAUrNem6/F3YAl8Oc4wSn/macDzvAuxAvIo
	 m+Cbx+jjpLg2D0Qjh5KwK+5qy/dHFRBptg6D3+KwxecEiR3RkOsADtPo8KlB8UW8/g
	 JYlhsiI774JLLZq9m/XOMLZRukf93PFiHS0Wk3qa0pwRa2zd4SD5NreTTeCFULJtAS
	 +mixz9R6HoMJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF786C88E5C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935423368.20991.5905298722660685938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe63d6dac41e691959a3e35f9c528d1fc55ed30b7b7c7990bd614c20e7093b1
Date: Mon, 14 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789354233
