Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323531C3BEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748903394; cv=none; b=sY/v28/UXblMafv5k0oSMd7+LCc4POAarAD13az/+x/C7bzJAX4bDZi0UK6d2AsXwCLuxLbSzSpx2s5KYbNFOm0ARZpnbjZ02Q5SS55Rqbr1lEdRKZl9C/1NmwEu1wpO/i/tLqbMM0be1qvwtWLdZ7J37ANjmJl5ZiGsuo8J87I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748903394; c=relaxed/simple;
	bh=tID9t/PbwL+oyK+WBCT3p1nZTS/vVvpIKRZOgbJPoec=;
	h=To:Subject:From:Message-Id:Date; b=Zge+sbCK1IyQDN2BqJq+5U96HErVhpiiB4xMgKnnNISl9Dds7MjayWynHTvFVL2YgVIih1Q+t6F5GtOHlHDJ5XusTr8DYUJaoGRl9ouFCSsByEyeSvQo7pYngB1RFZRDqdNRnBc8hEdfUYspqLXwcQ9mOtojl9OoO0qIuVRClm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWEG3XkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWEG3XkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E47CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748903393;
	bh=tID9t/PbwL+oyK+WBCT3p1nZTS/vVvpIKRZOgbJPoec=;
	h=To:Subject:From:Date:From;
	b=fWEG3XkAglRLCBiHJPMjIRYN1a0FJYLr0TScgxO7BqTE9rgoyMi/2FDz17XM8K3y5
	 XWMzEvKAek76HiErkvanJKa1lup9uutkSQQSeqkfIpXE9LFzp78GoVLUkXyhO4bdg5
	 Fk6mhxGDoyJc/BfRwzNkax7V7z03AeSI9P56Pxzrgf1u9C9F1fP/LJESXrxB4PXGXZ
	 7241XUvdwDmTs6fyNkE1oAHnF/k2zRd9NUgExRKTTtw1P5YbkE7CU1Kwy4FlvAC8z1
	 cQimloh1A8ItSW4MK7fpiiDUHjLnN3lgNG0DzzbWpDsUk53HPp+pXYD21SSd4QU3yN
	 N+13oUhlslWtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3EC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890339357.15442.13485794277056758003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04550cb94359672dedeb8c0d01a2a084ec311513edba6db27efc3b1f2b4a007
Date: Mon, 02 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748903393
