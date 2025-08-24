Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30482242D65
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756052394; cv=none; b=IWvZIoXOHd19E/fX9AsCFzZcodYlbMJaVOjrEXW84BWd6f/K8SiOH1MqjqxQJwChRnVOfNAtW1o9JeWP1xd5EDwE/e7A2ulIMUhY2K4mWuIBHFD831WzRnCeWZz+qCBIv9m4fAPIwWcoFVPBDaxcDUCCXTvbNwOjo7Vfw5ux11I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756052394; c=relaxed/simple;
	bh=jeLQPeNgVS+jYcNVRHH+jyoHkOSQENrpDsUuivAe4Hw=;
	h=To:Subject:From:Message-Id:Date; b=uFuOHjPLlpsvueSzv0YFOXE/dhzF32Gp4fwWE4ZsQrTt1E/LHRw1aOESvhsr4nqUovleq8Gbksgkhw3ApdH+5ollDiN6kDDj5yTtfFIIeA9qbfRmPNvPi7yjlCpfm6URmmN7UWEJTXA2WyYdUFzqsfL2SOgAs8EGyefcFHrJiys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhSM3xNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhSM3xNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E31C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756052393;
	bh=jeLQPeNgVS+jYcNVRHH+jyoHkOSQENrpDsUuivAe4Hw=;
	h=To:Subject:From:Date:From;
	b=lhSM3xNyWa9tppt7AMudSnVX7Vf9qvZ0CqPInGh7zvBUXv5N63wXHJ2SjHJObrJrk
	 jrhRefwM/6mhfWfU1pY9R2EGe0TDCvQ+YC/+ClpcYobZXCsiIqOdsgQrcMtZ8ou3La
	 RkxdX0+huwSQMPuFQ82NBuemztBQLL32yjUP6Wh+X87U6Zl+iCvR9avJ9xL2tzbQQ/
	 1jgAS3VlM6khwsXw/X+c+9JNebjZagNIak08FGfUZ6LxSQ2SzTKlZSUKmwb/S+xGO8
	 fG9CvGYY2l+8GY3Z3oHogd0S2VWqf6v60BYR1uWx9NZ8r4oyLY00CpPuG0gPOGiUh2
	 CDKQm5OjTQGJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D7CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605239357.6817.3901840225732565129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a7c7c99489d6242ef7a598080bab40c5c117d50f2afa780642091889247e7d
Date: Sun, 24 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756052393
