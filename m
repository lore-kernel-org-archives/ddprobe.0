Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF8B171C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741828134; cv=none; b=QUyvILQlntwujZZgJqgag5rARUgDSv/VfKkjCGfiyGU7mcp4TnvwCrpu7PicKX8SpXRyvCVeXY6DbbOh/LWBZ2pODmemsUkApMlzZi2X/26EpW4quTgg6/wyGADzxlS5z4sEzQqRK5FNcy6/ZaF9Tn3ezj3B5J4c/0WUaPs+gMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741828134; c=relaxed/simple;
	bh=2qP5df2anzF9kwM3O4Jks3DOPlRRqOTHFQl7CYjxCbg=;
	h=To:Subject:From:Message-Id:Date; b=UIswIH5plqBF9AkN3ZLmxVwVYhQgEwOen4c0imzi5o0dhqmQQd1kPEZbZ2J2nbQl1wGbwyTgQSylpoV7OObcA0SslBW76Toxa2CMGH7BtSHg73VRVuUctMeOBD8EDsZGCFSS1QMQUSeZrl27BMXJs24cOGc1DDjbvJVRmXp1IdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRBnCx8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRBnCx8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37B4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741828133;
	bh=2qP5df2anzF9kwM3O4Jks3DOPlRRqOTHFQl7CYjxCbg=;
	h=To:Subject:From:Date:From;
	b=oRBnCx8ZKxQl6EhpGi+DXLNOli4Wcs3F2UuMY8YuF1GoVuHrlQ4bWCIZU/CgU2SC+
	 OfPl5zu30aeOS4vNPDjNMxq9D3c71rzQtYFVvPhc8pljxVJIvALNAPw/AsnugLQycA
	 mWT+IV4yRmWpUqDbJL/yq6zhKj8RghRPbaU/MRLeS/pgMyL6EfYr9nVwRpfGXYU5/a
	 SZYFLc7pnUujNHoI09icTRe3Ih9HNqr7d2VDleZZT7Pn9jlgXQt3cjQCPpJHZs1JO1
	 Y2lAMPMJZpzM+aSDFuroHJj1Pl0IvCQxLrV44CAAhjCUkGMtWlI5ppMX/yIrr1sO8u
	 XTDo/RuQFDnjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6205C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182813364.27384.13308451882535376781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5437630215d69e8b2dd4855e9c896af0328968e85b9d967cb3e9e521c425abc
Date: Thu, 13 Mar 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741828133
