Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120751E98F3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738247754; cv=none; b=I2psHfork9hyzwo+e+kQ2alPhvc77VIEIXmzz6nIWML105HRnSnWa2Bfem7lEydIM9m25p99b3UXh569Wj2XL8CdLvkvcspgFWu4QAIy8zTb1LnohjiBUJH0Au8QWBGGFui5ijscdmQlyIMtpnuMulhrl6XQM3oIE8bQLWbScHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738247754; c=relaxed/simple;
	bh=PIn/ZF9bpOc4ipL/fNkpsuB8KTwys/puI3Q6UMKM8bc=;
	h=To:Subject:From:Message-Id:Date; b=BxVXxHRYCne/PDlzWWg+qey443Ivk9OqgBzaXCUChwHQiRbQqPF+AOVoJU5A9wPUOxtaLPSFVEjFcZqjPndquEDOwT86GOv9grbNFvRB1fO7ZaGI1WjZweu+Tc9oLZSReUbQW9btUO/2JGnIEuqXGRdVE5N7SS92yQFw1N8P3KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4XEPNTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4XEPNTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04B9C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738247753;
	bh=PIn/ZF9bpOc4ipL/fNkpsuB8KTwys/puI3Q6UMKM8bc=;
	h=To:Subject:From:Date:From;
	b=Q4XEPNTNVDJk7hEHz5jCBLJyZQBar5ovmD1h6eF5bN/OdfIlVOORdhm8F94/rO98j
	 DlqKwWG6S7V+GjzgSYpbc3nGiscS97Due1N00Xex+EeI0WGj/EeMmLdpQWiH3L+UPB
	 YQuT0kou6j7GlBIanbV0sT2N6+lXI615jpqa/wZwoaK8u4rJAMzfTZ+PAFEIt9CjWg
	 ftrzhvpT/l/olbgA01nnkJWJPuisEjuJJzbdM1/pf4pRqZp4MJvvmjPRxtf1Xq96rb
	 UWPdnO6DIUkpVT+YA4yP9SRCQP87YcijA3oMLS+CUcyNcmPOHzud665wgNA3M2lfV4
	 JaqjQAwYtDs7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9884CC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824775361.4163.8315659903639214261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f949735b2b0d989d1363806f414537c58bf175d49457e9e5935580fb623cffb
Date: Thu, 30 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738247753
