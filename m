Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C333624C9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786497034; cv=none; b=GgZ2La71+rIHFGwkikzeXpBP/jlmqP6veoL/udpqslVUE32+BIKrWBlcvV6cFVk2FHqg3qcX7pKUTyIfDdMMxDEf+4P8kCuVHE6/ceqYh7TCRzurBbzdjGmVkw3yZ9Z/lrhZkvvEvFk2r37Cw5RlCHHo5Hrcs6nXJXb9xsVnAbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786497034; c=relaxed/simple;
	bh=rn+xwX46wfk2R0neBtAagsOlwOchV1kalp/Atlnb9lw=;
	h=To:Subject:From:Message-Id:Date; b=goE96fQKCxzvAh2Fwm2juJB+Zp9GegNxhQMV7da43u0LtWBDmnc2Qj1ofq4pU3l19FaydG2oOQfaKnXcD85G+dztC9MIjP69E6yYxK6cx0cIiVpcbVxb6Y2zYPNT9AF3qtoq61tf5q7eBhrcFNGDAJOBZL1J+7fhPq/MQDxjUxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0l0yQYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0l0yQYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC68C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786497033;
	bh=rn+xwX46wfk2R0neBtAagsOlwOchV1kalp/Atlnb9lw=;
	h=To:Subject:From:Date:From;
	b=a0l0yQYyo/oTPsLm8K5zW7vrQAdT/QVaFxbXhtuNFsaRt3WOrKLnlobUt6hRbmRJW
	 kz7BfN0QkyrH2o549MhZ4zTetCC+4jxLa89AEh822CcSZ8YoRTfhK1p5JofHdG/b8A
	 eCiRZ7X27bezZAZMmImdI+ImhQlsS5x2FDh153BR3T/iW2BpiZbqnF9/vpZLWJxqsg
	 W1/VEHr/d7gjzNKOxpcRgDitU8hfK0SKqNb1ks0I8tZM6eQRpqTpb2uG5+aw2ylY3y
	 izYvNEaVn1p5UH9aRGzhORnduaDY+vTPK0UmODIMYpu4VjNE9FnySNEf49SUd/xx4G
	 PBXgDbB0x6cWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A884FC5CFCF
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649703368.13947.7497165281493646152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be359c2708fa2f93aa2fc27cfffd158454f33c8ea3459a739192d9b80bd51c28
Date: Wed, 12 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786497033
