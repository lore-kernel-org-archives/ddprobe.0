Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3047A22D4EB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747215594; cv=none; b=OerQTILHP1x1nFM0S7zoped3zcwEroZO72OOIw4/uZPvPDXwCJidIz1v+sUgCvMW+fVIjFq79NGURdmgf/rafCQXIipoxQZ1HINSwbvjw//g50fUWxnEpS8KKqASFOfNhTb9gdwqmxJCgA5mqWOt2IiPOsBiPcP5QV4t29QqcZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747215594; c=relaxed/simple;
	bh=rCqBEsF27RwgTrdp3IrylVM6TdxtXrwQdn1JQBPcjco=;
	h=To:Subject:From:Message-Id:Date; b=HtsS5WXZO3fF/tSEwaaJzeRK78RvKeEXBb2I9B5Jy3KDt0opzJDjwdreLJZTHXVWhI09/eDHIOHKPEkC52BFXm968lKVY7ici9KAsYDO3y7FSUPskiMclNjBHvsG6oVaTIm7Op4DLePFiU0sSLioDJHwxVu8MbfWtQmpz0SGlGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkqUEOQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkqUEOQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2331C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747215593;
	bh=rCqBEsF27RwgTrdp3IrylVM6TdxtXrwQdn1JQBPcjco=;
	h=To:Subject:From:Date:From;
	b=AkqUEOQysBL6Wd10LTzpHaEpY4WSJzF69FLYhcDdqPh06qWAavHMl5tBPPs/klAk4
	 s6qGZ3lD4m8tTqSb06fkwV8YABz49qEtzkCFlvfLvp9XlvrnNtfDxY11f99ySnrpg9
	 SbwflWb0liRaGCtYOTzEIW+CvLIQuwrb8VGsR47LrAjjbaasZSajKc8zrZz0bkZWp+
	 NZoH5uPQy80g/zeDZnCigg2Ly6tPQdhklHY6k9feD9hOd1n8l6cMSCjVdc4LWigXYr
	 Nsl4VspWTB6Lrd9A+B+l1cctCyFZQRz9rKoZ/Ys0wjkYNMSHZmBw5aWuThUQbq7OB2
	 f7S53JZKJUdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92868C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721559359.29942.8646729600135686915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e5a2b58e483e06c550395d0c1b8b040e99d598b039fca6fb91f9b8d86f4628
Date: Wed, 14 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747215593
