Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5954413DDBA
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718314703; cv=none; b=OHheAL13LqvgX1bnLtn68Bh20WiKhwwuw6cGJZjgvKggRunSD+sd+eJ/8RGSBHmwQCZ9igVCd7Qw5WBTOme+kNYFGwRU3NcjLQD596VFCxQ4pGH1/FSpzQ3RSMmr0/FQq4ey+c6qveK7t7UmUl4v1H0vMqmHrOnOEtjRzpfv0BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718314703; c=relaxed/simple;
	bh=VedWX7Y0gMozIdY5R2Mre1BZN0S0iEqfP1VPFZvJA10=;
	h=To:Subject:From:Message-Id:Date; b=mfEGyaSBYhgQZOTdopkIoM0nA/V+BN/5p4S6CNvoLfUd1uzH0TYtzXNHi19JpLggHIib1ReVkjn5JViyi/c3tEG7tQm79/8G73rzv4GEPw9MUOvxmxy1ZZ8r5cr4UdoYtH+fDbdsIozuf2jp+4AhBU0R7JWuw5U3qhPK85+2IaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVSTJPqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVSTJPqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE06C32789
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718314702;
	bh=VedWX7Y0gMozIdY5R2Mre1BZN0S0iEqfP1VPFZvJA10=;
	h=To:Subject:From:Date:From;
	b=JVSTJPqi+2SXrs8xKNLJjTNzGEMLyKNCkAJRLyn018U5J68Dn1qrh5JiHNaU2QsfZ
	 MQ9oQfmOsJAty/gXlmLW2BnVM+ymRYFAeQMb4Z24HPGJdhfWWOk61ZKv1te/HAq/5C
	 ZP17qzMRJJRjJIqgevI+C2K/U3YqYCXOxyZuWRXFgcoAjCOFU5wIKe1YOlD2U7A86L
	 Q86/ZpN5OAscX1FittXOQXKKkiIiCZJbJigMHdvVXdyMSsbiegREi6x4pXo7fwUsSk
	 3jX21YcmCyGuX2ih30xsGDMZ/l5hgG7B5iaGtRcqVAbbzbAFGMEiFYhwFYfB4PgbDl
	 euM+x8CM53fRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA5D3C27C79
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831470281.32680.15981506185929894537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e082a141d2b8934c095632f066084080ad686c717830a01aad8edf6b3d1df077
Date: Thu, 13 Jun 2024 21:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718314702
