Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50953283142
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788204634; cv=none; b=b/pV6HWznzh1tonB2npb+/qsKuveoWLLkFI+ou/njDrFx1N7EblQLNt8qyvcvGMRYVk0wVRGXG2iokMNuxYdaMKSNJKgG+JGC6TVB3AShyZgoT+ng/oM9oevongpLBe5eog3PYcpvdnA14CF5j7/+7RMWJoDQCLHleTqL8Cg5Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788204634; c=relaxed/simple;
	bh=bc4wh6V3cC4GvJMDjUL9IRYkvdOv1oDjakksJXn+73k=;
	h=To:Subject:From:Message-Id:Date; b=sQXo1jMtJMClzMqXZZ8Nu4bYf16OGyTlPVgXH+O/MF9kiSTszw8XVPGPHEdJdus3fw/Pi93hMgk3/KOjDXk/oPSzPW10tqcwFZDVyluPMFQlHd3WvADSgcv3hygBrGcj9JX+w3IXNv6DgCk1pn1xX1S1Eq5tVeifWl2BGJ8xrW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZozAu9Qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZozAu9Qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB780C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788204633;
	bh=bc4wh6V3cC4GvJMDjUL9IRYkvdOv1oDjakksJXn+73k=;
	h=To:Subject:From:Date:From;
	b=ZozAu9Qi5vJmb0vgHabW7jH6g50Yb09B5c0bbPBtw2aBSOHz2axZDqLSeE573IqJO
	 NHrfVw1upxF+GEdwIXUSTej+YpzZ15jhhYbVRA88lSEIiJH9UYokEd6IXhDJSvdaoC
	 Db9QWQUk68p0+b5ljWBf/7K3q2VLV6EqAmXStdkK+8orzAdUsoRslIdhF6x3q0RaTp
	 R5woeYHzJlJsxqKmol37t9s8F3q8WZCMIal8kraSNlHQrz5rfYkCJ7t0eFrpBfnswG
	 4QYXOU6w4mipq7zdWyw5g6dXA2ELdXjYywAbPGT2fLUf/Mc+oDIyRIyKPNx6hPbquD
	 apkmJt5EyEARw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7741C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820463374.7132.14192930262279463979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1b3fd57b9d86bae63f01c278251e09808f0b2496e6531ad3da23a8e9344d50
Date: Mon, 31 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788204633
