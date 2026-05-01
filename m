Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD981EEA31
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777601853; cv=none; b=YMQhcasrae/dg2TotZFF7TaPXOPG2LMarbrMoV/oSStjN8SYXRX1BpNlv3KwATAev+aqAW/IK/4+6QBESGKn+9n35+F6QfReMH/lSEyaWxhHgWcbS5opZnS65l03SXKdBisIpZc2xhZ7PBnvggz/9cJoqC7q2Vzsuc3EqVd/wCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777601853; c=relaxed/simple;
	bh=5zHTeSe/HogKtcVMPgfPizrQ9snIj569y0j237dw95g=;
	h=To:Subject:From:Message-Id:Date; b=nwRCqsy7aRKvYYq81J/mSVGn8oKDBfhgtC11YGawW74ygMAU3damwFcONxuykZOLG4PaA7MFS7O7NnFRMY6cwf9m8WpuWkkKYc8iW7K5nwL6yNPyctI1ThRQ7Ke9dTq/PJ4uc0EWqI1yYXsafj88orxkM4NejOMtXORLu5r70jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tsqlj/dW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tsqlj/dW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE73EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777601853;
	bh=5zHTeSe/HogKtcVMPgfPizrQ9snIj569y0j237dw95g=;
	h=To:Subject:From:Date:From;
	b=Tsqlj/dWzEoVX4qRUSE0gQkqzCySA7l3omS23ouSCHeMiiSFIDzId+g8o9Msv4GK6
	 jurfSaofOuddeQTz9HXhYz2qlJ1OU7HzvcXpzOh4ekYRoMC0A7gS2x+MylXKL5E5XH
	 n+rt9fmGEEL7JnInKNt37zRne9/jUGNYrIiEc+YCULxSU2fPzOcxI1QZ1u3iSU4s30
	 n1M5XhVBMyNl4cgdz4nPMeRiyJZ1438eSydcuNhb1xz/rQ3Vew2Zp3ZLvVtKmcAOlj
	 W2hSQXx80M7aS5B1XuqjijX2S4BSnip7sVyLahHiJhkuNQk04/QUNnbFDn6wrzDtnd
	 W+/Px1R/g0qJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF895FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760185368.28778.10768361091260666213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab13e93c80d8412a60e6548fc8359465300127644236b4eac1264ecbcff0ce2f
Date: Fri, 01 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777601853
