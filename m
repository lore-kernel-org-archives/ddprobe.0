Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D421E1E5B71
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750714193; cv=none; b=YYQcn0MWIl5j70sIgGyrqkHHZqFFc+sPeZ8T4k8sYGKgGEd46n38bVpW5tBXjIA7Eij3fvRfyS5tejHcwEW2UoiByMGK1ExvzHJpo7x0DmU6DduqSEhFUNwwEDwBTodxb6t7tuewKELtFVl8RgeWBW8S06hYQW/Srzv7MxTjKAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750714193; c=relaxed/simple;
	bh=MsjPgDrN7P9DNsZNfQudh0LGXvRR3fffk1hoVy//OeI=;
	h=To:Subject:From:Message-Id:Date; b=lzwkfz6LMoNgo+NnnRay0qnxKoapsSgVeYex0cxKVH/2qcK44NZolJUslExSgfCOdiVCUojJbWAXPE9DTxMZr1elJ8TZ56lWsldMEkkMiVd4heiFd7EPsNpHjPwaaaGwk0OVdvv26xJ6I8gXnsPAg9bB8O9erJc2+NS4D+Aj8No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJd+QX76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJd+QX76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0320C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750714193;
	bh=MsjPgDrN7P9DNsZNfQudh0LGXvRR3fffk1hoVy//OeI=;
	h=To:Subject:From:Date:From;
	b=DJd+QX76X5Gu3cD578MBZygy5KKHh0ICd1n6ZU0PUSYM3CHQh1v2xyoAEqfVP5jyI
	 mQOcokMV3OMXxKaI2l2bOCaQM709MM0qOGRbFpxB1xSAAwtOwPFKvTuWEuIb3z92qZ
	 Jk2w21ORi+ASg82fSA6eQQymKurvpBsUQsAMtIjWD+YjQbemNalWu9rlUY4N1FDQu1
	 Eq3xgVDtvq57ZvzIj+qd/JRlkgn3PBij7xBOllaH78L8ZPRSUtNbL8fHhf+v/1M0SY
	 xyckuzOAo1iSjcw/FyHtMvvYONuij30AtSCBfJE+S3N3ecmXfjBzWvvvpJ0i3InUWG
	 Sfqnpyshykh3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90064C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071419358.11585.1276074772603468854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0252bb88734413e6a00e089e350fc36804789937a1f0e5ccd234fa5fdab82174
Date: Mon, 23 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750714193
