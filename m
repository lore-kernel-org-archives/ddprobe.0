Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA9C1DED70
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745459393; cv=none; b=P9yCdNMNjQwb0hK90fICp8VNrPYLpNAq4uIAqswVQQypbVtTCFyiZCtVh2KPz9G5DYyz9zoavnVkJdx+V6OsfkFJI3rhs2Y7RnKfGT1k8hK+QRdW+FQYvuwN0JeoP5Cl7wnetfFCuwxW/jgfzUjwh4/Hx/kXI5bokx6+iuatY78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745459393; c=relaxed/simple;
	bh=qYn+3PHpfrsF23RSUhICjPa3Sh6qS4sFFbxweqviDVg=;
	h=To:Subject:From:Message-Id:Date; b=HTlKFrTvs99DAkCrG48BmxtalNrDWtGT0MFPfEu4O/vfs0CngwbLsJaAlWBD8IxjvHeq8OveNCj7H5iiZjWTHaK8rQ47kyM5FVpFxHOegcIffuQkzfbWbiB1fRrwI6//CkGRH7Ia9/3iBCLU3rNo/o9WvxvTouWnHGEKHvuiGUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGYVdmPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGYVdmPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA02C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745459393;
	bh=qYn+3PHpfrsF23RSUhICjPa3Sh6qS4sFFbxweqviDVg=;
	h=To:Subject:From:Date:From;
	b=YGYVdmPJdQcGtFTXtD+/aVu2vI5DhTHBhGZm7hxFtUOSvt9iNgpO1icXpNWHti9iK
	 q/mjCv9ne4eAII6Sziqj0jfzPZOxHpMfVK7knAuLseOElQ8iSqM3et9AqA6bjWiop8
	 XsTRtWXOM+xjJCeg8zweqOf1FDf9oxI7LQo7PW5Fle82+cRmau4koJwqrkzK5bHF4s
	 lWhDpz7/y6LV6czV7m1U8dawO/E3S8xcdlvZgIz/ISzVuvwsBw4rbCMUYgHMERyULB
	 U+0ThXs+SNAczPGHJTPaw3dC0fD4JukPSA1oxOeNRBxoIPTnaM11emlja1FHvXJ8ec
	 p1JQwklHR08Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E848C369D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545939357.24154.11164008266413047678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca06a251670367b5de09cb94c7a171f9dbaff787124186642c749af8dcd64cf
Date: Thu, 24 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745459393
