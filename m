Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344731B0421
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749659994; cv=none; b=Io4/TVlZijxnOLKfUP+IgF4JY3EZFc68gpRSgjonZ1i4Eft2oZ7OdIhELoYssaZEarAISGrtwJhLge19k0XTmW+VwC34afeTKFrpP4aQ+4Zgkex3u4mD3yhyI0gcJ3+dv6QvWO1JjiumMPvqoY0rrHV5yC8Iu9wiondtb+GFkNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749659994; c=relaxed/simple;
	bh=kW6Y8i/2yTXXozhi5DvK7yE9HpqrkmOtf5Ed/sAY5gs=;
	h=To:Subject:From:Message-Id:Date; b=bsmPQxx2orDNziYEmXofmOkX6z0l8DEZCAXqEz1APFYwJTfHsRkJpT2LkOL//oPQioYwe/fBKHTpJXKDir68VS7xvLk7Rj6x3Ya/fT+Rd7bwkx3I4a8CewLn8KCF32rcLDBI+3d6pA9p7EpJqVVK0nyifd0FcYqfITJ767sq7BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abWpIwvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abWpIwvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E19C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749659993;
	bh=kW6Y8i/2yTXXozhi5DvK7yE9HpqrkmOtf5Ed/sAY5gs=;
	h=To:Subject:From:Date:From;
	b=abWpIwvH5P9zoIObFKFmwY5qy+x9Y35PxbStczjesanmNM975In4RT+rr2Hjw5ITK
	 NnRgiwHbA4Rh9M+kjin4prtPIK4e1HqXJ/9/lIekFCsbMPivmR3fbhnNDfu48L9DIf
	 rlRh3jzmHn3PY70cZN/AmY63jxRX1Kmuu1JBabo8vaCPcbV4DHdI3VfjwDiI/kAjco
	 Pv6xXLj20tugM3bERS0Qrij9V0q+CEbw609eTdmIeuTaoMvUXCNHXls3DwXjKu0hdn
	 tgi5fBI0+h7a1XQpkeWzJRw5xMvj5we9uP0h2pp4Ulu7J5i/xE+/PYTBLtQ6VvxML9
	 osIuMliyLDSDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE3C71137
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965999357.28377.9991371638788935246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278836d8dcc0764893b700a42a900fadf2aaa16aefd86c577d1153d5121ae869
Date: Wed, 11 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749659993
