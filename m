Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A20EF4F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755402594; cv=none; b=ubV5OxgQMpv6w5di58ZluypuuKv1QPf1KrE1yXYcbnjvYrfCGmTahqdgkht4Z7qcjp57Vt9NyLMuyGMc9xZDooLhtRDFo5KUzhD0oZAhvOAFKx6tJn74ux0zQdzNenR6Aon4Pl2kg2HnQ7viM+M1cnGpNRPqEi7Y3qU3y2KdcW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755402594; c=relaxed/simple;
	bh=yfEHdqWe6tuQVGpW2mUa+E9BdWsbShKJdGULfz/WtCc=;
	h=To:Subject:From:Message-Id:Date; b=e4CLCyFeME9ViIn5HsEYdVgNOtXVLiwh7cdjt2q23KDcQmnuteGTnhr3wrDmYBO3Skvow8TBNgIcak9R9ftoNlAByH5MIFe6MWNYb/sJP62P+hW3qJebNfPx6gQdzqyN9L7zmDJ0NIdiW7fGN0zT196mogfuG0tQ6tKggfo8hd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNE41s1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNE41s1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6648C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755402593;
	bh=yfEHdqWe6tuQVGpW2mUa+E9BdWsbShKJdGULfz/WtCc=;
	h=To:Subject:From:Date:From;
	b=dNE41s1jknuZKmuwFT6f2rGrM6YAcoVyqKBy23vqb1XuPivBVunXUc3oJowdlAk36
	 Q0RblCI+pVFZ0dcpJ9v/C5PKWxSUrzn+Ye1FqyqB12pMcr8GZwWjVoxxHOEoPfYunT
	 wJow45TrxdfWlA/CeJlTfXag4CDH6e+7Bj6O2NHV/n3t2X10VTYPLnNr9QPLko05Pv
	 1FZLsOcJ7XjUsE3j8KHwoEetIsUTsp+TSCUvnkK39+i0sGMu4Yi75+1pIFLQur+6BW
	 XdjOY1bfmX0vGs+mXpwdOCSFLlwXv/JC++MHGVeJxNAUBWYeOsij1/r9/ziUOdvbK+
	 PKN+p09QQggTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D3CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540259357.8788.170242764122010085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e74f966e3f64863076a8a1889bc9a277d0beef6f8c0b87f21158739a9b25783
Date: Sun, 17 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755402593
