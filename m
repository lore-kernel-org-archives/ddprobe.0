Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA2230E844
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750399794; cv=none; b=aOTyC9zAWimPyRGWMVFBMPR+b3d0GzARb6VfgLVHHw3mRntBJfSqsCvxPQZdsJn/0vP0SevjoRGl7gaZrurm1Z1Mw35yTil3lMBJQK3JtIQr/N1I/LZseuLamnkuafl+hP9i7av1K4DiD+GilitHKEMH9L1N7pRAXSVpnOzvVnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750399794; c=relaxed/simple;
	bh=urpoakPnQF6WLNmiFHvf2f8XbqG33K+sA0yAkcafHsI=;
	h=To:Subject:From:Message-Id:Date; b=uJ+tKy7mtihhgzuZqs8RbyegTauhf3DminHkS1UFYfJzoB8AhIvdxMbxfn4M/CIq4mB1lqF/io9NciXqxFmeE5N8C2rZhrL52waXQcuBKg9RRcgwWOLn931lMIXate6h/F7S6aOVaRL0caXb25PP3J9Rrol6X5fuuAoJPd80ehg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8hv2Xfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8hv2Xfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D89AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750399793;
	bh=urpoakPnQF6WLNmiFHvf2f8XbqG33K+sA0yAkcafHsI=;
	h=To:Subject:From:Date:From;
	b=o8hv2XfsHrOaOmuB6H2PSPXDDgNgDsZhkJPNr9ddmUuHB6f9amEvz+CUJMYwdxLtL
	 vwa+YkXGMAXqAo6ZBbyegUPmCLLODR+qdM9rS7zNWnB4Op+5nAZOpPsS4shJVOuFTO
	 3Z45bZVoAF8nO4evulphdv8rID/hdeys2oMFHQBWwrw1mSzV9M1egThGaSgA1vwn+Q
	 CyxCzJ2VfmhaRiKbCsvwLrBYUjWWPMbENauMqjDMjhqutJt2Pe5d4QJD9QO3ABBNZw
	 axxVTNCf8sHtWNEdpa0PWS0p7Ap5MkXZOQMA9GLmpc/izxxEjNTbBelQGuPo28bHhN
	 6p69ihC84IwTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD6C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039979357.17502.3709502545045556861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2457b7325c8085e2ce0724b01d453472a7f96d3d8d15e75e8ccedb25808670
Date: Fri, 20 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750399793
