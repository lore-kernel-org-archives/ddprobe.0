Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D7A221F00
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763678514; cv=none; b=sOGPbrlZjBWLv7YyFIaGBHcX+0zvbvFvSPjGa4z20Lya0Wy4Cvc7+ymhwXRaPXxAqahRIzQgPHu/J2z60UqeqYsIKOF15TEvhoAEDdZrp4xt1F9xh6elpGGe2i0hXi2v3dvraSVPEIrwkTtTbs2fKLnBmUy8jZHyFlqeuf40+rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763678514; c=relaxed/simple;
	bh=Sr1b5Pt06H08BB5gyg9MeJcvCr4VLXntgsOFMIYTkCI=;
	h=To:Subject:From:Message-Id:Date; b=BWAeGhGjoU85ad1LUwMjh8MA9w91EDrAHeRMjG7DS++VjKIqBLa/6IwiZEqmPN7roBKqFwg3rzlPQm2E0AXjtu7n0RLJ9otp6/RIMrkintT5b6fjatXDPJWB0fuNzsBV/HHrZQhNteTC1M8cfmEiGiauiJQhtvj8FMWu36ssmpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxQVxaaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxQVxaaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43C6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763678513;
	bh=Sr1b5Pt06H08BB5gyg9MeJcvCr4VLXntgsOFMIYTkCI=;
	h=To:Subject:From:Date:From;
	b=sxQVxaaCHWbRdpmhiCiqbFKrWbC5oOoM9b9XOTEDG8uQd3JyQJg9cTtBYysSlApCF
	 7sAmVRnLfXLOcYT3yaWYcxFEhsEFJ34RLG1SAyxmPahtmmWhNsEJahTTfd1JVs1v1c
	 9FDwgQayYrFHw+7lvTaJlNajLhZsmRwncj1AZdvJSfC/l6+tMnCklbgCYKGgqRNwxj
	 BASZewbsWNpTiFsnQgsRHPx+jit1xIgFNgKds4LVlH2kbA2kp0MXhgLiT/XXvo5L74
	 j7pI6ppgyZ0WqDsdu8UAkt6LQICHRmEweJ/rwtqeT/Q6Z1jh0PKqfmc3Q1A5d7rYu/
	 Z9hZvGW/jy1Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B9FCFA44D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367851360.12838.12018742291968613001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c2b7b6f95218faf0e1c5104dfaae9be427d21c0e6eeb2a36b9053c7c98cb00
Date: Thu, 20 Nov 2025 22:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763678513
