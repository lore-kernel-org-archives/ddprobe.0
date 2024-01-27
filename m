Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9551F946
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706396896; cv=none; b=gkp5jGxf7OqV7cQXc4j/pYD8ikUVSZ6ej5G6y26w9wn/+9RLFHFn6HDnr1Hc7bGvT/LUpBd6IScLCwAsTGo+x39O/nsGiRawjWfe2ach53aTcYwCWh38u6L+aMvK0k8i9SpydfhDP0kp1VjlNRqzs5LlRw5ACW6c3cexZmej/24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706396896; c=relaxed/simple;
	bh=ahxKGUujyYKJH1UKdLmt34x/b3jJkP0BiXDBXfbwVJc=;
	h=To:Subject:From:Message-Id:Date; b=cMUDicxzBH3mo51/y/ZERw1iaNWu7ysAMUooqhXKeePwGbXxqO/leyBzfYufgX2Z0KD5bTgYIrlKgBNapKf160cqi9AMSHUulFEZafyKBZ1/d/14p9vALf9x9alhM3VowJ/xI2JkLv628+yyd9JwiNFUPZorDHu5q2qO/xUE9yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewT25G9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewT25G9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A078C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706396896;
	bh=ahxKGUujyYKJH1UKdLmt34x/b3jJkP0BiXDBXfbwVJc=;
	h=To:Subject:From:Date:From;
	b=ewT25G9pEYQ8yz2Sronh59AQF7VuepHRZWlfM4udSkqXSEKWJ68k+EwG1VPQUvc2d
	 HElg92WHKHYH9EUCAERE/t0VBIIfCXZn4ww+Xv5qx/ZXrHbryLC8a5sEAcsyItvQ+q
	 CZDh0KluVDJEizC99uW5mUBqooQD+w6zDx2FbjkbvuMY0GBrVmtwFa82FpjXlkFOTe
	 M/DYWMNwdBNt0dmnLd3zhxv+9t2RBynI/iojV19pSdvGlnD3VTWdKdeQ+xmPghOcOH
	 bwV5Ye1exAE+RsFj6mmivWFX6fl+jR6UvaSW1BO0x7UrvgKuFJ9+GitCoo3ouEMQIa
	 7D1DmnSFbs6Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C13C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639689637.5864.12365233200964982579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ac08274462c677dc9fb8da496400d2928afc4695cc10df95ab2d21e8278837
Date: Sat, 27 Jan 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706396896
