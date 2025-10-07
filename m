Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1972C1DFE12
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759819194; cv=none; b=WJLoDOQC2ffYSHYBVbqBDEMJryxWKql0sWHrwDvQdrWt89N+CoIKxycGK7W/3WrLEDIlaKWGi/UnjtQSs23xj/mXu2dfi8zzuLH6iNb++SKOPvhGsrecz9aRCajbi1c0bU45ezwcegvBwwVy4B5JrGc6hHbGSTQdrLER8cDAoOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759819194; c=relaxed/simple;
	bh=tWQTFZpzU+6l7AAf6SAeRCsX+tDGrdi1gAaaH1z1+us=;
	h=To:Subject:From:Message-Id:Date; b=meyQVPhgPT3xixbPF9FQJ+qHPp3FZRbdaIRkAtBk5TisqhvDVBN8G1dR1lUCsdmBeQRafis2IZ/09X2IHcrBT38oj88NsCoslAunZrtK8wX3vFF4F148sM+m2/JdOPpfI9HYEdCu1hyvR4Ld5g9SaA6X0sgoEEs3HsY5ecEnNAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxuloC/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxuloC/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759819193;
	bh=tWQTFZpzU+6l7AAf6SAeRCsX+tDGrdi1gAaaH1z1+us=;
	h=To:Subject:From:Date:From;
	b=KxuloC/9/1/b8w0k5d2bkFkfGe+l/IHz6qFRnUrr9kFIPJfN9LWIZLPmXMXJm6fYa
	 wrftAmckueF84juKFhFnJHLE5HTQG8osRZ3wiFPd7Pf8ruOOp3z+xMBM6D9/2IvJcz
	 aBxw+S5VI1iSrQzaUir7ZE9mxp3LCEX5IAodqXn5DpY/zGKq45/OUhjCQHF0BQLDy+
	 LCZUa6GCMeu+fg2zi92tOZIFC+nsIGci1T/pm/6pfBAt86U6X4//o1dYOYptIJZTUp
	 KwExcoQexPyU2yNPHQTITxmX7gZxxl4msC0w3RnOF8hEpI8t/48GE9AVNlVXcwuiHn
	 8MefOlXpEWQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF32CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981919357.23941.13002250895989765109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294aa199ed2b604ed0c4a106a439ba686262201029244c41d3400ab41b1e2815
Date: Tue, 07 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759819193
