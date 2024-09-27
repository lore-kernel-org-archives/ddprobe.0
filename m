Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E864B5C1
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727415954; cv=none; b=lAteY8WNSciztRD0Jte+Kdh13t4ggp5Q2/hk5i4wJ/xxmcAyM8ro3G4T9k8D5j1GrGL9mhihEN0/IkLcfT+bYYbG5iz/As22WLDgkStefRkcet8FJiCiqRH41NY1ZB/VD/7bC/VWda0ybxMGbxafd488OsxbydJtsN9z0Q93n3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727415954; c=relaxed/simple;
	bh=tNrBztWBT8eIpPnoYXdyyaGdt469f+Z+NCa6lR2nD3A=;
	h=To:Subject:From:Message-Id:Date; b=EK44iekNOQsvlKn0C5jk7KGfM94iZmol94vgoT4TlPTlH1Brmy5zJPAcYDE1MdgTsCIZTs0Q2G7mvxy67B6coy192x5cR/t5LvcaIpQgHAWQCZ2CypG+q3Ykyhfq6+PuqPK0Xy4psc4Guz4cw5Kgq9djLzkjYgP0L7e3qQMTovQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaBN4vfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaBN4vfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB19EC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727415953;
	bh=tNrBztWBT8eIpPnoYXdyyaGdt469f+Z+NCa6lR2nD3A=;
	h=To:Subject:From:Date:From;
	b=BaBN4vfl09Ee+27Z+iOGatWqbNghC3XnPz7wf9I1AzusfZzO4Jjo5mAp1cfQv1Qx4
	 joaTa5Pc5ARtPCejgjW6wk6WkIu1FyogDVqRcCXvPydwreBOlfC9JeGgFgRsQqgErQ
	 tKfHRysZ1PnfSr1vdMZVCKgt41q8T0nShMBWGG1KV3/zsPrE+kNvngDLKqhe36SzHF
	 oRFDEVpUfchyRTpsyGL6v6VDvLN39QevG4Y6qaz4XlOHQkE/awLZQI3DM8hDJUj/23
	 6FYnv4W9QxJ5kbaw8M+r9IpkA2KBIBj83PUJA9bElxBS8KFee9O/mEetbKIlXsF84U
	 o6yq0fkxI+k3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99793CEBF78
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741595361.30775.1756525525913705498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffcb537700c4b9fab7f1d5b24b4ea0f802cd05d3f78ee59e69640c63c8ffa64
Date: Fri, 27 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727415953
