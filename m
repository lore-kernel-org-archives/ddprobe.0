Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E441D554
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755175794; cv=none; b=UUw0g8uyzr7+SJCF1qqZO4/ETQPTDqqjXpbqO0xB9p71i4RruGmlOvpOXrD9JyqyavTj5t3trVGl/JM59faI0ad+Mt+XxT/Z11ViXQxwPb2h07aUE192OnALzy0oDYVSlNHeeNvGkLPYDHK8LVCMXB4++PQwC7LC99trG0Xfa24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755175794; c=relaxed/simple;
	bh=MBQ925DbjBCtGCFJv6Z5J7yvgx5pJzTBpqbsL3OnGmw=;
	h=To:Subject:From:Message-Id:Date; b=D8DSAeCdhKO4lsUTdcwI2OrkQZ3CtpE77PodxhIYaQKshBUJSdzZSXDmt2DaChfIBzq3aJEPwa3IGkI+nXCkOW0iu6flhLC9bnaEKIWcVbH8B+yLKjO9GRrgzJt8QeEllwgaHkSItosRkaTsRKRzg2iK7AYmutgCAymzi/fpq3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6/yOeWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6/yOeWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B8C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755175793;
	bh=MBQ925DbjBCtGCFJv6Z5J7yvgx5pJzTBpqbsL3OnGmw=;
	h=To:Subject:From:Date:From;
	b=N6/yOeWsAUVmQBixf0BYjB+hdKW4IOZmf4gbo/TS+ZY5YxROhu538y4bS0P0stIc3
	 VlkKOFfL4obtiSIp24Q5ArvMM99MfJoy+giorHCqcnH2OYIBisT8qdvaech/PQz1Y7
	 7Jgvjbs5DAgmmE0LzBdR86oZGRRuXceUSGyjxCEEIXov9liLe+hU5K5GH+tLkKuAkV
	 5A7JfjPcapNhf0l1yG2hWxK3tEW7POWEmWnXubFBe8KQuEqIlgP5RQPtU2jv7L2Y0v
	 Stje7taKv5IKLWssvETsvbtt0ScnkMNKr7jnf9U0bBAL4b/jImtUTGsNSVQbnka57D
	 xJlF/qkVPVQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949FBCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517579360.4546.467445047476649610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4215f598d8fb9b7390ae720feec9ec1807f60e7101c2e37afaf25dfc139feb32
Date: Thu, 14 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755175793
