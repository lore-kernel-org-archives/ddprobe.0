Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C99DDC5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760060994; cv=none; b=Ioc7xrlfWmRMeoM5DxbNIvn/VCqfX1WgTbNoi46S/lbbL4HSXjGyWON0sb9LobSf0pv6JpKcCTIAhDLe2LMpK/KWF/UGIChvCwE0x42xTj8nyxd1cD/qA8AQwKJFOn2gEFZJ7x9qZbILiz9rWzstAoMKU8KW73aYMdXz+pNvXI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760060994; c=relaxed/simple;
	bh=u6dnyVI/1EkomFL3YGsYhhNgw3PGBZt11AVnr1fyFoI=;
	h=To:Subject:From:Message-Id:Date; b=iKS4LTIBkBv8H9pPA7c36JOK1QZ5Jm8c8eQ7ycNIEkqRc819hbLpRys+SrRh59a65+YxaIpCVSvygXZMw49/KI7QUKnGvpkiJcJdwg4zCs+OxGc5VjJ0cgOD1lLRDC2usBBztx2lmS1Y4bKl50Sq2yLUbowo200y+Sj6E0GouRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6ad6Uqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6ad6Uqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9658C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760060993;
	bh=u6dnyVI/1EkomFL3YGsYhhNgw3PGBZt11AVnr1fyFoI=;
	h=To:Subject:From:Date:From;
	b=Z6ad6Uqt6/l4HLMa89s/iA3ievOy0NdzPzL7oJVDiuyr7w3PxOlclZVLaaq4ojr1S
	 iNArfXukyj+W8XPlHzEwVcBDTeaPEJrF5pT6bjKTth2wvKbHu3G5UBmNCFkBvQsiiA
	 E723eGs/4aUfhiOJhCShMQWqa/XS9SGB7nS1YvNDxZKJ45Puvf7bpLEFebV2zi/PDK
	 mckAiJUvD6n5MHzjbtjf0C5UecSucQr2EygWgaL5BRplu4EmOVKM9IAFZJu0yQXNq+
	 50es+bmnpVL7mnvLTWEyDJKAXa+8OCxkcH+fs0QZPPYqvog+RpprZIlQ9Ay0XvMEsa
	 4PeE09mvl6eJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E2CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006099358.3929.18313802282059609562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e610b95b0a7da6fbe1eabf75e3d117ec5848f776dc59c520744661d1ef5e0b19
Date: Fri, 10 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760060993
