Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE20145355
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751795393; cv=none; b=K9yqB/ZHaGvzRCRDuxqUGLE0H6GT+hpwzi4OalB2VV0hJlKH/Ol+yWt+tyMLEHX14ZOIBVkH8DcMYcrINPbe1DtAw/+pgHAfUOzbZxuxPR5NwTWu8bAPLmuRfEbi6MoBXDjQYXcVXxV2wMsvqb/KZiblxTGPrEX+7hjz9Sn6WqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751795393; c=relaxed/simple;
	bh=OgzaR3hah3/T0183ihiI0AVwbI0BMdz3CGAp+7tL548=;
	h=To:Subject:From:Message-Id:Date; b=GMWJ4t/e0lBDRebwv8gmjWeVkgSoIwcdFL2S8b30VG7Yww7P1nGmPk7v2TPCAqFLD0YOwQFk3Dszz48yAGDTpHeXS1duWhRcLl9eglyy73Cd1i3HuQaoi7B9wD7qOzX1ntR+e7n2WZVAjhV9kL4+AQNNbtcxUk6STRrXUv9aZJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGzL2Ie+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGzL2Ie+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCC9C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751795393;
	bh=OgzaR3hah3/T0183ihiI0AVwbI0BMdz3CGAp+7tL548=;
	h=To:Subject:From:Date:From;
	b=sGzL2Ie+cE11TDe+DaJul140E0oSvaxeFpnLeXyn6gzh3y8VxCL1+tnsYcB9408+n
	 YDe8fsnDvAVqtfdZRG4WNG3z5e+fl3V2nh9lVKsN7GgKsAlot+KqMn5d8vXWtSdPbi
	 W7s7jZJH0gOfHDWfJs6C3iszmje72sMpaNhU7G+NFSx4ppmsvVYhPsMc7TRw6XMHYi
	 XjH8wgkE+B25pHRj1Yt9n4OpN/64nGi3l0uRxJmirUBIBr/f6vlFvHURRWPwXvdJeh
	 uJpnxRWuRcQwhtg7jqM6OWX1ee4S1GT8E7UbsivDJU5o8w5RIPcjVfZVQJqcWPO+be
	 vQtL2Rahx8s9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B89C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179539357.26389.13837182650303737836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4aab7ca69cab109bb8c355eea41bb42af045f43b43d8335a860112c1a8a2d33
Date: Sun, 06 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751795393
