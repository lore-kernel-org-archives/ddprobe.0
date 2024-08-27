Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F60F1FDA
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724722554; cv=none; b=JXnwN/WcE0leXGoR0vKvMfQFVipkMFjGPfGa8DPECRpNki8hxIiEFNRThh0p51Ss1dAyE+cMVcoF/hJgLDz+ouv9t6ooerDBXGz2iyR6FYyZNr5B4uaSktupM9rI+u8uDtIiBtYsFNeoGpGEMVmNQZ2LxSsMET1mNUV+6Hek6L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724722554; c=relaxed/simple;
	bh=+oM96Nm8CcY1tsY7uPgxr2Ups0HvEyQ+sjCafAgKQi4=;
	h=To:Subject:From:Message-Id:Date; b=M20vom63m9wlxRikgtDwDd4LPFPPOrBuLESzfg2/nnYo2Pw9HnDgIw97yopXWeL5gepyYkkzcQfcu4fp2cTWNeIcSsB4Blpn/wjyLNE9lFrJFasCYa+ZZaTmiVOSUljWQUaHa0ba3sN1NHLzDxWD6geD6bPsCANZpWbHRgP5cUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUfHedQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUfHedQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA42FC8B7B5
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724722553;
	bh=+oM96Nm8CcY1tsY7uPgxr2Ups0HvEyQ+sjCafAgKQi4=;
	h=To:Subject:From:Date:From;
	b=cUfHedQx/dDFWIuvgphGQHdYcNXe1mv5eeDqR60vOMZ0Ly/QVH3zLsY8W5jG26X4R
	 mF3+duEhyeLJkQHY5WIUljn4xl4M1ELbM0n7155Sd1fE3tA1KC8j/gRJhvVE8dt087
	 mlgPaz0ij8rNWW4yDYVQ2H8Qu9QP24zNTm17+okdAhbDhUu94WECr7iEa5sBLf23C8
	 7RYX+/MzR+iiSG1EbT/yUM+cvtnuh5gWFPwAOj8NEO5TE9/JPp21eRm4HNaP60AHD9
	 UakkBAn3Wz/fIzvhG6nKVp53pOHt/gcMzBsNiFVeGFv3W319yDzLA+gLVA21BVcorv
	 fsQbsiw2IGWDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92653C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472255358.7055.521719033104783233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c11ad8a7517373ccacfd44be79b73e121b7f44817156cba67e789d5b84afbb8
Date: Tue, 27 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724722553
