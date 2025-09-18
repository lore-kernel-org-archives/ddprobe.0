Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7C62253A1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758184194; cv=none; b=p0nRP532fmbcb2cj1GLyGT4cpEBhAAUrziyiW4L1xFGqU1ygmNjusO2ols+wH9CxcZXeQGb0YYYKVpv0TraVCPBYPriobpQ1f6fNBof3hCb2Tp+huNzH5vn39/8QyVt69W14+NIcn9ypC8Chz9ZH3iDrGc6e8J1xmBML7Ovcfy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758184194; c=relaxed/simple;
	bh=8xVTZZE58+loWq+ccCYq4heq81r3kyw58z28LANO5o8=;
	h=To:Subject:From:Message-Id:Date; b=YM6tRHSL3LH1HJiFRUfPr11KWpKRaI8smRBZFoKYr05OLkhypaod1nv6qTIK+sBLr/T5DvOY7mbUpiHzKUI+sTTIzoHflZ8/LHBdL0/LGU/7RSqNMzSlxW0/cwKYpao3ictQX7UaPh0NgaKSBKgOxj2fjhGlGJ3QA+W1omQReSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdGhycwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdGhycwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA169C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758184193;
	bh=8xVTZZE58+loWq+ccCYq4heq81r3kyw58z28LANO5o8=;
	h=To:Subject:From:Date:From;
	b=bdGhycwg8tz+mSlqsbp+VYxxd7mWdrBOtgqlW2ihu6HR1uVNs6Tm2Swtx8Fby1/zd
	 s0KZ4PJ6rYhtZCZX/53gSWTlEaL7jbZ3lOZjpqNVKkwov0wwtGvTHqL0iC3uZyLmTS
	 /nc97C6jhZR2YfIzyPN3V+atBBXSQZKEt4iODpQtIdT8+LOEG8g/ej+b6bwYQgxK8u
	 ddBzAseR3OURSoxdjzUwHcXoDRul4rXa4ZdKhCtICVtSUkV4PGVSM0NluUgv5kmCoP
	 O8KLmqKu7EKR0yXR6MX8L1zIzuirFhhVE9qAOC9nr+a/+JtZNoEwuJaK333oL8+vOi
	 ntcG8pSA2WCcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9571BCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818419360.1211.17387069687555818082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145035c99c8709ab5f8aa91e637099d96bbe5671f11f11362c2699e01e24fa9c
Date: Thu, 18 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758184193
