Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5195918B14
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712996363; cv=none; b=k13yZ3RUOTiGdlxM6o4Quw2G3hEFgUbNpXzcSY1x09KmIhlBmno0D0JYETR15wrWAs368ByCe+s8zmmBOpGWUmuQ+kRXmtUlfizX9/9eVjjTMHwXvoP/df1kdHT8L+KXWsUobEb7RdUA/jdYOgl7DDaUSauX0FIRDmL1K5aeOhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712996363; c=relaxed/simple;
	bh=N0fQLXrsBuCvUQnki5TRFyQWhgttYfDfiemGTYqysdQ=;
	h=To:Subject:From:Message-Id:Date; b=q3i80pq8/fhYyWV/W3XKNfv2OjXbRE6+tQdxdCnGBNYRoH72aFILstK7+bmx/pVDBQqCi3ISwghmGSFEBBeogXgvB8+TNhI1nuexFs376WZzL295lEKV60nJ34zDQWs3aI7lds2MqFVAdJoKZ/4m6fRBo6EwTPiHpHXDZCJ1hPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHPD8l4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHPD8l4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2176C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712996362;
	bh=N0fQLXrsBuCvUQnki5TRFyQWhgttYfDfiemGTYqysdQ=;
	h=To:Subject:From:Date:From;
	b=QHPD8l4CUD/ZIC1uSRmVkSyl1BOXtl4lPNRWxMgZ11Pw+v37wck0coIY5zxYkd3ql
	 tXthSuy1i2H1xIwhkHYux5cwU28GCNrvm01jYSRcucQcfflDujWIMrH5oBw6bgpkkC
	 p+vDOkikJG/yPbjy89sPR9CaoN1LFdsChctal6rmEs3P0mVJ7uREp3ArvS73nXbYsh
	 eoWk0CJt2N/a6x37Bnj6WvI59gizWV/vAiviDF0yarqqS5tK939xZEId9FOogKBE27
	 DR7xd6DOZFeoV3yhnmGEJQb/uyComQjUrb2+nDehM7VB4759rRS9ygfcphDrctyKry
	 0UbAshs0SjkoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC7B6C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299636280.10015.15700229872177182572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6a182a956a3c191cbd03d10341f848beb02a4625de9254f565a2c7c7c37b7a
Date: Sat, 13 Apr 2024 08:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712996362
