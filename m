Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1912580FF
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757952594; cv=none; b=VimzVdWvdemyxTnm58c9HWviiZX91R2Ga9WcBwW8RQ/og76I8Bf0LlyOg8z/+WQcHiPZYt0/myLjJ55sHcZYswVNBN7md9SRdhpQ8xYp9EP/WlNN2BW5obtZfi5NR0UV0jWNkcQ4f2pPXZpUIk5G0hTM3xjZauFu8GJT7igv7Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757952594; c=relaxed/simple;
	bh=MkqF+F3A9oeFQC0vYYwo8MIoV+fDTqvOk9CDAgrnvlU=;
	h=To:Subject:From:Message-Id:Date; b=leIXJ17QoNflCPnnxSUyuKp6xDb1DY+OhDwnmgFf7dRikT2jWgmfamkt9o788tn7OhBiksv84PxJOFRlGDXEJiIU/AwpKycNWnvA35nqaB2XwZTomvb6TVG6q16HbvHQQ4WIe+ChPDNlOqeQy7w6P+z92inYba0wDFHzEOkd8Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw65gRPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hw65gRPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1941C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757952593;
	bh=MkqF+F3A9oeFQC0vYYwo8MIoV+fDTqvOk9CDAgrnvlU=;
	h=To:Subject:From:Date:From;
	b=Hw65gRPxn/zi7rp+j4+XxcxZ8N19hkBcCiexzZrVAysINpnR6c4V32SNeIDQrVLf+
	 +DaZXCFTawrXHG+/JyUGkLRmO72EHbkMNWZSgAJa9cN3NQuYrIvv5k/hrblW6tgHeA
	 X/N5yTtcqhu4rOBnEKmDXPuN4GdP2TeuRTyCDnKJpnsPiYXzcA5SZuYybND6V3xOMR
	 ehIibS1ZCga04vSDYZh6HAV0Cy1wbLRCi3aLGDXFB9aLaIhXPWJVxPQErdH0gYugqY
	 6dc3eSEy9qwny0JBhZb2RbeXECCrI5rb/xMphLaTLtC6GkQ6pFi6+559rKBp3ns01u
	 mHX6Ye1ICqnbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E11CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795259358.26448.10873261925514125272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1c46dbfcaab14b07e765b3e2b7322b590ff8191ac0d0a82f7074c5c3b8da05
Date: Mon, 15 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757952593
