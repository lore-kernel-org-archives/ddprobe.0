Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1061383
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725335754; cv=none; b=GJGJ5YTTEFb26k7xJRzO2saai2tzR1JikScM2XMIaQI8cRmacSzQQLvyemUF21Qc+fSfvovcTfVGA//8pm6dfFqyYmFLut6RSdEIuIFI9PBW6PXd3+28hoUHARyX0WGLCmjp69qcQ8MxWQOxWPJ174CFOTaYPZ7k6LE1TbPcmmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725335754; c=relaxed/simple;
	bh=66BncG8xBGhi5TuGzQLKLrDUJVnze5Gih0aj013DVFw=;
	h=To:Subject:From:Message-Id:Date; b=YtMu2CulIysJA93wZ7arfmxHQp0Rg0dJJQ9gHYmP0MiOBnnE+Cwzu/aVN5PTO9g6f7F4EDE4/vz6FGC/TYNPoe/7+/Z1/axC3CDsVDbPBmIFnCOs99kjjl2XeAJ2tj9C8pVJEO/OwrJiO/ZGEJW/z3RmxsJlcyR05p1EEWvFSVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBt3btGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBt3btGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDD7C4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725335753;
	bh=66BncG8xBGhi5TuGzQLKLrDUJVnze5Gih0aj013DVFw=;
	h=To:Subject:From:Date:From;
	b=XBt3btGK5daXLukAYECkQtqeBkC67B84vgvf5eRF5KfTvA1bxkCypqXn3QYpmeWHW
	 L6kD/giUjswvqulnY4u6AIrH3A4quq27fZnlLuuzQpbEBGhBtO0TE/+eOqOoppp71K
	 gxLbevUoBjf5FEWCmCdGtfo4lnsgCJJtg0ArxgepouYwaHCk7UJJZM6XLryX4xKqqu
	 YXrGeZGk5l7/3bmw6qTOX4ghRFO0MTDU8QgACCucRdGOLWkA3k76wGAAHoDP9rudOM
	 Gh0aE1iHBJ5Qo036zvV37dhpq6Z4b5EhZgFYFzyFuL/0+MdjDbr91uJUdU9Dw+QPMr
	 5y+Zhf7P+MTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA9CCA101E
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172533575359.9718.17391883502363035972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0763d3c2faf51a5467998091cc76bca8cc44c7d946f402ad797fb1fc77235038
Date: Tue, 03 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725335753
