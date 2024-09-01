Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A39C3B79C
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725211554; cv=none; b=SoKN3phQxCNFW/zdewEZnVAdxwh/roQcRbQrxPJ/E5lwBQmQgPWtX8F0GTljhuCzThENSgfBIkY7QXpPHmPKWNBiX8OZG7qq17A1oXeZP8DKiO7uC6LxkfFf6QYbPjGunQ1Th6xaqNlqA5H5GEXb33D0QHbSSICN8eWuA8FJ6ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725211554; c=relaxed/simple;
	bh=jYEeLLJ0Xa7ClGJiQTj7tCIcyS/eUWAMpjoPEItNSlc=;
	h=To:Subject:From:Message-Id:Date; b=jhoGXbljgdt2ek4GEAtZvieN4Li7UC97MZ2e4TvgDCoHAPM7dbOd7li4Kz1JK/XnrrMDd5pN1/2YhEKKJkOxSIUvCNANxIv0KsiDlTHcE2ocD2lb8/fqqFcl82fNNHZctjHx2cQF6QcMpAPAjpfeOwhg1sHufgVSaolC2+0i/bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuAr3mQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuAr3mQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13ABC4CEC4
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725211553;
	bh=jYEeLLJ0Xa7ClGJiQTj7tCIcyS/eUWAMpjoPEItNSlc=;
	h=To:Subject:From:Date:From;
	b=DuAr3mQI17900kk4ygT7bmNt4DKbczjZXmL4U+hvZhuiydd2UTg62bE1/LIeX0tVL
	 VJAZr2piee4hiEpkMwr7GSkypLW6lSrmJBrO5jAXZp7xrFeoh5E1i9ImoblffmDnlQ
	 rk5CWd+iiuZzONmbs/7yIEOwpuWHJD61blQnKpLe/Ei6nyoRZNkN3wlr2lDEnQC2BO
	 ilKtor27XSjCKsYtxdrRJL+tXDy+PaBiLiCsWc27EKnyG4ggz3i0tm5cCyDTcEC3XR
	 BojVXRg6WHcqjaD9qQplMKQTpKSZ/c7E9b7bC/x4sRq5H3PqF9U+k7Hmr1yVTOWB0j
	 EcX9E4YtulngA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6EACD3420
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172521155362.3237.10015731069838901619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf3a733e69f06259f6e09fa63cbb0066c8ddb82d78cb7eb4866c9eceac9c36a
Date: Sun, 01 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725211553
