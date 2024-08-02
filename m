Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B31ABEB4
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722636954; cv=none; b=FQV5FFo4de7wWrH8qrwCvPTY2O/ZS6SehlTPsZBvQyKatuq3NvVg7qKJnt24533S+B5gyCCMPB7eAJSeTlTZygo8NPak/KblIo5VQE0e1IkEBEt3KsTheXhw/6TWxVCKU68+kObMitv91UbNoljDvYl1ZbsrFiJCHKlRfM5z5ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722636954; c=relaxed/simple;
	bh=XaXHxUzaD33LeAg1PdlkyZe/s57RpSvxMQAgiqFHZKo=;
	h=To:Subject:From:Message-Id:Date; b=L6T28OtFm1RK0QB8fkMQE6CM4yWcSXk4yOquS3WITCS5yvQ5WtvIBBVCKGk+/a1h8jBRW/PuqA8z9u7/P4u+0s4O6+ka5HN+5O2gu3V2a/n3ObfZotCptV4mnlCUH5A6fOAaMHX811ltvIGibm/+8z7KKjV0lrEElMiwJzHZKfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDppcnTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDppcnTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA68C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722636953;
	bh=XaXHxUzaD33LeAg1PdlkyZe/s57RpSvxMQAgiqFHZKo=;
	h=To:Subject:From:Date:From;
	b=HDppcnTF6mabty9FdxtN/kR04Sx8BbuubG/PyJdnd3OgBLhLaDhvzrKaOtWUpn93O
	 AAZC46GIAT5/MmTeUrs2DqNv2Zge52TdRTDDL1GcyRqx6X5vGbk/n/TM8IB2wPh2N4
	 xTb2JGVava3Nfrep7PwpNJae6wwKwRXkls2gIRoxOnhKdCusQbfRxxs9UK8Fq+8D2v
	 C5QC+0sufQbm0naZUf6qemAKk0EOA0w7SkL21Qko5hJBiXvAPMFTkxkeJzqYpztrSW
	 ksMwkDihSr/lHLsahNNtB56LfRjHYjt0TRtuyLbmj2BcPykvk85pM+e128/8186u+w
	 cmhB8w0VBSPVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D7FC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263695362.4463.4663441449841132527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cd53f9f3b2d9a06d6e828427b9c373bd48c729ea66bd43f90845c54fee1372
Date: Fri, 02 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722636953
