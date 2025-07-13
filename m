Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E01DED5F
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752394194; cv=none; b=AX9P+Y0FhknRFsArabRc/3+3Ym1g2qsZ6HWSEwfRtwL5FK5owWUPN1AVafB5gsCLMfa6oQZ4B2s33c36+AKat4VOU+AIJxekPhFDAW22Td+V8Jn+/8hG9QF9ldlYpvrVK7vVHK45nyhViYqk/gSu+eYEd/PLXSlhjRI+eM36H4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752394194; c=relaxed/simple;
	bh=5EShv4ZITIHffvc6V6aMdmZRYIX/d2vmOufaa0CbYqE=;
	h=To:Subject:From:Message-Id:Date; b=c/T578jYYc4c5ruA9yY+d7f4/MKYLE95G9WGL/QNcdUz4pAFWxy0m6v2y/O2ioH8irQg0edfxYRQS0GAh7vemFzsu+jhLi3CVOVO5F5gcy2NwuPYeiWnqfpKp/4r6H5GcPjNdLVN4/tMYLir66saLTS7jxhmqTXWGbjz8cYzLrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPJkr2ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPJkr2ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A201DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752394193;
	bh=5EShv4ZITIHffvc6V6aMdmZRYIX/d2vmOufaa0CbYqE=;
	h=To:Subject:From:Date:From;
	b=ZPJkr2ZJzhPUoBShMD3YolBVJx0tXAwwBF4xYgK2kn9/zDzd0FzdUP5pHh/Oulb+I
	 r1TbxwXPzMGj4hMcrysQ57yDeCbo89JdQ2NZrRus1tlWfUrhMk5P2BsVZ3fRzL1ZI/
	 OPZ1oCdY4+bkUZsV2g3obq5G/1rmUVsv1pYtdNaQA97BunoONHL/S/bYn+/XC3fd1W
	 8+MdX6Ac7FX4mnmLTCrV3AnVx1IluJ8t1C2DO3MlVYGFNT1hrrIz+NMA5VNTDe8CXW
	 sjjQtqmd0TVBmJwYHe9UgHBeCae4YJBHR+ercQI7kwMQUDK4hei8hFJw3Ys7LMQM5Y
	 gx7qubaPQxwjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F840C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239419358.9478.17450691176247063791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43eef1907902cc53da31aa1ebd593ed196dcba5b437475d556a01f04434f4d86
Date: Sun, 13 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752394193
