Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285DB1448E3
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759883394; cv=none; b=pLj8RnmcPuqIuGRbg/X3rFPR+oOF578vAAEMoNUaifz0dS39bfxZG9AEId50ZGz6vqKmF3WIuM+K6rsk/I8Vhyb9yb6Nl0MLbOrCKQnd63oFcHXmbL3vs9A2tX0FNGrKyJ3+i9CJLNZIN6CC7lvZrO9R0pw+4pPctfxrhXdPaxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759883394; c=relaxed/simple;
	bh=pvT/U7TPW7NWVMDYi7bROw86vnJ4z9V1C5MpeAaMSFs=;
	h=To:Subject:From:Message-Id:Date; b=NAc9QnzJe1FKMLcd+K1b46DcolWTgT0jhSggRX1nYc7G2n5bbxqVjKkigjQ8WJTYtbdfu7TWZr/leZO4SpcUu3E+BvVotshp8ImZUuX4axRNeZjMbVkm9KLB1BtGI57pig/fV2EeZviD7OPFrRZq0QazXnEMnou8FOZV3KwCpGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ldjard9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ldjard9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E8CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759883393;
	bh=pvT/U7TPW7NWVMDYi7bROw86vnJ4z9V1C5MpeAaMSFs=;
	h=To:Subject:From:Date:From;
	b=Ldjard9eg0glaIlR4KZdkONRcHhRrGqzaWObxopnEK1CXAsgabK7ovjwrBGwFaa0C
	 akJML2P9SgolVv4N3vtJozWz9hEBkoL70By+DVHEssDyMcuDN5hT15WjDOXyHCPpfT
	 Yz83rhiTQ21at9BsSht1Y3pvhbOLDPLNgm0KXhXLDRyazEloF5PJiPFBbnjyEDnLvg
	 bmpzcAr8cRqTcZL4bNdfyHaHktuAbyVMUeQOSH1W7Br54GwVqMn+cjEZx1WNDlfAAS
	 tjOx7wV+/VXHQbFOT8CKYsrsFNJf4JszRrvOuSYw/X1H+cc4FIxbQ986KkuRDfALr3
	 573aJLCucf+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA7CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988339357.22851.1860699563044394804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75f61295e1812ae7b893f629cfa6f78477d090714b1f612c40407bffb12e0f0
Date: Wed, 08 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759883393
