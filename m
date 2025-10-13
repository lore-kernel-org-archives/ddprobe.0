Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A162211F
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760397594; cv=none; b=Fdi3WbTwFurLxxfXYrOhJQJmVSigmgJiPqTuOkVMYobxeMNmH+4JjKHoNt18X4AXIF/ES/IPNBgW/x/jOyvVKdnScvHWbiz9PFR3XurjNGRepi7yqi3kcnsfo0S5+sJFOpcVGyHYVL2vpR6XzxHq8r68/qOUlmyc2oZsiPiE8vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760397594; c=relaxed/simple;
	bh=YdXkQt1Mqo4xdp7guX7G2B/MInp0Jo1FEJVSYUMkjM0=;
	h=To:Subject:From:Message-Id:Date; b=kyYoiFoDOdQO6n2GuSbVPHDiknpwOvg/5cf1GHG+5yV+BdQ5GwjA+SKAd32qHRQae+VDIKqaqt5pFZXiD1fVjCuYC+oxRo9De7dUI8/RvevSY6dnXQwX5EW+YQx/ZegnJzfXx0thFRPr+oQs0dbmCvfFWXKncK8m+LcYTamYdKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9iRN1t9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9iRN1t9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC32C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760397593;
	bh=YdXkQt1Mqo4xdp7guX7G2B/MInp0Jo1FEJVSYUMkjM0=;
	h=To:Subject:From:Date:From;
	b=n9iRN1t9GijBLxKLTjOGSLv2yMhbXyC3Gj5qK/5qKOhMy7qGzf9X1vjIE9OrPR6kh
	 5kJPqLVVf5pmyAlY9fvpKM74Jd/AukJuu68+iVK3pN8vM30e/0H8vVWOdpapvaXjhD
	 xOOsc9BVQzWT2dGFLiTqND4BxlpvW24FQw6/6dQjlFUpYFUoik673/lewP7PbiE9Ax
	 Yf3AZ6GUWRhV3DaZV1f4wZeNodnEb362etUEL/pKck/X9J3kaxhq6GZiOU9u57mPjU
	 Pi9R0E1YD0XjzSxy0GyCYd9S3Tgtwh7hWIdQHqrPVL5+pJ9YM/4aAWgvCqqH/TECx1
	 42egCh9rZoHlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ED1CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039759361.30838.619967306773143100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30ac9c3327e4c138e0d4aa6206cc9e90bc0468f92cd261f289dacc8e437d9ba
Date: Mon, 13 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760397593
