Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262D722F75B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751981394; cv=none; b=mRZKYwGL1ob0g1b82vt2lGSaJah8wo3W/EjSuNagNCqv5GZ/cjWAOUctu0EkdaAlq9M00BwczC1knKVlgeWMLq/C92ZXMZPu7IT/1IC4/NycdDa+cIE0YqTHyRB/WSezOnooeVETtkWOvfpIDL/9uwMtpisFRAw6tsnQFhr7Z1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751981394; c=relaxed/simple;
	bh=5gTMTh8rCbJcFbxRWfcXP33Tc6n/APiVDdedXupazHc=;
	h=To:Subject:From:Message-Id:Date; b=EfgUEWhmH4Jyd5gPghSviGpHHUAXE/qSKGJIFHNsvtcNR0VMNO7F6S90q519e5Z54RlHYENdm15L21QQLw4m3OonSPXEVKxB03123yK9SHDoXFwvViEv7a50JxN7zKNMsurUZbX+V5EKDLqhOra6mAAsh//eqMCJncvnfbUpviQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvVprDJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvVprDJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49D6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751981393;
	bh=5gTMTh8rCbJcFbxRWfcXP33Tc6n/APiVDdedXupazHc=;
	h=To:Subject:From:Date:From;
	b=DvVprDJZVAVVKmDwATukbA+W/WIJ37LWd4oewqEStb+N4Lw7S8MkOnGXa/LWkD48F
	 cMIh9snIxXgT3+sHMOeH6jpROdMVU9x50wV7i6ohN4LXeF2dakyHafiujsuLTx9wNY
	 7L7RHL6Ka748O12wnvBimuHsB035xfWxUZrOOb1jWfnDVLVlqKyP4xw8b1eA8RIjhl
	 EGF5bO5mwFQDfU62ATgGOTEny7lmy/HsKPEhPoXqjEXaJ6bhtm3I4/6ZycO/1o2BoK
	 32/C/+cR1u8VF2G3/fYrrBwPrd5VFLXeaWaiB4O/m24z5iUvKovQsxuPnulrTp44A+
	 HaQ8ArvGV9v1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42DC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198139357.27897.5579712377283158057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d96f99e0e9a33ce1d4cbf43687489ed06e8726f41d4d799fc33bd0be82348c0
Date: Tue, 08 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751981393
