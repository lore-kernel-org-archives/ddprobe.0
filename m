Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE32374CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734183954; cv=none; b=nQzcfmU2EgkttEyIuSawe2aP/wUYCnJzliBya/kecKEY/fGee9QvfIzflc39Wviq93oBEPjXFzSp65dU2QfxSGCOM/xITjwDHupv3sNY7Gnw/2PkqrOtY4Cd2HWb4KX7UZNTCj+1BmihpGPmOiyWqFzlrCQ+5B5nGdlNmO1HcEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734183954; c=relaxed/simple;
	bh=ib4F7ei+kFFze45BYnat7QcaK91IpLwMYZtXO/NqK+4=;
	h=To:Subject:From:Message-Id:Date; b=H42n1NBVQrWgTbwk1T/S5Py3IC0dDHes3efVZ4M8CRx1k4tokxhuahWmGy1S7DVhl+3Ex2XjK1vQZcn5sO+aZS7JhEPosKJttMv7PY/KhyVW4OeOugxGoSGtehdXSVtHjVk6AmKKfPH0T5elUkvP7rLbJ8pOMP5i1qeUxnH02aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEVFBZz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEVFBZz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDDC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734183953;
	bh=ib4F7ei+kFFze45BYnat7QcaK91IpLwMYZtXO/NqK+4=;
	h=To:Subject:From:Date:From;
	b=sEVFBZz7n2++Y0K8wrVOuLZOeJsQ5ZqgUEcUerPUN6W2EtDwL7WedCdz866ZFLTq0
	 oQ4r4+E+SPs83Il/7J06U9UhMfI6rP0BUCsuDm6PH/x/CZsSE68dVLDlwvX2B6NMVH
	 Iru9WDHpNTPJB2GRpfZn1kme2jVqBHFtt7BEQpUVAAgUWmcp4A2tEG47HiZ57uHepO
	 X7QIlIKIE3Uj41hG3FAnUip1RKgWLEqBWengOM64F5eThU4B0162TwJa+CfOHGP+4Q
	 3Dhg9W+2f+rqgZkhNyPtG9/qJNg7AAD/GZM35hCf8Q3mR7HGQ5fKEITGHAlRt3pdU3
	 +i6FC5zsoWP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C7E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173418395357.8733.4567425695661004980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6e224b5e86ddbf103b48157060075443146de4b3040560ba690c64e14b9d08
Date: Sat, 14 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734183953
