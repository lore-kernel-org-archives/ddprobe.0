Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE2084E14
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722239153; cv=none; b=TBkV5gb1iobGlkLnHrfst46MIWdRyEkQjj71iA3/tczVRseBzNIzv/rtAgZ/NK9kyRYvrzNWA82m+q0UA1DPbDZeBsHmjDwEvdTZJaVm+3tMg8b8IUVIWcJjP4UOlS1Sijbrgztor2eGGYZlO52qbgvUb3lOHX5kWJhLz4rEv/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722239153; c=relaxed/simple;
	bh=vxaiteknOH8psgyIqjhFtlfOtxRCWpxeI6rqAAU1Of0=;
	h=To:Subject:From:Message-Id:Date; b=QggY2Te8AEsrTAsSH40mLKxtvmWbHAUxQyJJBAoq18Q3OrjuOLBfnoLVuPbGpk8ZEjw+zVQaXWIihysikfCaLl0Dup6LaG0FDc0WAdWpZ4iJOCpV2asGdrGHlZD9EMDjzGJj3CynZISTiOaXS3TAu1DYjZj2XtV3jgrsY1sZ+l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9MIFqj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9MIFqj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1407C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722239153;
	bh=vxaiteknOH8psgyIqjhFtlfOtxRCWpxeI6rqAAU1Of0=;
	h=To:Subject:From:Date:From;
	b=h9MIFqj2LBUC9evC4ZSL6mK7zIuamYJdCZxKvkWYXf2fbgM2/dR59FBn0s2m90wov
	 iqxGP1HhvfjpOVnhoT5L+SuMbFYSF5cp917y7ND7C3+IeDNXgkFCpSLInL3KlvNOfF
	 9cuA4G0sylN91YvVHn95aT6OUvFvveE9FFD46zKg6NBC+FxA1rB3ZFtAcqm53KWay9
	 vLmSbqhmKwmJj9cnPISrFnOgUNFxrW5IJ/eJ94x7t7xj7vSEMbhlp4y1V+Eesf6rbL
	 UMTkVo7S1BrueOcDtJ2LtXziVwRmBCRPE+hIY0WjCfboO7rGrS+5KufH+emDudzwvK
	 J2hHF8Zl9f/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91556C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172223915358.27189.9555087110899785039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11070749b998195a99d6ea6c02a6e879603db2fb5430033157dfde0518097bc
Date: Mon, 29 Jul 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722239153
