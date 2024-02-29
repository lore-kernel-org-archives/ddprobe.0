Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3437CF16
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709208497; cv=none; b=WTHMrRKaOybqkN7KzPGFP0R4wVJMDCqBgN73cdZLPGW+sXC6YFijITsk0qVuEJnK3F/PU1esUrZm8mK+EMWmj1F23MXeLGjyegkKx+OhOFRxabPTxzutQhujjzFTOjGoxeQ/IOVj11s6B3+1jIfA0jCwiacbj+wB3sJVjYDa+rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709208497; c=relaxed/simple;
	bh=ZiWbBrGoL5xnv5yIQ0Y4tHVM2YZTxWFM4+D+dtVP8nM=;
	h=To:Subject:From:Message-Id:Date; b=HnUijkpSvMJhT8hGTVlqh+nlngdFozxOdNWnR6AmEFAW/nskRzDQqY0TNvc8U9/4PRdjoLThjY1Ee8aLS7+d3+GH9+L63hTLDNI0F1sXlHOCrcWFlD8F3K0wVeLCHhoN1v8FmbVvbQL7eTMOF/nRy6KLsVpxRZTU3jeFCOtW2R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvCMjvxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvCMjvxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790BCC433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709208496;
	bh=ZiWbBrGoL5xnv5yIQ0Y4tHVM2YZTxWFM4+D+dtVP8nM=;
	h=To:Subject:From:Date:From;
	b=mvCMjvxm8cMU5mVrvVMcC9lJ5aYrLCfuPM48m57ZdJVmbQabnV8l2CIsMTABDB4LQ
	 njbeibdLfWJ368Dh935F7ycMrwf1/C+GCyek9aMJo2EMNrXRpZgh64dg1gi4SPzA41
	 Tt/86EWkLQ/81oKLzmL7v7nczTPnqJwTu9DBdjQk2ypZEo7BmLS7pM0C7XuqP2aAbo
	 rPOqumVju6dTs/pMCXJyAyuFU5PB362lzrbbvjBq71i0opFdR8TVOfNDnLHMhXtRj6
	 mqys800QnqLcwb0tXzTUPTQTPmFEocPqtkzN/LnFoGxmelXwFHoTWHTpW1kYqtQaTF
	 MpI/yHQnkt+2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60744C48BF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170920849638.5305.9201769962281306018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83c33bb56bce45dc23c8004659a3608da7570695fa34eefd53c08889acf33e3
Date: Thu, 29 Feb 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709208496
