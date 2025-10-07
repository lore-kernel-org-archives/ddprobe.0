Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC461E1C22
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759802394; cv=none; b=ZSOI9D+oABndMR/c7lQ1dfse/TF8UOI5MVBARWWe+BDr9OB3vK7qLqd79/v8cJZ0eOQ0zwt266a5AWe6eJ9I9vdWRveC1Tm+kb2hbadfkAPSml9KWIGtPtxCHTMjKRQB6mhb5OxMsJdnhfVyctBCuZmbiwMGqBA9d+yR86JHKSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759802394; c=relaxed/simple;
	bh=mRqCnUev1uzGfGHCyWOZ3DJimpwxZG1AVO07C3Jr930=;
	h=To:Subject:From:Message-Id:Date; b=i6xm1ri14qvIHIEbgFKSkGgU1zZxypuH7+BjBenur1KXKNtsf4zY8+73H+p9dHnu//nyB9EA8f13r8nOd9MdyN3vA8Jfd2rvOnGuiHh7iPFa7w3D7D5MRceH8Qf9NEU5tJp2okHF/qqjOeeiFf6kbOfE9Lp8LCpD7qqbTdT2jJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUdi04Dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUdi04Dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B64C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759802393;
	bh=mRqCnUev1uzGfGHCyWOZ3DJimpwxZG1AVO07C3Jr930=;
	h=To:Subject:From:Date:From;
	b=ZUdi04DqYucFed+Pkl3Ro67bw5iNGGfWMWZ0x/btVRfwgpX3M/fudFrYjuFaMZnxP
	 XtW0LxynxtGLxbm2+9r5ezgfhiHijOKE3cBTaDkqSVMC1AKo+XcoYFvtK3zPSTlIed
	 yuR0iemTv1KMRKDw55ZGknck7MWzhIQuimybOrv0o1Ovv/djETBmcGGdkq3vg/5PkU
	 pJUa93rL+0NgOcP9s3e5toetA14Uoz2dTvSY0Nvg/kuOCYHU9k8vtTqC981OIvciJ4
	 b7m4LkxMtrYAYnrNuQC6fwGzSIclJ0b4qcXlufBkauyv3XR1R/GUWmm/GY7YBpyvkk
	 ZSboIFMJTQ4eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B31CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980239359.27041.17203121886262222487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff98d0c5abcea2ade750c6cd2ca82bef373f9dd91494f4872817ad63de11eaa
Date: Tue, 07 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759802393
