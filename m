Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C3E148832
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760906994; cv=none; b=IeWjcllgvUJ4htnpOdtG0Vmx2GzyYh5NxiGODuJiKkBcBxHuRAWTwiFayQxmgCLVgozwhMWbz+MT82dhxIyFmmavVvrnSYGCNK679W5sF8YNJ5omHVIGDhG+8SrYqTmmEdCEXOHdjRfgDKDNzq/7jGZMxzSQj2FC8Ejk4RH2mtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760906994; c=relaxed/simple;
	bh=RYe+XN66luAmd7p5OAPhuV9Z/rlyB6aCDA7CNDfKzXA=;
	h=To:Subject:From:Message-Id:Date; b=BuwYb54dzqega/xJn55gfNpnmTpHcMk1O/GG29QxYcJp8aYqDDgpQsEhawhHZlC/I4QoZHX3AxrYYyutouI4cQFsJiEU1WkZoWDtQG4jMlOgypr3JXRagdgp/UGjkrX15+FtW0Ixo6tsO34SQ/d/C/xua8f3d9ihpB7SZsy/TRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=el8ePYs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="el8ePYs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760906993;
	bh=RYe+XN66luAmd7p5OAPhuV9Z/rlyB6aCDA7CNDfKzXA=;
	h=To:Subject:From:Date:From;
	b=el8ePYs1Rigj5pDnUQE+Wu2fFOuF6v1pTMsvhG05K2jwCnTcncG0CNnONcIGgt9cU
	 VM8drUXUfhkJjuU1I3Cu7AWx3sCK+EKQEE+Q47DDkkafW9yDSaxI6k2cU07EqbgjyX
	 SWJD6OFI3NNeBamc3w08TPjDNz8lOPeateE5o3bUeHXXmQd45SXKz5gK6amSXmQedU
	 mTI5l1h46RSQoPuAKrY4zAFd8BB3t0YmSP++oh9yFVFKRLkQs1EaTB8Yzq73CWqc65
	 yO4R1s5hHVE1Q3p63BMraip9aCtkVSx+S88lZBA9o7e2c6a7c8HDWwR4GpU8iWeGlt
	 LAfST/PmYlfwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92266CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090699357.12282.9486857352736694264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7ef375bf1b31172524c24e0d0db5567105ccf4ace61bae7971fb9646d4db28
Date: Sun, 19 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760906993
