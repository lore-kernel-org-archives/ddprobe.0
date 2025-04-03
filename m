Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABCF19E7D1
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670194; cv=none; b=O288Ls1zVAvX96lkUlfbh3ckrynl7wVe7fEBEgomaoZTs7wyRr/KSOSNMa2UrKQBKQcFcMdn96sh/6PmaT61Ash/ELNQzPdaD/svOvrqpUqKiM/ioawEqrdMDdv8/GkdoYbKni+Fpei2yv8LQ4dOFZWOWqEvnmPcDoM1XcGWKts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670194; c=relaxed/simple;
	bh=7g34N0wVXwPhoX07TCQpDXRQKmZEueQ3qo2COF5Kr9w=;
	h=To:Subject:From:Message-Id:Date; b=ii+xFl6JVOWxeaCzEKVHo5MXcvre2hn8bihZ4MeIUlacMC89ju+6gpuo0wrSEhsz4y0KpSxtlp4LUkTjTNvzvk1Y8Vkq66/9zKWr4ntNN/aEjzC4P42UJOozGMwPN3vQzoRVykg4ozyzyT6sVfwuU5+XdX/kLs3hsH1AT0aWtro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJI8Q2iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJI8Q2iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F25C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743670193;
	bh=7g34N0wVXwPhoX07TCQpDXRQKmZEueQ3qo2COF5Kr9w=;
	h=To:Subject:From:Date:From;
	b=QJI8Q2iEeTYqyo5cDaE/QTdRLy+SNl32sXZ30Uq2PLhtLEivvx4+WmOEqE26GYdlE
	 rpzIQ3ACiO7P0HElMfJ212kYm9M5LaMi+neid6ukb/FbNQ+uZBTvBfoeQSFkzBQxRl
	 QCkKkxSnP/cOlZ4uVhuf10RaTvam0AlcAy65BP2GQUMi3JkAsdlPB/KYp70DaK0zkv
	 mxy5cixWWAj7bav2Pu0LzMxTyJiLrSVOFm6ufIAe7XSX/hEnY18d0Gp4ncfQzzRirs
	 gTX0p4/2hfiSXwWbJ4Sqwf6RlDbpIxgy8GLxi4NcSatjKqAvSW6VBewLYjdD2pS15x
	 q+1ro3LG2ErjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B0C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367019359.12064.16841239597630619581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ec24e3558a11545b2b75d5b6d8b12fcb1d335b7befdeab31f8318679d7fe1b
Date: Thu, 03 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743670193
