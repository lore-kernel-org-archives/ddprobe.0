Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45106B647
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719797063; cv=none; b=gH0aEp/Uz/RGIVMHVk56nkoguBWO0Jh961m7jKuo4ifHc1J+zHbNz87FecMMg1Wjvbhabn44h+FNDmhXHNrPLFrcwV1bqIwQYH8H4UL7YmU3f65j7j03Cjc77VxZ6BdvNfwUYcrn/DAQAXaMGoL+gbN4oNOqR2FTOAL+2xnu13U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719797063; c=relaxed/simple;
	bh=91QAXzXQWN5hd/4LcVJsgTUU4TMYbCqbTl/J6/ZuVpI=;
	h=To:Subject:From:Message-Id:Date; b=F90WfgGHcbw3U+VcnaME+eMlAwDdT683NdNsG9pEbR23WvBjMIfAr2BgvuYsEwxf0jl+4FK8pzDjeMvlyqlcVg5ROSXB48k74mlO4DX6OJ0hdgoi2s7iCWHGGH/PuUvEjDAtjvfUWtT/fGEkY5ny3Pjy+NpZ7Ff+Xi9q4WMFQWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uosGuTJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uosGuTJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE456C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719797062;
	bh=91QAXzXQWN5hd/4LcVJsgTUU4TMYbCqbTl/J6/ZuVpI=;
	h=To:Subject:From:Date:From;
	b=uosGuTJqR7m2Es9cApv/hucZaBazh244cO2/EIm1RNHRhdOgI6zce8DH0H8UMgVXU
	 6Gzd5tqqcD88lmNG33DWCXRu9neoepZNGqKQOiUu96Wfy2KdmCvMl4IEWxRtj2tdtE
	 2kpSs+fHiAtm4DXCLwAKKk+UvhOyHIkLgl694L2PC4sMAV8wKchfl/Fj+mI/nYvBda
	 BLfAxikOYuiG+8lP1W40LNwNdKlq3bIDuuwqlJX5B7d84AdHrvYyEL4yervoBAccfK
	 PnuvG5ulfsL7nD1PLLAMwAnMiYLra8GRRE+pluqcEP2jzblt0XJqrUQeBdcqNrBsg2
	 n9NWR7rVG3nXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC9CC30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979706276.19964.2515958360955665544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2dff24441ab35c731e6a189baacef1fdf3d06740308499583408d47adcb6828
Date: Mon, 01 Jul 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719797062
