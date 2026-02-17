Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15192296BD7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771357494; cv=none; b=rwOo5pKbxHUyhwvL/KQhEXekDkwC/xq6O1OBXpkccTqEkDDwyhPhd7Y8+5+5RTI+2ItqB2XIZS/p54rGvv9U7KrnD25OfPh45LOjKWXhcdOxQ3KGiXlAlFO4iemuctPzQG4ZesifAfNok7jqMg+GCve3N6SYZc7unR4+iOOw3G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771357494; c=relaxed/simple;
	bh=I40FRT932yjN20mjfmDGKK0K/Y6Cy9iyM+Fx1TRvd1U=;
	h=To:Subject:From:Message-Id:Date; b=nu+K+fv+kOKIQOmbsKvlUilDjfYdwqyhwyEaZGf5sAa/IC6jY3gSg7mEhTjRbQufNW2s58XOWDAW58sJHoB+lvTtGdbHElZUdgecleZVh2/TC1u9bovTsJ0OBIZn1XrzsnYrM45Mhi3audCYJXHrfL+Jy5vKEN3pP9Uhu6v4ECc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWAzHSA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWAzHSA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDCDC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771357493;
	bh=I40FRT932yjN20mjfmDGKK0K/Y6Cy9iyM+Fx1TRvd1U=;
	h=To:Subject:From:Date:From;
	b=FWAzHSA5T8MTRl57BedQFpJkuXdcDgV4s+Ah/iD//H9QE6VOwphaB6+CaPnM0zGAD
	 k4/ipFTesXBZSK55BT7edjAtPRLaIcNPcvzm3SMtRaWizhJlD+M+hq9W7ylH/hyRI9
	 XPn75sInUjWUygdKy55HJznGgkDCNT05dTeA8QPpCxhWb2qnU82P54h3JERh7mvFCL
	 cwNFZRl728Q0ysilbpBFOeiyXi/thPtXICRneoTFxBGl6qaTOVM6iRyfVEXG80rPcZ
	 acHOog8LIZKIJVumYHDf7u1ctdAE+0Pohl5/cZfWM6eNEM7H/WuJfMxPio7GMiRDIh
	 sRHUb+tm43bFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993ECE9A031
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135749359.15060.5972381900337008387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d482737c0a4e1235134d7028fed398b6402dcd2ad02fe3bd12c885d1c568ce51
Date: Tue, 17 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771357493
