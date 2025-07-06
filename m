Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3253018C31
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751773795; cv=none; b=FTVa0tIHVCIdi1afoosO4csA1QBegGQDi9sYFaQROYJTAju9zVTbavPf+Q/44KGrlo9iStQnIs6MrvFgmZTosOEBQpSDF5Vt2KdJE0TsDfIfNrapC+L7pAX+8paWPuSzZiXICxZf8HhROe+WwtOGgMteeIESaDellFGhdKNF3GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751773795; c=relaxed/simple;
	bh=hRM+Yh33kDJMWBOvMu4F7okCNi30W+xmJ1UlphtDQ7Y=;
	h=To:Subject:From:Message-Id:Date; b=abB6YxOLjZGV0QTHEAu884rImlVN+kZnT/dgRyYmw1WZupdLMeBTFTMOHNT/oWH1HW4w+jhD0yhniAoQ1pOW0b67fmeNfeaS/PHmzfUIhlueSNfgBDMtFbtVnm4EuII+sfDZ228Lkc4x6y0vOrJnhS8xgpiVA2oNFiiE3BHCfrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCUmCtbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCUmCtbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D40CC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751773793;
	bh=hRM+Yh33kDJMWBOvMu4F7okCNi30W+xmJ1UlphtDQ7Y=;
	h=To:Subject:From:Date:From;
	b=eCUmCtbZwREjMycPAr2nIylERQGlnOEeKuN0vsbTcHoOFjNyZUvWMn+IQIna8GWck
	 zhGZyQFulLmsPqM9J/uGTUnGMmJJg7EhG/XI/CAczWe1CyxXk/uCJ6mkX0kY+unVH3
	 zurgdf32Aoq01dWV9x5WPCLbKeolwS8My/tcTdN4OWbwQfeFL89ma9wupU/H5+tYd7
	 mXbdvXrtiuTLwTbXTIECaK86ypefxHwRJEPk5dczRzzf6cjGpJ8pZfZd404CnYBMKq
	 WgnoZ29kRgq6u2US+sIGRXw7T8FWHjHqLFbgyvBi4yJLEOP85izFURwYxQucBWGi3n
	 QKJjdll+3F0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E120C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177379357.20562.6013568430647833214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edf35fcd336be5274327a59b7f869720c82e781e326a68013db71ae30af7958
Date: Sun, 06 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751773793
