Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1802B1741D4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721895954; cv=none; b=HyutAJDBpc3QNs3vboLMsTUoUNn2O2Fx0ifSr04GR4UOKcOoWE3rC3esuisUCq1KXyEH4R2s7iR57VM/XIQEMZK8XO4NxITCS4XD12jUOwgL8D2eAKf/XVgWaTzE/D4ny5Y44dqRmcTWxKpXhf5q6TbdGNp97bf8YiQLj9mzQPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721895954; c=relaxed/simple;
	bh=gjOmzIRLUSJYstJ3pkqNWNEc7WcZ1CxjIyA4FZgYs+Y=;
	h=To:Subject:From:Message-Id:Date; b=ek9i93+MIphlxjX4I/LNRBJWbKH5XmtK0j7Vjs+h5lLnB0eMSI0lKA6SE0jEI1HEn58IPFPIQD1VgosUyaEfo3UuakYj9MUgpPLlxeuja/ZEsl9gfUtwMFK2TVM2mxwtyEBWnBXc9D9XgonA+9t4lY7mVZVtnA0uR6qAvrDsA9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=se/DJdT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="se/DJdT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA615C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721895953;
	bh=gjOmzIRLUSJYstJ3pkqNWNEc7WcZ1CxjIyA4FZgYs+Y=;
	h=To:Subject:From:Date:From;
	b=se/DJdT/XEBlVU5BC0FaeKVLR2RBTBlQ07Ol0CTqnUk7DOmQCb9BQt0w7vgpB525d
	 gID6hOyfovg7r4zs02iiqfT8YOpOV0SBJHGjLfv/WeP35/XclKZaDRgocZDaFnM7N4
	 RAGAbsEre5EO1BvYHtrLenPPgvSUeca5DeuxAbunOmaRieJP2n2jF5HeIG1ksllyFe
	 NHSxcSc168epyd2Mdb0nDMYGoEV31F5LtKWc5dCS0lJ+Q5UdOdRkqDCO6ofc7nkhed
	 Dv5DxI9K17ktC1tjuO1FMk899YRZuYdMWDe1tpNzCZddV2jItnOb093nn234UD5WQl
	 KT4U8AbdRjOhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9965DC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189595361.929.1775268264195661278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c8e34db8a2be6c8d92495783c678b86c47a8d7fb2feb9723910a6af3b7bb8d
Date: Thu, 25 Jul 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721895953
