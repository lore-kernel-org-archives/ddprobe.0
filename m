Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173D3125B2
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736021154; cv=none; b=GsQWUST+ROMdmowKiOeotAFgjxgiJog4CQOnGHOB8uBCVjpRoS2y9Kuksb3MD8c4a8Fe1EMpdEHtM6BHGTsrDTbo9iOrQcWWRJF4JkdS9X8lChAcT8cNOB2W1cq6ShZDVKZAIxQowihNp3OtrIGeqcS2m6eLkRvTsQyNqrK/jQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736021154; c=relaxed/simple;
	bh=17C9Ej6ujT+oLFdaoVYw4XXRlciMnSSpfRDZ9KUkzW0=;
	h=To:Subject:From:Message-Id:Date; b=rbPePb7Z8hzlsdE8DEk61xsQ85SMFHIFE8AXZgLzppMxpTCuXyjKZhb5YIqobePTT6FO5/37EaRYAaLgciAX1hOK47f2eORVShYihEs1khIwUwc4EhzdjfjIY4zt7PbdhGYQrJaeAc/+Xf/YIWvgHYMCTolwTAXj7pk/2iYAaI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qm2URh1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qm2URh1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5EDC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736021153;
	bh=17C9Ej6ujT+oLFdaoVYw4XXRlciMnSSpfRDZ9KUkzW0=;
	h=To:Subject:From:Date:From;
	b=qm2URh1/T2e3o7S3+Poz62lETKwIazO+2Xx7XPcAuVcA3pw3b0iVPTWq+ubDBdp71
	 vnv1kVtbFE7qMr3dxoGC4n1/wRlwd7JQkGo/WKyU3Hu6ok9sLUBMqJvo1c+GBTNGHq
	 GTbdTL9QOnUMb5RWCGz1OdG/+eb1Aq+WcX+9H6IslWW8luHPumais/1C3y3YYaOggY
	 AEkj79AfVfmmMeexB0ml8SFvZ18LU+HqyO+gbXSluEQiwBoO7ji9s1jxqJ8p4nBRFI
	 X0h8nVW4dXw5PvOfTa9GSdb2wuljE5TMIxpVQCKZXuk/UC7zOVV8aPhwqjpBDeDAJ/
	 tP6Y6oWi5il1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B28E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602115360.7533.14731536716248104994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbed7b9f9f2e90f902e5a78c5213c00c23a9987702fc31efde8d493188029a71
Date: Sat, 04 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736021153
