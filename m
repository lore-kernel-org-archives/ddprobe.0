Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6F218AED
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720125323; cv=none; b=jL0qo0nGuSw4l0laJo87GDKTcJ5dI07It8MavtDVJANV9jCj7VI1manoVNPnyHNHmaOmbmfz88nsnrfdNTTgeTcFPek7aJOOlDup6bquy/6DLuTO/xVR+RZxCe5/yvyrWgwj4wUhRNV6ckM6Af4npRjZsehHczm6UmQYwv/XSR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720125323; c=relaxed/simple;
	bh=FSRIYsfccoDCRU7FkGnCWkg4y7j3TpqV2w1zQ8L5cII=;
	h=To:Subject:From:Message-Id:Date; b=PQYw/3YC2zyM52SfvnLB51Qe5s2fuzRLJkygxKixYfnNC+hWUpb+AH/J7zyPPNLln2bhnb90g3VsqPBXwtRWn4ka7Yeh5UASoZ8RHcX4UUZSX4OKCCfMwIOfqR3tz0cGakcnNeBej8j7PHqVA5ppCbpmfl232DxuBxjSDUHeHJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZzSnJ0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZzSnJ0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A0FC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720125322;
	bh=FSRIYsfccoDCRU7FkGnCWkg4y7j3TpqV2w1zQ8L5cII=;
	h=To:Subject:From:Date:From;
	b=OZzSnJ0PQ++yMEYaV1zRkFGHukRgGVyhxNH4Z8ze3smQgNc7x7iotO0slBsH4sLqH
	 xJMtDZ3DxlktAvb+JRIOBNfeFM3UaCFIJKoRCYRUeJLYygKEnVd8FXulsXDz8jdD+N
	 cclMrS+ynqT0L1TN//IhPtfRF1mHiHNR8kCezt7KT9bboNB1yDqjYhucUlmf5X22AI
	 bbZolfp20iw8RYlQawqwk3uixUBwb1gvAVEwQpJkbfve9KIix3T/Inc63EPSEc7Xp2
	 hbHSCfsE5J3KoGGoxxjQg+Sn7i3FUgq9fIV1eGymmEzTE/Kt05+ZphsKNpW40UUe98
	 bIBpP36EZp11w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA480C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012532279.28620.621680724245649976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5453e3d3c9f9c69c273ed73cb9b412d46f5216c18f1226ebc62cacc379b2e3b7
Date: Thu, 04 Jul 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720125322
