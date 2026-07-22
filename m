Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A193125487C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784705914; cv=none; b=XQbXRYXRfmMbQhm90IoBy1l6vWNqH5HfV+MEwBgFc3x9BGX1UY1Mfh2qe+hDnjIzJHtoCOxv1gNnqCAtgk3kYkGeUFUvInA6AZVGxBH7y8dg6owhN2DLeRfYo9jxBIjlSbPspWipLdP72MmMwphvkFDy8mOdQ1tenQJ6IorEtNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784705914; c=relaxed/simple;
	bh=4x0n2jVvAmPExIxfkzpNJ4aTPdaS1Dm71xYVAPsW3+M=;
	h=To:Subject:From:Message-Id:Date; b=Hj8TaUq7eTwiqsgE1PHwYYtu2MSSP2aWOIKuvklgHDgvI8LG4SJBHVCH/8Qyn7ZD+F8DRD3agu/wFJpQ5pfpXRMM05TB06RAueqfhqQpiIRxYN+r+lWF0vmYuoiIVosTUVoL/adEa96hMf/MOydWhtRrtuPkax7Fzb5QaIlQEZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChwGQszN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChwGQszN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26142C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784705914;
	bh=4x0n2jVvAmPExIxfkzpNJ4aTPdaS1Dm71xYVAPsW3+M=;
	h=To:Subject:From:Date:From;
	b=ChwGQszNspityl6ptay+ktfhzJI1zTRqjPw5T3OdHsHceyUo45+zCJrn5tQLxbiiV
	 vSFSiN9jmXFk/ICbLQuEJE/vyEOXMfSslyQN68mxtr6h1BZ8kcd4wHBHjs3TvZ4tMk
	 lybnevt3RI75MiFJO6Bx4oP7EsQk7f79sq537T1FNsVxbmny3ZpOG/7qA6U5RWwHWI
	 jUzgCojFyzE7PPgvm5hJOtgGarVtGBMykVvAbI7Qzr6hsZXmBmxEMqFp4iXPsqIO6N
	 sHadOJcmry8ZNamoQi3EL4eDQ+LS5M9WWIkjUcc70OJJj5azQGosw4A67STlLq7Pys
	 14XYJHTvso0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8797C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470591386.16398.13252146064297739547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b879deb9d51dfea36b794b64e8a2b08117940761b59afdc63174c92fb45a32f
Date: Wed, 22 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784705913
