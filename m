Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568BC54F81
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744439994; cv=none; b=j0I/wFo6o6tG+OkEDNI/OjV2Hi21prvK0BysydM3nUxMNfC4uB1KOmXxwyVx+rhaNYNKTy7splcjg6CFASNoOEsYCFrBdg1j50sEV4x69tO+wu/ExXKk85YivOEcjEtcNK8XJGHyIaDAqeaEeIkrXw3PAHs6Nhkxg3jwqh96AnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744439994; c=relaxed/simple;
	bh=xVnnEquN7l3JorbwBkqsrCWYo5jq8PuqxuNGlwF5agY=;
	h=To:Subject:From:Message-Id:Date; b=DXagDxKJQEZn1KiV6wqwriKcHXw39qaO2O57v76Pn0wUk6WQNpI8h9qydBCa4ONLqs1TJvfuw/OQuB10kMinWj8pPq8/Vk36NL4MyXb9QC5ypkurYmaIyZmmUIzsp3piS6sE5VJ8FsxRWflHts+g/Voq/QaNM9EkEhWWfstVM68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mINNXanL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mINNXanL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744439993;
	bh=xVnnEquN7l3JorbwBkqsrCWYo5jq8PuqxuNGlwF5agY=;
	h=To:Subject:From:Date:From;
	b=mINNXanLnUWHIi1keJZ/KEDpLvLU5lgALF1fMYkiYEBGxKRieUErvdK/1pR66oQOR
	 TJHJgqUlMe7NLZVUHgIzITVcnTIO8HDsNSlA5VoMbui6DYUHTjBSuqvLaMCVwHYxui
	 OkZ2O/YJbmgkQrdSXrEseC+X+u2EwTDX9oizN/dMeEiqYC92cjTeZP9SrsVTehSIBV
	 +ud8VM/tRptQzZM3jNmnkLCtPbcsCeWVawbomkN9A4Ye+kJQghcSqm7JmGRUxMUdld
	 1QQNtfvRcmv3hmbgZXhM7RUrnqEtQiUOihRGvCRr3fRXH3iQRFM/TbssjR3OviFaeU
	 6xCOJcSGNwsYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EDCC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443999360.6785.15354691530470153941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c881241ef3c80db1971512d512e0c5c8353ef1cf984007ecf0f8051e33602cde
Date: Sat, 12 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744439993
