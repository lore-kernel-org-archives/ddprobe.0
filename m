Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6EF28EE
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726215954; cv=none; b=UkIG5Vmjpj9mapDC8ZA+dFV4ZIOh/ODiqYFni3oJnlpbdRInyN1erm3UG1Pv+zW0A5EhFQoX8Uk/yV5MMhoaykLP6IFZgBrIpTf+ty/vt88hH1nFA+2as94tSuf+LLiJbkmFjPaE8lbmrv/QvUoiK5sh2GjG1LyP3O5zatUVYwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726215954; c=relaxed/simple;
	bh=8oO4XrvrXYXcIMtr4flm7Bl9UDyMl4FUhRAvrRQ+w/U=;
	h=To:Subject:From:Message-Id:Date; b=SHVHI/GX3NJFxcLKntdyCy/zeRvm1VLJWW1J4lFp7gEYXETeVjM91SyVw5kSwDlRoWt/Wjwpioe18eAPo28wJYnhRETp/8p+RYNkKCl7NRZW3iI30myUHpG51QLtmRcf6APzVcmucRwaLBdzY2exRvdVt0TQT8Nj/mKU9o4yjk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9iVUjOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9iVUjOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD77AC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726215953;
	bh=8oO4XrvrXYXcIMtr4flm7Bl9UDyMl4FUhRAvrRQ+w/U=;
	h=To:Subject:From:Date:From;
	b=G9iVUjOxGVS8s2ZA70HqNoKB5nP5v5BTlMm+0tDrCudmqn+5LCVkaLkKEcTFx4Lho
	 c5u/ShCy8eoByN+mi68u+8zhfHgBPOzdRv/jpBMNYLIumNhZo/NprvD7ouxMU1yhzb
	 SBtus8je9iM4S9rshhpv8KlTT6gmeP9rxYFI99HqX+4/EtRgR1K53d76Yxi73fJM7W
	 fb9sDMFujz9hvwYJeE0xdXBdsuTBnXPb+SRW3ghBTZsZKYpaMsEBfOPOj0DqeMoqVs
	 q/516S+pF0q0xgk11hgMMyxgcaCC/nBZwcwM8ADAJTcdpfAb7oKVDrljCvsWiEXYKQ
	 rvN6ET89NDW4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB1FA372B
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172621595368.2115.4305408628973938917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe0d3c3a11f75e454ecdc860c63d008336f95bbe0298f63d46ec2c6ca07d1b8
Date: Fri, 13 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726215953
