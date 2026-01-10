Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9B82FE05D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768057434; cv=none; b=KEVmA/2o5utvkk2oIuHom10aL1eiB7Dh7cEOOkeBkLuBPyXbArgoSXMx92PD7J9rgWGL3zN2nMbJgL6gPzugdJrGWlyU92cFL1S8B2B35hya9CEKmPeeRCqT7E1k0wnf+CPnLtHCWA9Ur5NWHMIwzKSIvs2uvJr/AvazDG+cKLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768057434; c=relaxed/simple;
	bh=XLleSAcWUnSgArEF4aab6DfomyLAYrGWuzPlnkAJ11E=;
	h=To:Subject:From:Message-Id:Date; b=eL7b4ivbxyf1cbrWd1wiFEVGZhnpxEnMs4QFiJzgPsS3DnYaTyvXxUB4dfyJHwt2SuGqnoNmAjQ9tlfsLd/F1cmzApnN0814q93zWpTaGd41lWUPsXLtlN/7OxM+Hy2osncnlHnpLjSdTj6ucl61toJTgOFBwZsbeMJNAmt4RYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uImOEWV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uImOEWV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AB4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768057433;
	bh=XLleSAcWUnSgArEF4aab6DfomyLAYrGWuzPlnkAJ11E=;
	h=To:Subject:From:Date:From;
	b=uImOEWV8UQniEB83Z8Ho8QD3e4iCKnJdH/Fh55hpzFRNGjgeKe9MheRV2AfnuFryp
	 PFZNNT9OZSJV+QrT6TxtJtI8OBwB/n1eWUnr8Z7MIMlGw5v7xVN3pxkSwrLKDRqZ0T
	 ReCjMx5M0dFQUTr9+My3e6hCv1DycmOkqH7glgTGqL7Lxa1M+Nb0GiNMRmDQNwNeki
	 3dWKEuVEnYFqBdiYGDx00SiD6ksmhfXJ2VDLZVOSjk1LpBRMo1vi6MRs8eVmgewPx7
	 G4sRubpU4PLBeCtomWY4kfX/XBYm78hg8ugMF4a4iW2a1NLlEf/YbY9PusCnnBaFWN
	 Zb5XaFxtK+hEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BBCD277EB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805743359.29485.987891651711112034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bcc0df29e4b577c3b696d893b759b9ec909fc3802646432f3574dc4d22e6a1
Date: Sat, 10 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768057433
