Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C0A24290D
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766132634; cv=none; b=RguSb9yf9NuQk83qO6RysjA9q/e2soRHBeSGeg7Znf0cqsojNJACS+OuShom6N1b9neLt/miJfqnz9WEmDfOe4Y//FHEepK7M25Dn+vuV9yf3bFn/OIZ2bmu65YdxuxRahyEU1CTdgRRrv9buMYjsme1y8UUhP9mz905vj+RDB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766132634; c=relaxed/simple;
	bh=ju8iDTbnpBvgkyEqTwQX6fGflNKfdhtNEBzMBJhLjEM=;
	h=To:Subject:From:Message-Id:Date; b=cpwuhFUd9km0tUjul7C7vS4pe+WpAMJKWLLY2hkMJu0Wrkfre62q1ij7ASmY4hwGaT9No9xMEy2qrpg5vQCGvcrcwZ2St2LFDoq57u3sYJKP2+kBI6QoKP/TOONJdB1PEIyUVXlF0xvVhLKr62svyPBMTX/nYyNnB+z0BOHKL/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3kz6Tcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3kz6Tcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A060DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766132633;
	bh=ju8iDTbnpBvgkyEqTwQX6fGflNKfdhtNEBzMBJhLjEM=;
	h=To:Subject:From:Date:From;
	b=Q3kz6TcvPWgaFpeNK3wXcdeIOzbacJWE/EK6TpdB4cb5qm/fKoWwH7tqpachFtCa3
	 5ZOaJq+goy8u5Wb8vXVT9i59C44aI6zn49cDl1GpFC+7mE9RLxiPsQ2bLmk1YPsddA
	 whVfDiwniEpO7tPCKEhMBhO97t2/Sc60NP/smsvKUmZptBGY8jcJeVDtVJjbi8KYZK
	 bvuIlyPlun90m3+oLp3bALxcVulUGjh6Snz2ZkXxCVvRi+B5evO4Hy62ihrkU6IY+5
	 HUFVuWqpa8p4IhiQYtpRcARDGOvFy1AwP+V70QBgRXNCK2He7WX+V59rJLTbb4+902
	 /kdkZMAOp4RDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE91D711D6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613263357.20471.16727003624910460351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877461015affb632baacf9c58da92f697ca0e7eac2bd173535065bb9187731c2
Date: Fri, 19 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766132633
