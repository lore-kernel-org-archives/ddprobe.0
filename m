Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98EF1D7E41
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758079793; cv=none; b=HNRxTPbd4n/C6gs1cPv390IZTtqFSWS1jQiM9VqqwGIgqimsK1g5UAXXyTM4//EcLz29fqDjuq7KGXNxHsVhOJgzfzrs7HAme+wD/FLtHJcW0jF/ayWQ1f+hzDu/ItS5z/ZoBjapYyS+83ndtvW8PQVBfYdVbuAx23oZapuGnpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758079793; c=relaxed/simple;
	bh=TZTDbcKB5LDcKf952cmmXk0weUV+oE17vUm/oJadVOU=;
	h=To:Subject:From:Message-Id:Date; b=qHUdAfb4lTq8tSDfCD7UedODdBQaBbIRONVPVqu2Jh7t2W8urojMY6RTREw8CyXX6q85m/GwxeVPqMWPIQ/P50kapg3uYEh7vh+zdvaaiAkhqvNfx0UOqRJyJP+yD0ApSG72HtSDIxGGclLqGyEuRmr+6bgZl8LcItqVbX+IY40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7bh3AOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7bh3AOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FAAC4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758079793;
	bh=TZTDbcKB5LDcKf952cmmXk0weUV+oE17vUm/oJadVOU=;
	h=To:Subject:From:Date:From;
	b=p7bh3AOoGn601N4WH6t57e1l5OUuvASPI0Hawdf9UdkuZSa7M+ccR+hJJ+Tvh3Q2c
	 00yNLwJyhFiRay4yEjg8+Knca7pvxtvYaBTdT5VXkYzHbI3vY1e3yYzYvdQaQqYcss
	 FpNncYbmSorTGCD6a2QNQasZS4VimPu2qFXojomOGyWemjxXYuuDPnc+d8zmAk1zYH
	 OpGzVYYDTRfsc5Ll7oPsTLwQTJepf0pylyhKiZSNkmol1u58d02ZfVORnq2A6OGdBL
	 O0i1y7qtIP7byVH6MB3ECrh1lQAJxK+Tg9WdfIcxNdV7IbDsfPuvxq3zoppYkEiwI1
	 EeG3TJK72Ezlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CCCAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807979358.31350.1357561053521926278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818dda9b7d12ece735f3bd58c6b661578d0839ebfcc15dcc578d47f8e72beadc
Date: Wed, 17 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758079793
