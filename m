Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEEA8462
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749092994; cv=none; b=ADoiszI+ROBzqoGv501Yqg8g+NiIi0AC1xfIl5Ci6c1kMxe02yhdErean3T4JMBYgISKe3Pz5WM5Nj0b7w8FvB1VGCsraMO8dnzUBYOVCzrs4LdPag9aFZUtKbCPvHwwcLcTQePYUMB/KM7DVP8OVfW3CcIdLjY/tTIvqhrwdPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749092994; c=relaxed/simple;
	bh=TNzRfvZ7SvSDnkyA01jRiE6BYqBI+Qgu1Lil7/uiTt4=;
	h=To:Subject:From:Message-Id:Date; b=XrllA5/Ap7dkIK+4NRzY8XJAlTwypxQz15ioCdaWt7MiiETOA2jTvj330X3Rc6C0YefbzW4yps59AUPfDALP7uo2d9R38mZQ9iMJMnCifN0lUBac3wE5OvGErU3lPPbup74oM8KGXfqUAyt2HwocIwISCktPVlUlMBajc6w9IbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eruM2Q+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eruM2Q+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3728C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749092993;
	bh=TNzRfvZ7SvSDnkyA01jRiE6BYqBI+Qgu1Lil7/uiTt4=;
	h=To:Subject:From:Date:From;
	b=eruM2Q+RGcI7pX4khIVeblWUv3B/9aU4jKS8INmio8lEnErzQO3n+4NiR+of+h7bd
	 UDuCmhKte9Z//l7WDpNu/qyU7S1eKkB103KnH2H+tZZ3nuVg40qvkbWIzDXnZ4DdGX
	 zFnmdCggR3aGDod0z538F05/TQ64DmSM+yKdcRMrLmJ/rDUW8FTtrzrsSpvzbPaPBY
	 lBxT+dRHDWb3s+GjGYGGQcjG3M0vZqEPtHr5wmH6vMuFlAwneLgpzS7yrrPr/ymMbM
	 7OpSSClO8ne9ExPtUBajLcWJsQfrWQRdHsX0E7YOvqGxC2u1TplHh4Y4N75GzIIQHv
	 HU14WtCaGnrJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90686C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909299358.19453.8766559108850559332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff13762df20b16afd64af08007c5c2ecafbfbecfc1fd6ba87bbe40ef1883c2b
Date: Thu, 05 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749092993
