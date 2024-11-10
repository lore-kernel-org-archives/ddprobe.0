Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EAC1482ED
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731220554; cv=none; b=o/Thk//bavLIbBuMIFx7xHOMmTHw8Mkv5z+bWbliuISRnNPezV4gNF+rxKO/IjDjHLCg3kGswjS2shppxXPvMOv0Rf4pjJE8gp/S3H7JT4pSfJDm7kbvAq5+INYpkboLaw8jfXbCN6Uk2DyB7Sza6tYYQ3RGAnJAglJZ2EoKMj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731220554; c=relaxed/simple;
	bh=RWizkurikVxESv/BH2Sr0MxQURrASMZq+ggYfKmpSbY=;
	h=To:Subject:From:Message-Id:Date; b=ZQQg3o8cVOZxbCtu+kHBtsGiFAp1QWznL9Z1I1keGnixtZh0FPlKjUjgMHxo6gij1Z374XvWgZGEM9gD7makRMqUhxx4e1qIm8QrGfp7bY14tMTWtchQ00v5/5/+LqF43ifZlhZIrrcy0cJdP3zdjj/70eIPDEPBLVwUx7kTUJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9ypCG8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9ypCG8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E6C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731220553;
	bh=RWizkurikVxESv/BH2Sr0MxQURrASMZq+ggYfKmpSbY=;
	h=To:Subject:From:Date:From;
	b=H9ypCG8GaYAneDtj8DowQaKpvAPUkl2vxMeFVGL/jausNTQX2uBHW7c7/UaK9/KNR
	 7UvNOZKbzeSVanywX8evD6muRaO38QALdTlvJYKR6d8UwcIfGgKuk0fRwCJSYUqU5n
	 qPVvsFyPCLBMQtk+FxJbLU8Bpg48SNdo4WFqzoDqmrF3gHOdTanMRN/yNmm/kWwHKt
	 oy0F5KCQsUCH1q5M1PnK5xncfKuZY6QQUMNV/hV4gTCsqstVRUM7AQkCAoMzKbVXjI
	 AiVasvUScVpad5TYrynb1M2hEQdcP778jfbBnWOY+Id+dJ69e/KfoRE2Bq/uy/SrT+
	 LxurtX3DyAuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B2DD5E39B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173122055358.32175.14409430538769015137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63fbdb265b64a170b34c9b93a40f0603ce8b0a1dd5f675ffb66f240f4326389
Date: Sun, 10 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731220553
