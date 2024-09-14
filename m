Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398B61E487
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726326354; cv=none; b=M2STzuHaD/3bdcxALPosOcwBFHFYjica+T/C/HbPgUmiJjYR79VZp9se/rKNIjC4WcRrKPj3gy8mvHQekk44tTkKj/mxNBveMxhoJNRwPxpx0WIL3N7k941howrV8B+YACvO2eD4ynljjzSaeKpB+uw2Srqzm4O58hzNx0mCkSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726326354; c=relaxed/simple;
	bh=UPcVQ5xepXaiNTOQ0wrOdY4XtpmbovLMqXcuVnu//I8=;
	h=To:Subject:From:Message-Id:Date; b=myASb1MksKCSirfCOdwcOUhd6Cvwo8J6iN8NuKEeeH049zbcE8hZs82RHWStiwT1TDjTD2FR6b1J/+SC/BKEJJndVxxkrZhOE1r8PA8lTuoUPmKmLXiPkrH+hPLYKPSd/CGN3FNZes/8m4GVUi09/8N/deHyas+PwynAVtVW3vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twRfUVuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twRfUVuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F38C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726326353;
	bh=UPcVQ5xepXaiNTOQ0wrOdY4XtpmbovLMqXcuVnu//I8=;
	h=To:Subject:From:Date:From;
	b=twRfUVuwNnFTFf4eaP/kkNuEyhmLvgzFK0qXl3i+/9hSGqRbGVG8NUvZXcvZnt+f9
	 EMzu539AUQY1yRm3/FfhS6igLoM2dP/Ti1oGhRYpnkf1pEN/WwW7m1zj/68s7zkvEv
	 gdwzloyGRFwZh/nb/bUazV43gID6QEZYFP7HOTfRHtaz1zj7pCQBPpPfIOfEDeZyFL
	 EFJvJbb69NmSrs6AyooC/9Y3x6MtO6lvOpaPyDX+yAmBcL5yfitfEM43EaDy2mMlkg
	 iotE00NOHRhLEPkJdKlLj7/WhDceaZI9uXvuusI4vFUTSbs8dMkDaAOsq/8+K/CLDF
	 nT4SQ2ZBc6cqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A54C0219F
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172632635361.16250.6805737056587734515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333ae949698ebf55686d048ce324a93d98f7dc70c7d3c0f25d208238c4cef14b
Date: Sat, 14 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726326353
