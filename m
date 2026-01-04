Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DB13A1E9B
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767488634; cv=none; b=Hdb+6MJJD2BMgjakRNVXVvB0Qs5MvnC3bTkxk1KWwqXudus2SOXoSZMIPGEcH4mnUQVJs8IPl/67muiqYtGjcNfmNAPXYhwS9NfXHKCc7TlOUcxPBE+mUVcRmhtK8JZtBKy8FpBTpXkH3oGmjwCReM5beIBm8L/BVH5Hbd+U8Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767488634; c=relaxed/simple;
	bh=HgFdAD9z2rri8miHUYpAUt9SIY15tBFLf1lwIbXZrVE=;
	h=To:Subject:From:Message-Id:Date; b=BzyVR9qNMyWF1Skcv7Dj8zNGIDZrHdLeDmVXL87EPnRaYEYA5SebNq0oHJrfdiE/bXBpJpmw/3uUw5FbVpsqyzvhnbW0QRz/jfgZYA2c92xEQTbFIAhIV1NL4qZftpe3uQPC6tumyZWpgwdsUuTSNl+8XHg/hhAMJhPdoV/6Ub8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SegfB1+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SegfB1+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0113C113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767488633;
	bh=HgFdAD9z2rri8miHUYpAUt9SIY15tBFLf1lwIbXZrVE=;
	h=To:Subject:From:Date:From;
	b=SegfB1+wEZhXRoDRkXyNPAfqH4ssk3TEt/hmqeWlid+BDGb/iph+7B6XfQERKfjk1
	 zyIeTyLqiC42r0DnO9LUBekevvSQXEtI9wu3eMqc2XAFEBav0RouXuaW5TSbrDia3X
	 HpqqglgWCOssZkAkru8BXm3cw/K46InNS4NFakzjYcwnSq2YKoJUXt8zWxMxHCON8q
	 LAhLPPMlUdQZ4lIhybrQdtsYuehEQnGEyaECG5oUUNDT1oIYN9KQzZM1nhJ72H1t+6
	 HABotd00m+NmvMtDsbOJhzyVBeZgTdV83m8SmfLl3HxocaNywSeEdWyrxZr3D6b+/x
	 p7AX8+2H/yw0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E1C2A064
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748863357.9575.13324983520452205591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6027b405c8017af85c8f609e15a043763f55cd437a93a63163505b33276eb8
Date: Sun, 04 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767488633
