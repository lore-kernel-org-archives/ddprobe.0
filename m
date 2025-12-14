Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E81E165F1A
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765694574; cv=none; b=GJCtzmzs/B0uVy4FM0a6k3mSDeZyspWzXdAZUbtYETcOFNK8u466+dhp5EkWfaPyAEL9bn19OATMCdEbW5l3qcsIHIr3A2v/1jRHas3YAyPfoibDzCQwPr0FRfMLbB/pgpENxHC0I8tDOXr50MxQ7yCEyFgzaW6sz2exotvftIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765694574; c=relaxed/simple;
	bh=DTQguvoz4OxJ6c2jadub9/UwceU6krKleesRDL8z47Y=;
	h=To:Subject:From:Message-Id:Date; b=DKQVmq8e/5mkPsLO3uEL5Y/HHJPCcw8waFRx1wrisxCTWDA/fCeAhA3T682N7qnaG0pPuvQHAIZD6iGY0wpDCpc32OjwZ/f54SDpn7TIEvlHLwg5ckkmczCDIuS8foyqCXNaG3H9WYlbgG/FRXqyng4jXfCFn4c23RjyRnVhklM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOwfY0U3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOwfY0U3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AB1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765694573;
	bh=DTQguvoz4OxJ6c2jadub9/UwceU6krKleesRDL8z47Y=;
	h=To:Subject:From:Date:From;
	b=eOwfY0U3hXkZxaDXZfX4H3uVL3m9xMrizSwd6PhHKuwin+0K/Qa8VLs+JhJnsMMZo
	 D4VmJdNMfEA1SQ8TRdjksiSmNgut+izeiyFLqTei21R8HLdkb4y65y4g9ceS3fjOS5
	 JVSdWhSzoppW7yaYqH7HKsVsAzVsLZcdR7p3WxnmT5CK0fFYmJkB3y7F+JYN5TCV4z
	 3Tlsyt/R2k4FnhseoA8HUYvnahkCysahddyjKxn6cKKp1ujgByek4buleHLKRHOCgm
	 Wy9Sarr9A54cNBOa7C5osnG1UXCVZEepOhMaAMW3pDF9uZfGTZqnxH/v79SQb9xpEt
	 go9jm10J4CTzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922EDD3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569457357.23060.5146314709032703794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941e34d17787efd9d03ee00a5701523b10a67b5fb5866569234dd3507a437c90
Date: Sun, 14 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765694573
