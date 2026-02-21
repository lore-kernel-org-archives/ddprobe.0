Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9D030FF1D
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771657494; cv=none; b=bAbHEWHmhl0QPzJ1aYmLZwLy3O9bMgSUoXud3+/+luJcyKu0mhLZEukPoc4xOUmQLq+YS9OtmxkClbGIIrtAUGsnNuKO5sNITwfmq6HpR2PcbC85WOkS9kI8fh/oZIEwI1NYOq+yq53ZtlK9Hvk7ed0e4R7wW1j6JupueugKQNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771657494; c=relaxed/simple;
	bh=DUduL81gYamHeETK0kD8xZzZOD7IIHIfm4MA0GJHxMU=;
	h=To:Subject:From:Message-Id:Date; b=fIZG8CX+HAG779ZdzAIiZ9bo6/+JQC0hDc2NB5kVgX8QHYTdXVGcyS0BNw7KYLG71l0j2RTskKIKVOvlcOrSPMYJWV1lBIDRTCrljc4HkdqIPkcxO5D/H7CbvRRw12kCGXX3mFIAE7ie7tbmLO8muTjivd88/Y8/pZfpDnB5OPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN55yfmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN55yfmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0D7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771657493;
	bh=DUduL81gYamHeETK0kD8xZzZOD7IIHIfm4MA0GJHxMU=;
	h=To:Subject:From:Date:From;
	b=NN55yfmWt1JEGThz6U3jM7574PMYG2TEUBRhNCvrOHdbfD0sjhfu8m0HV0TU+EfmT
	 LGnV28krTnSiJ7vKvymKXzcAsh/Y60WA4E8kDwvq7QgSKYHiRJLnBS/PZ78MFmNVnd
	 6NbzRUFRuzzubDftuV6snFNn7Q0b49ROmMBPcFOacxO+MSgWLUNzNi6RU0qEEzWl21
	 RDLyNOztN/xwDTSVFWR57RP7lj6zLfRoEQf/SvfJxDf2qYcqdhb5O9M+3EpDGTesqL
	 KJc7MjLo0hAD+6QnWecGJXcgjhXvLrp9zJF1EQq4NfJCEn9GcuDwIEKAvUhow953rD
	 zquMg+z1Czk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984F3C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165749359.4131.2567905798300272038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc3cf268ba08591077fc65e25da4d4595e93df75082b9a94c59e9ba2c03cbd3
Date: Sat, 21 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771657493
