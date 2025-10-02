Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154B8242D83
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759427995; cv=none; b=gbn/qo+D4AZly92BEoEzACDCH/HvdsyTXORSCuiYVzD/Hink0rjOFOe98jXbrsubfxZ1qUhGFOEcSGbGgVKFLGB2C2msqlSqsGxO02atPaRcOUgwUPZwa72rZp/icz4KY0utLTyLcjy4APOwivJuQ97jOzyBdZ6os6DrC5N6xv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759427995; c=relaxed/simple;
	bh=G80R2oOmvbGzjRXR6OkPD0NiCiIKr/g1Lywrau/A8Lo=;
	h=To:Subject:From:Message-Id:Date; b=KhIC5zRToBjcy4ngYZYyYbAb2mhFIKD6ecHxyftUNp4PH+QfmKEWnwXiF+ZxW776oVJWGj0xdarr3EsvT6nTVq8vDRF5XXoc/nYJ+vDRd6ya3/3VTZ6FVbMbllytFnr/mhb1B5TCUR/ucBPh0JDeyw/X8ac2ufpjW2DIZromRkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJL4Wi6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJL4Wi6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A3AC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759427993;
	bh=G80R2oOmvbGzjRXR6OkPD0NiCiIKr/g1Lywrau/A8Lo=;
	h=To:Subject:From:Date:From;
	b=HJL4Wi6VxBmH+Smswd34bRoXV3ma+hORci1kCwhz2HZE3gF13G0cuLwurbRz3srWa
	 EQXTa8uosxurY02/FMrkk1fF5CURhgXh/lHPZ6um0cwDVwnmR8fjHvfkbTPDY1Z3gb
	 ru3aNX92Pb1QvyfY8DF3Ury69aZd0okpbQ/EKYZ6wcr9S60gsd5xUQRk6EwuhMziTb
	 4CHYH6h3foHVZQakV1DQilA+jMUVjhTOZrDY2kygFo1eQ9xA/Q/qDIKJWmu5ImyDPf
	 MsvGk8adH8G1zIUQPxv4SX0+h8mMZFaVNxMyJtcbFpaCTeLyCmFCIZOCXqzaizKIL5
	 NCyk/fhfMH2pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072ACAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942799358.9050.1296646056342300921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e3670a8e6b96140b76a02cd240f8db2ef9e440df33be8ab11194ee28104c0a
Date: Thu, 02 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759427993
