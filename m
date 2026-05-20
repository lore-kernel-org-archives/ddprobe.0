Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B2363B9DA6
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779268234; cv=none; b=Py9BC7w/XiFKvAshdoNGAffHe/cPk1uf5rSfASPWcEZSUZwBJ0JxmHGqKdnXhM+x+/g2pMYGoOTBhzCZghhYL7U+fdVEnE/boZGrathBUA9sXbKy2r5POecg2iMY95RWz/8FgzU2z5TtZhprLiKLiL0vh+jjOxOrQE+8qpuP8iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779268234; c=relaxed/simple;
	bh=7IgT8eMxWAJlejZpYv86s1U76a/cTOcgwnOAseJg7j8=;
	h=To:Subject:From:Message-Id:Date; b=Rkpe2KM8JywMWm0N2+02aFpGwyQpsEU8+u2EfR5vyhI/wmVL4ZJkyWUTTOtFW+iFl9+ntOLyU1gs6VW6ZdvBEYj+jLVN9PwMdLcJKw/TVFq8UWFOVx76ahorMxRkl8/6NOSRD38szbOp+vzbupmLG688wj7VkZDTLSAwg4shOUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFKHFYyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFKHFYyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD60C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779268233;
	bh=7IgT8eMxWAJlejZpYv86s1U76a/cTOcgwnOAseJg7j8=;
	h=To:Subject:From:Date:From;
	b=tFKHFYylcnmhRBlPK9QXhfS+v6YZeNahgHZtjQKxhP9OLah/9PIICW+xXLc/cvGOV
	 gSS3ndvXv8fe3cNRIUk4cX51PQBXbfz61/91ZKbVNlLaYAQWjdVzJATc8YJJkILN3+
	 uS051K9rfnLTy8W8q7FTyLfZPSMLNsDyn5CAmNscj9+J1CzqY4TT6QleE5ozXsy4pB
	 yf0gYGT1MO/Vm250IkkGdyl3d9Qtxl/4/zUovF68FmX+8jddlp2X8/ka3LgbuExJAZ
	 k0Y61/QcrinkJR2j8DeGErwKphp14X2dheKnu5LmRiWTCR903qTZ0e07meu+Xgt64j
	 v174mVwcrLirQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB51CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926823368.14668.10176992041447815298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecbb62afa812d41e70c0a5a84ad36ba06f2eb46a6f87e03255d2115ed801971
Date: Wed, 20 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779268233
