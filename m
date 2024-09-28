Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198091DFF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727527554; cv=none; b=gnyipI6sWGQLn+KubP/kbyeas4OCba6+YyvDjNtGYe07H2d9jDEaIYrDccjntF57wLt89sBJi62HiOVR0xLi2KuV09qtoBarm3a7XifTKiY1XzTTo9YbPpB/fjc2mRjJMpnOR6VNpyej2AaVFi2LlkB75vFc4hT+KBhdqD12xB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727527554; c=relaxed/simple;
	bh=/NuDlQDizlInw0lgv2784lhRucUZwtW9jTJP6u3B364=;
	h=To:Subject:From:Message-Id:Date; b=bwlCMSqeotHadEmonPcn06FMcMI/Sd5KwKpudRDwxF0spXDqK80FMs74BadlO8VQkppORswtFYpwR9VtlMQD2UQfCFDD/I8Aqgx+ZBJklQr0W/At2MmnLOlwb06fZOd6lTAvFUKpe34iEY97QsJwX+xS5jGJ4YRCEc+BxGF4IG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7F2SKis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7F2SKis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A42C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727527553;
	bh=/NuDlQDizlInw0lgv2784lhRucUZwtW9jTJP6u3B364=;
	h=To:Subject:From:Date:From;
	b=P7F2SKis/bg1XOF9gs28rAKPCfm3R1++WnYcWQzl7RIsrwvnL0u8HwAdd/3fEFqrg
	 e7cGum/QFhBETPJLNZl8PAi2q4gwMjnENyW89d1e0NaY1fneyuLGfbZ7+azPXCUc1F
	 BoWIIqfAWuAwcSRuPjlOtfVsxN2XdK07UfYFCwDUvNPJ7QCtlOl8AZBBawEXlC8n80
	 fmwiDKSuHp/sFWjL93vH6uSeg6seiwJZ7Y22mru4Uxina+B89HRv3CJZ3LPBnAGxP4
	 E9gZO/taY/IV4lFu0SwJ7EFaUNj4EkAlO9l5dnjkm8NMpd6e+pQKBuhpDuOv2r+pe7
	 irdcs8X8CJ6Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94495CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752755357.21730.13694469318981839559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836a2a95d0f8183517223dc2a3b66fe4c94e689e99e410cbe113a73a775a24b0
Date: Sat, 28 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727527553
