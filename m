Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F31A13D52F
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753942794; cv=none; b=frKIEP4F4j2Nvc+hK+O/ovcyAB9Yrsex9yq8a64H2FNAnG0dgSBuuCVmq3GhyV0DG0FiXdqmaTwsV5HAFQMNx4oOigsnihCOU5GaTxykHxf+YEEjKNgbkx8GbS0cDhB43g3nTJIrJacFpZSgnkIsX8VZ6ccTvAhNuozd3KpEFkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753942794; c=relaxed/simple;
	bh=VpjsoufrJlVD6k7zPGAjYUxIFZ9wgglMNYygUE5uz4Q=;
	h=To:Subject:From:Message-Id:Date; b=RPM/MQYgSPw4rAD7dccZ6/Wnmf+feB7TSKMUa2m4325IqjcZjt/sbEHHfUoLkGF5b9pLFk7RinWR1Q0/Y0XxuwvoBCjyOwxnFPoyvEtGb+tOiQp5UooVpc3RR0d/RRUjSUocrxvvySJNoCO90Js5n2H8j+0Ps7aNjDymW8NISyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOfzw520; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOfzw520"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F89C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753942793;
	bh=VpjsoufrJlVD6k7zPGAjYUxIFZ9wgglMNYygUE5uz4Q=;
	h=To:Subject:From:Date:From;
	b=bOfzw520P5QJUJ4FUFm1ydhMPqoBo67ekSmC8ctNpK0kWrzef9t8fEB0DQ6GiSpVo
	 fHCI+5QTuSL5GxTghV22Yocn/07lqa7UwVj0aaL05VvjJqWHxcZ2h9tIHBAxhuPzr6
	 iakjuH89OuXklU61BApKa3gPtCa4Fcb49cF9XCXxxc11uCBNlFZcRa8K/UNxBcyBxf
	 oPlJGG1NN35uVDiqZNR2raxd/LUj3uqKLSKdNO6HR9XTkPt0TVuDu00BAR0IzvP7um
	 uzvolyLQDRqEWBC7H1zCCEZox18vMex2343AARK1q9L8lLmM80MLrD14ejVPUQBx5O
	 LF4NanxTvfd/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF3C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394279357.3058.11311541203020218588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ff594a0edbc5549da88a64589cb06718536af64afb34b09274bb567f3efa67
Date: Thu, 31 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753942793
