Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C51A32
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725323154; cv=none; b=C7j9/w0Jv0Y61y8V5/1eP/Yr0g7jjpTWR8jJBoyWKQoQk4GyhOpEKuyjfWtOhY8PJMkq0/cCUjlItAshZVazfamSBzO+GT1NlYLYLy4tSL2B+/Vi2IAxR5mQkhrfuuAZkR4hBh8PnCSgH8OdKZY9Nus2gHfNHngzMypLirOLNQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725323154; c=relaxed/simple;
	bh=Khta9pqhLlfFgm231xLxzSnsiS4htTMxfLoCW+9iqco=;
	h=To:Subject:From:Message-Id:Date; b=SSaE4ROdNkw5TB3+p67+SUGuuz0s0JgUDdRrIp67fAMX7j9jWXTSM2C2A4FVDyRyRxS+GWoaHzV221VNSdg6u43UrvMIDW9xFbcMg8k3LSvgY2svsPWXfmGKFCy/JU+QozpFPmke1ZfZEKbNBboXXywsVljfpoQ2KdbN4cPopP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOjI3jsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOjI3jsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADD4C4CEC2
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725323153;
	bh=Khta9pqhLlfFgm231xLxzSnsiS4htTMxfLoCW+9iqco=;
	h=To:Subject:From:Date:From;
	b=OOjI3jsI9zKdQrptbtxFJoaa/VngsIxy5BGbP0OWeFRJVtj/sNDf5WeTf6vKTUOoT
	 rrq4+k20y5Xm5jJZ7pbgRCfZJ1YNAr/pwaiE9xdDQqKgH+ECF368KijQeT4X67v/fn
	 CVgXJ016yM9MqHIS1dd/PXy7Dy7miuUFwN+1k69UfvT7pAp22pGeNrkPMRsshcDbAs
	 r+Dd4plLGXhWQj0ygyf5RzbczxEjpVoadLRhbFXlr6eeHMo0IltnDZxqthObfLeBvC
	 UG6I6Dk9hq1giJTxdbeuKS1vgVpG20F8J6Rv9bjQXCfWmlNIbXwtiNPTdyCdBx0YMG
	 N6Y7W3hnPfhyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95173C54FC6
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172532315360.22201.9325694521847445947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d44a2a7b0822263832d107b8e47d57bcf185261aa369e273069663a33c23e6b
Date: Tue, 03 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725323153
