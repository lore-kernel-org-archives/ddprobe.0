Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2143C19F48D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765350174; cv=none; b=C/886HSuOV1KbFqn4RYFCOCtnBtFWEw5A6gEjG/LpdYJAHubTuAr4Q/Cy61d+VFxoazWflukxpcM2UDVB4hBPd6zv59h1PoQf2v8QHfJ3L7RMmXruf6lzKnkCjMx2rcwwn0CgZ38kajUCBZD71JfZiVq4B8cEs5jr+ZEnew8D30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765350174; c=relaxed/simple;
	bh=Kb8ygaOINIpT8myaGYQvm+2AR7syD4lcp/qvG+yL5Nw=;
	h=To:Subject:From:Message-Id:Date; b=nI9CQNyTiFtSTFvhzABr8zIIBX/HE5r9USY0chAri9zRjFsYkDH7zSPFxPXGcGLyTCxTU36ay15kHr+VMPDhcwaXcmT6b3f5obLBkaAn7oSaCJK7x6cI/R2uSLhVdpYhvh70PJd42M3/FZ4aFtposyEoU8smVX2ZujXw4ANvRVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mg7K9npD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mg7K9npD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1876C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765350173;
	bh=Kb8ygaOINIpT8myaGYQvm+2AR7syD4lcp/qvG+yL5Nw=;
	h=To:Subject:From:Date:From;
	b=Mg7K9npD2RqLEUsIgL1vW+Xk5/8pH4O/TaQoPzuQvLQuQYpVMcdBF3TBa/NX8SWcz
	 x7TGfaxwG/qbyIxswQ3IuECpw842KujncBz/fqcvQ+sN5KKocgUmjydgEM0hSZ7fGP
	 zk5pZk7sWaYu5IV/JTM4HsnuMnMSbJD8EgHZIyanvPgfQ7H7HrQNl+qB12vAUx7pNI
	 HGhEN+IQjE4ZyCcdg+sPyOLYxy933/hF7ghfk69vLnWs3/UL6N42crq5SdxISPXCXo
	 93vVN2dW17ecnGQHAUdlqEyT+tU1Cmx5Yzp+Mezx3jHhDJiGwoWB1Qo8MwO0drbL4S
	 ov6KcMOqp4NWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA5D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535017358.19637.15220185548552466450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252806576bd22ae00ed09460f6b7ae7ea66fbbfcb2d2db85424f1456375e99ad
Date: Wed, 10 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765350173
