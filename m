Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F9C27713
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751816994; cv=none; b=a4PWtccWRKvpoVF4zU0XnbziNSGGc2epsBzf9jdKicL7zfnHo8PcbUiZO5SLeRs1vWpnXjl7sNWOMdYRqUlR4R0V7+TnSWRfiyEb3ghWyWS70SlZGICgfp8o2Fu1NIvwvUg2Kwo2dKbu2r+9HThsVFXf3HXhTATu5vT8/g5utcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751816994; c=relaxed/simple;
	bh=Juqk/DzdXC074SY6h+8HIuty1UeRbloJxtvxwCD5nGs=;
	h=To:Subject:From:Message-Id:Date; b=GAB+b0UCNSG3LlSTjKsI9KdOhnw2qLq9QH1/8TD/VuPzS0BbZ1BB3ax3CknIRyGkfrsq8De76EAGwD7zbHvlOevB+bTNq0kf4dGjw/pXxRxt5P/61iJR6+WEEQ6ju9Fa6crxEDXSWNfcAUwaznudhgH87luLfUwn1b1jsqTaWgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHH5LiNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHH5LiNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B64C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751816993;
	bh=Juqk/DzdXC074SY6h+8HIuty1UeRbloJxtvxwCD5nGs=;
	h=To:Subject:From:Date:From;
	b=mHH5LiNMKPgT8ayiKFJlhFRMC+4QTgfV6mJ6MVL2zVlZJEL/KHCS1sC68lWoq6DEk
	 /EP1DstR5AFq7/t2ZiM2CpYcEICXLVQEOfw3rGbCraK21rqkcupO5r3hPZ+a7Twcc0
	 SvhTDphRmHUu3+/UYKmwYY3vI93Zg/dRRWMQoBxA4nItXyt6ILCpAZWPux6e4tbI5j
	 8dCxr1yJWF3D3E6Ar72s7Anac6DGE/tiKzq34jCOl6Aroi9d4djlni1C463Q+CVbso
	 904PpCuh3RnvRO3Y3WPeqiHumuiASQzC8d3729gMJ85/05xPQyHQa67QobsSc2f8VI
	 MMxVQfl4dt9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A0C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181699357.6110.17182722552768279639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8465bcba1ac63c2ada542cd8c3fa5b0605c7bea57c23a48eb0ab85769983655
Date: Sun, 06 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751816993
