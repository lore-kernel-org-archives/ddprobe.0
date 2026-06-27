Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2961C1FBC8C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782532714; cv=none; b=pecBlAKINnTY3AuR6Lg5LrmMbsAd2nyyD87BKrFpOxBxKqVPba+OuFEfkk48I4jozVl1QrvLQKxvujCXDnOCxweIq1nRp0j8Pici0uWJ+Q5jfH0xoBkB0koNBU/LzwxcwFB/ehCJmHpE4DXrxO6hR4IgheJHAC4me1KpwF/ALbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782532714; c=relaxed/simple;
	bh=73ijU8RBEPal9PI6cr8k9lxRyGkhh/nG+E5i1U/HVQc=;
	h=To:Subject:From:Message-Id:Date; b=kKKApfj2/RcqmnuS/oTPYysc9gtpZzldANFqdNp51nCJE/jiXA/GVgon7AMra/lZ/S7wH19ZRxM8z7B82j91NhDuG8gYFDVU4OwH3aU7QmFtX7iPQntaxfgx+DHd50EcDXfw71gsASfbiJ/k7VrCYON2fKfAAMry2Xib43XWRCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3s2GKso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3s2GKso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FE6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782532713;
	bh=73ijU8RBEPal9PI6cr8k9lxRyGkhh/nG+E5i1U/HVQc=;
	h=To:Subject:From:Date:From;
	b=a3s2GKso/zukZ4ecWKOPzXIvXrz0EqcauZICmgI//MHJEIn7yfzc0xsVuCu2wS3T7
	 MCNTlMv0vpBVcN+1WxTG3IRM2FwfZqJx/XR7jjl5u5uBFZQ/ONFEfOaHxZvZ8sqI7z
	 gmspOJ35g4JOJzxpCsWOlQfBfwZK3o+UxRpLwxELFhFqbaykIP3G6D+iSrHRSfdltI
	 8Rv/omErsL03ifcQuojSmqN/admmQGDd839+LkYTCUc0mkQVbfBvoFDrrUyFfbTc0J
	 w52HDPhboRAy6YGdfWKCP4oauCvQHEVRk4XFPDaqTHto1Oec47Yu9YOox4ZtZfy6e0
	 a6BtEwwxxXlzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCBC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253271368.25973.11427715163058831265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9a66d54979636da705cf8e2a10fc263442206e820b9ed62232ebb8da92ad69
Date: Sat, 27 Jun 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782532713
