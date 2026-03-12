Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E3F1F0E25
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773287694; cv=none; b=WxeA9wSNaaCdAtwd0qaHOO8x7T/+mS/eN9kElP8WXi3hMa6owE1Q3ymQ11ZYI2KBOJlYoQU+iAbOF6YzLsFWkSIfHgv5dldXHYsyoarMTJS4XG1Zs7ovekXS0hYTQov0x1L79tjb9b2iaswubj6ns75JvxFyLIBndancSPp0AeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773287694; c=relaxed/simple;
	bh=Bhrs4GBhbeD+o5PKBKdVgn94qrFzCmYBwPXIqNqoGQg=;
	h=To:Subject:From:Message-Id:Date; b=jubz/tLjn7VGLLt1JpIU7WBjU46gEjmD/p0grwGXMm3FRp1VH/S+RQCXkfgtFLPu41bkvxk8TFW9YEpiCDG90uQ0x5vOJEa/xQezoSzxP3Q7j/1waUZiP6DjBMENLRJiKl6b8+b2SOB45iyCvICoF71nchLxDAlJLNwNAMBDea8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKO5DlUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKO5DlUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773287693;
	bh=Bhrs4GBhbeD+o5PKBKdVgn94qrFzCmYBwPXIqNqoGQg=;
	h=To:Subject:From:Date:From;
	b=aKO5DlUA0LtHR1Y/y63R15+gK/w0rEqf117xrP1uWSxRb3qebSLAodzpw9V/0F6KL
	 j9F6KVVJdoaw/R4coYl014ALbvAdhwR9X2+y6b3z06wlSv2hFu9LwaoqyvQegHtGrX
	 6OSgASivcnHT9EcXUY+/RIKr9YIY83DPUG52E3GenpaAxgyMnABMmj2OS98N+IJ4D+
	 WfXv9PWFLOAH0lI+4oJ3OO7Xvclm1Im+Kw9re5vpYUOrUni9/b+2ubtW9gsmKtPrxi
	 piQErjNUw3eSXsB/200eva6bI9mcS5fYiMCOxG5V2QtUsDQBo9O5Gp4sMxzs7GM3+J
	 K6xgsP3g9+hVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C8FFED2C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328769358.30501.5073237418895164985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b25c3070bdb8a79d2d5afea6d66fea599b3db92c0ed52af10dc9de25715463b
Date: Thu, 12 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773287693
