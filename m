Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1650974C14
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763944914; cv=none; b=SZmoqzUP/1O6DrmhMn0js9z2B8Q0BiR0/WbKcFojK6miZ8d4jfAnWO5zYu1Q1EbxXO65k0JwcLeY39p5CkK5iPTWdcVcFfQcXORMMdEy1TDKdo6A1YPnQtNNTi8DIorlO9jKjK1aJzw4/alxRZKEZhRoJIQE/Q0wpOJujXouvJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763944914; c=relaxed/simple;
	bh=GraHs+eW2gy5JUgsdhj/UpKaunDsqLsuDzREWDCMUiw=;
	h=To:Subject:From:Message-Id:Date; b=aEk5GrVVN9rKBEzwl2ItP78rHv/l/gqxaNxmnac6v2QoGRC8Q614ICND1jroZwTa1vwsqT6kpiuV4XupusTbpxvqDIxJ0+MSyt9flDwaOD+SeMGpozkAIbkVqgpsctM/oiTilbjcJj9sJkQ5DKQGuh6jo+CAVogiTQ3vPbevYg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncwwvmoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncwwvmoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D8C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763944913;
	bh=GraHs+eW2gy5JUgsdhj/UpKaunDsqLsuDzREWDCMUiw=;
	h=To:Subject:From:Date:From;
	b=ncwwvmoEK97htzuzhpMea7m028McAps2OK17g2zDTeeS9SpOxtN4cBUmv50ouWcSJ
	 +CjQCOj4CGd1oi0gyG6mPHxnqT4B2QCUqLkCy8NZABu0NPFHlzoI92H6IfHtG2xRL+
	 5ef9Ld8+pwnrt2PujxDzSGHJhNMPWGu1tGIRCUqo3Yv1CrtnGzYP4RoKaEXIb+LvJT
	 mQ1IJwIwg+VxHdhM3vDslm6yRs+GpsQV1UODFXR7NWbmyuMkWNa38+vDb8Z7kwfCyK
	 mq4+c99/Po4bFoMOZqFkoWYUjpYJpcppcfzqrDFaa1+OblF3iBADMREsavwqVjR7zf
	 EJ/+kRWJfiq8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBBCFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394491358.14773.10722952266448891306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d05f66148b775d76783f82434a2e5891611cd9509687feda97e7ce5b17dd29
Date: Mon, 24 Nov 2025 00:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763944913
