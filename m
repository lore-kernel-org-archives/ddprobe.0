Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231D93563EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027234; cv=none; b=syVRy7Intp/uQ/fVrHZdedpA6Xv0cLBd1DLajG9YG5lvmynm+kZPB8lVkU4DCn8o3JNweM7LdCpMDkKBC6kw+CIp7ISH3OkQRzRCslIg1etbbso8JMYpTllidxE49VEMOloNLEmCr3/FYNF6DkTdAL2yO12XAclWurVNkU5h+V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027234; c=relaxed/simple;
	bh=/J2Sb0Bb2cQUy/Ct3Qvj22aU82GwT5KjEqPV8wbr77U=;
	h=To:Subject:From:Message-Id:Date; b=SS3Pq94OuLQIGNiTaBpw3lRqq3IA4v8LoSiJimX/X97+pp5C7dgrFOB1CeI/s8DBbIbso1+FlFuBcVdF0JA1FS/RT3GSiqkwFJOzYqwsx+H6hVFgqCgtaPrTw9tGpKiZYBbv0Vuq8Rn/QaNFgOG51iscoBBP5PW6lBebTArH22g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp4Zwii0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp4Zwii0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6981C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770027233;
	bh=/J2Sb0Bb2cQUy/Ct3Qvj22aU82GwT5KjEqPV8wbr77U=;
	h=To:Subject:From:Date:From;
	b=fp4Zwii05+b4ioycGVxE4VQJ/Q6D2VZlq1VeQcUdX3AcDBhd776taI1BjxnlRLJ75
	 tiYxdQ/+BVfB3tKpAcA5qPX2NQ6vuyJqqov+trsUI+4FMtOPnLjwuCHN4LMa71vBL+
	 Da5ZHywSx3AhyfS/W4WH+PbtfmRRAajGLdV8LdDVhS0C8M5X87+9T+/7m56/mh4VSX
	 vIBTsoMFlDxrsBoInNzuC2K3e2ovJY73BFDjKvZtyqZ6Nb1hhhs1knwKjvIyipwHtl
	 sa1mirV4dGuq0phLUYCESp3E1CfQ6tODjAh8nTFl3GKpsUc1VlnpqrqIz943+hZR9+
	 MPdBYfw9I3OVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E12E7314A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002723361.28767.6993031103738748873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d654f531d3b2e397db848c418e6d6a5a44a53935715679f5048cf159182b018
Date: Mon, 02 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770027233
