Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA0C2853F7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771791294; cv=none; b=Ia9WvpDOLgj56UzfVuyKY2PSahTd93B1PbSXz1CNYalaxUaWVgaqycSgo7KPj/IZcaeAU4gxqFkPQvzhGEcESaUKyTvygvD2j3kVRX7osYg6DvTXHDC6VrZZBipwYwXuA+dW2vPwMNuiuX7hl67cPhCoaMwZVrGrmhPBvD57boY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771791294; c=relaxed/simple;
	bh=MA9JB7KrT2mxseD/dxm3/l6mQTG2qYXKC5M4sVegLXQ=;
	h=To:Subject:From:Message-Id:Date; b=Dl7dsvzBy8DMHqFbP0SMc8AwRIF6SiNtKTFAX837j8FJaqydx7EOg5GBBbh9Ou9QnFyuVXUpU+0aCrlnEQEiORu+W22x8t6pFkKQZmqTq59RdnUbyqL1xDHHB4lQKUuAtCLr4LPW9CaBUBhaqcc26jtCicz90xp/LsNLUPP8Y6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtRxdHzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtRxdHzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD61C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771791293;
	bh=MA9JB7KrT2mxseD/dxm3/l6mQTG2qYXKC5M4sVegLXQ=;
	h=To:Subject:From:Date:From;
	b=TtRxdHzQgGfMrkr0SPLzIUF7Aj59eIUJg8c2iBaL0LKr+p+r81EiDigDPPz3fUayr
	 sCXa6asPyLNg+gjaQ1OAWJnvl9VUmrRRqFO1gckVwn91QLsWuDBHkeDlcaD1WjqdFy
	 9GYqa87dVcGZZIuFabymdj6hKULt5xh9SeAamxsfS/019M3QjZsDvygnGAJSzfOwmW
	 SiA48HbOF2cY6tEasME9DNrSANcvNpjomcnDjLZPNMrW4JFoSYE7EMlLr07xDRvU1r
	 OHIKiRhijEqLmsujrJMiuHnVq6j13UgIgb19K6SS3TSKxX9K4wrQHviUiiG/atrYLh
	 CGssgH1xmPFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959B3C636B8
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179129358.31924.16015148543960474209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa992ea93aa2bc2571a69b4249e5cda70f587c2966ec3d9e54db737b214fe03f
Date: Sun, 22 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771791293
