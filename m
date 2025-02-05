Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C17A18A6BA
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738799155; cv=none; b=n6z4oJtTwSXP1AaBDXihswE8Snnp8ozOC20fEZzxLCGZBfQtOysAloGmR/1DqyZssThUIcAFwmb1CZroOSasTWHw12j1A8a91z7eYWo/zrv77CY38l+4o4s2EV9+uD8ojnTGC3fJSDQNN2SMFdGTgYuRp0v3A1XuLUVSYgc7Q+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738799155; c=relaxed/simple;
	bh=GQApcJU+EVShEPfk76JT6N086TXq6RaxQLbhHcsupSI=;
	h=To:Subject:From:Message-Id:Date; b=Sfx8UU1XBvGl1w42/8KRDddWnbfLTB8Jcxpeo2TPpfRFdXzhGEfhplLkGECAxADRnr1P3MiOeH0Cs6YIAFBbx8V7/SVziTAQwarsOKcKRn1f7nBjWMoMU7uZkSaT+hluoF/QQW+c6NKmEegJWXtJ+Pf8e8fsfpbSnmJs7fUvfEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYgXIeiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYgXIeiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC93C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738799153;
	bh=GQApcJU+EVShEPfk76JT6N086TXq6RaxQLbhHcsupSI=;
	h=To:Subject:From:Date:From;
	b=bYgXIeiv9g8ZrLq/eXde8yzazmtGZFMVnyRUQW75FYEsjIRZQzdn921esX4dVxvic
	 pbus4xubJ8m3TM6rUuFBdDRL5fJHvbcpBwu3dt6ojyOpEUHXLEzV6QOjzyCCowpRlw
	 kMCMKKEGXNoqGF595aA71LUrm78p5mRdmZifJCwB3SnflspCQCADMWlR62jTvpmzjV
	 Lt4jzZvD/VXqZSjhU/fSysFNrelwU5GMaJPuEu3ba6hiUhCdxLgobZoRwTTib4MgAF
	 MGLi4JcGJiS192sro7nPotvEW/oQl8KZTqv5BawyX+oaqxXkkQUg+dHuoeviBR3hy0
	 kcZHkIwK7Prjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980BCC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879915361.13782.5421542188612680904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8689ecd28bce2540f494ebfab668ec36a0c260970720a69457542825ce0ad233
Date: Wed, 05 Feb 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738799153
