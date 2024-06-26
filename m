Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D42DF4E2
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719363803; cv=none; b=W+ZBkYMAEoZWL1w0CZrMPU1FR823CEZ7IjFvZapuGMm6d6ZFdv6wFqwJdu4VA/tD1Dgrq4Yt2lx5jW9SodikfEOwbmuPdhnKgdUITRViAKw0TZfTGTfXtKpniZXPZR8fRPTfgv6Fn4ZB1Zs/lPVY5bmJwfNqqaD5SBhsgWt+jNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719363803; c=relaxed/simple;
	bh=9BpAaMZzWqWBn93ro8GW/d820xCEe/CR7xPtfRt7n50=;
	h=To:Subject:From:Message-Id:Date; b=jBiBHXtcr9D8Qg0kAkPCFFCBhuoQ4E/7Hu158SY+vhWIZwQgEIQxSvePaJDVzHstKY36P8Oe7WCU6hsxcV7IecfwEbe125SDHoD9f/LJqenJ51dDfYFae4lT5+zQ6NWbfI2xawctyHJsizAandqW+421ODy2Ew6S37vDxl+h36s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAkT6oxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAkT6oxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D97C32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719363802;
	bh=9BpAaMZzWqWBn93ro8GW/d820xCEe/CR7xPtfRt7n50=;
	h=To:Subject:From:Date:From;
	b=oAkT6oxYHJVEtLl3IZhbqnpb8N0iZm9/9XLSdrD6RM0K52f/aaUVp1Vxdn3vA/0X0
	 bCjNV/ZidHA5KF8XLbzinaalQBAKm9cXofGwB1etKUWKUHOBBINt0e4RG8xiN9EcY6
	 b6Nl/b0yRX+X8DflIpnUI0TTuMEB1sqwSoTH7Kb/Mwsjilf3sDKxgvuW1JcGaamGXi
	 YWVjJTACTzfHsxsszuIZEbso5WzYRCCJFu1sMntmvM61Pq29KXZlAIA2oEmZ47XFGF
	 3+iUb/VqXKcLwy07h4Z1NnQztBTQWLZeohtPh2abEiTtp/mIduecFoSXIwoGtXnR1R
	 Ife9OytE70icw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F20C3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936380276.6245.3572640683816271954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360d7eb38ec586db0268e0eaebb40061746084d83cf483619c9f4c0af8b9bd54
Date: Wed, 26 Jun 2024 01:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719363802
