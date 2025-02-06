Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36119C546
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738869954; cv=none; b=c5PDDlaEIfhxCgFl28QR5AsObcr4NAobi27wQcpBqlhcrWJyu/IJQDxtY2EqFartnMx0Vn3yD4whD+auPG7rVFU0AG1TsdjNRhd12WiXwqWMpF5fWQJJnrn0j40xPQS0cc2QCz8pGjyOlEgZ+6pUEjZtuGiEmb1yySpH4F0xhPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738869954; c=relaxed/simple;
	bh=EOegi68f35PzAqAbpfwmJX51m+txyVRD4eXV96TAEL4=;
	h=To:Subject:From:Message-Id:Date; b=PJNn22TELQQsiTxp1iAfneO2Riq4LuxVrjA0m96TuJCMPaABB/5h0R2UyhTr+2FNJJTLIXXFy7oeiJDblw+x2hlnDHwhdqsqS9Be4cif8a9ZOROuR6PeqjtEmUnRoyRFQTHtCar5FXJwvrahY9032KAoLJnUvmEaYgA9/sdYdb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLZ1hlhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLZ1hlhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C7EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738869953;
	bh=EOegi68f35PzAqAbpfwmJX51m+txyVRD4eXV96TAEL4=;
	h=To:Subject:From:Date:From;
	b=XLZ1hlhZi6AH7uURTHGgJC2uU9HKNu46uYv7Dm/y+eYGPGLInJfxQXXoFlXfHYK3A
	 /xPr9NK7PDJIqV8/tX+AO8TqnsQCaXHHKcs8cZglhFf7GTPB/Kmb2YE7m22TDXhNS9
	 RXCxAeimkI3PeBgHUncLTEw+NP2QrL7jS8OCPqzOZVEGBes6Dmb22xH9WAj4bkB+lJ
	 j1cW1+U2yxaokH90pG+XnpFu3U3O9Tt82vtlYp9FN07FVjmWIb+q1fFnWnu0Z8+f4o
	 X6CMcitJZi1l+S6Rs6lE34pKsho/YhF2bv2YkE0V1aVqQ32g7s257duO5JNcL9ar+q
	 1bpzv1AOczEgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9994EC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886995362.28690.16439903266730200988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3b3a7992387bbb83fd49bb0170153071fede26ca8a11ca261bbdba15995cec
Date: Thu, 06 Feb 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738869953
