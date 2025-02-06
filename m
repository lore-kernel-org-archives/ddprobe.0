Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382B72147E4
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738842954; cv=none; b=Rj1ErV09YCtMkKS/LmhQFJDUG9naJxHDJN/4fW5EUe7C6mU214+Svfeov8aaYmA1O5T6gtbvYTSXgbwRjWsoAz9FxDhHVL4Zv7wY4BuNFTRusXSLbwkniKMouT86c6AxVT2FlCJRgN1XnEFcIaQjIsXftBptH77dmxW3L0Bqr/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738842954; c=relaxed/simple;
	bh=WSpQSYIfIJlJXlBHTqQX4LxfB2s9Vo6yLFcCNB/5A/k=;
	h=To:Subject:From:Message-Id:Date; b=rZWurmGt8iNzYCEOleD70EaiOwIcZT9fi2TFKhhs5fsoDCx62G19IsKd9v8MIGDzydFTuoYhtRso4oM1roWuJgDpbQa91Ff3ujNPWO5Bjl/fIz6mIE5sAZJvpWPo5vahbTIOES0O5f+NG8q6MgVbiSOpovHCVivb6GL0yDCaYyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nicz3stt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nicz3stt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CFBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738842953;
	bh=WSpQSYIfIJlJXlBHTqQX4LxfB2s9Vo6yLFcCNB/5A/k=;
	h=To:Subject:From:Date:From;
	b=nicz3sttpkW9HO9e9wAa+cye4HRWQvZ6iX1QYuKEl6ra4n6HbxDsBplsV+oSiMK42
	 raIsItnPzecltyoUe+Xj+pI5sMFWtaYzJZUt1IYY9UDSDt/2JSjhT3kiVZ9PMMMaTd
	 OtRNshDs41MAgmbHGjZh3WGKcIqaWpWq3E2mO5Lk6a2WmG/U/Vq9JymROxD93VTW1+
	 VMFGY/FCo1Cz8J8YqOiZc8B1CFZlD7MzSb7xA4Ntwtl5BiiiAR/rBFfGEuZbxLNCYx
	 ODEAcumej+c+CRIZ44d4mUehkIkleDNj2HH7ZSWZGeKNeHiMTN96b3ssO8WLiVOOan
	 ng6qXbqifURkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C03C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884295361.25470.17701156374341114751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e89142c30685495216fa845d6fef3fcc3fed96fd1320caa4dab0bf1396c5acf
Date: Thu, 06 Feb 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738842953
