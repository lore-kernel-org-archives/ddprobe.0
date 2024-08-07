Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC8A22334
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723020954; cv=none; b=CyRif/nXXEjflbZznGOacEe2wrQnx3HH+L6VfiMM6o5CKc7leRQrBS9txteaw7P9Q1AsxAmgtTbslFci5FpZC04HtFpAvMzLw9KzM7XebPuPOkjjrY5PUykLhdzqNPHShYjx8FMJ3FUgPNbJFkSb2VxDBPx6m4MxmiDfvJ83vBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723020954; c=relaxed/simple;
	bh=CM4G+kYafeyCRtPMf7R+9MkBIqRTgArhmp8OPNQA1Rw=;
	h=To:Subject:From:Message-Id:Date; b=HcNNg1LQ/0rloPyuMKgOzBDcSxDK3hXdSilKja+Cgkpp0NRygghIslzQP77ed1ief5MP051gDKdnMin0Z7j6la3PbPuazElctBBaeSxtL56vaiEm0TQhXRse76SXaROg5eD/Q7rd5EfPMc7KQa6gJ9E6whxv5Yv7jYRDLQk06l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWh/DPb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWh/DPb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A224EC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723020953;
	bh=CM4G+kYafeyCRtPMf7R+9MkBIqRTgArhmp8OPNQA1Rw=;
	h=To:Subject:From:Date:From;
	b=TWh/DPb8eFFDsWWaS5Jmcn77v9ahHvSlAJ4ZKkzeXFnvy54Q40XBrgI+6xZGFevdg
	 cWDU3zazwG7dIlSXRvWU2ZBleW5YK3xqaGI4jumaYzc2UlERGmY/PcyfECYp5F6oF6
	 7jLnfoyIErRwJ/yEzr6T+Xl8nyuIUyQuEgSzKpfUvWPRjdLtz3F0qaxwVlKlDGXPx3
	 e8ondyJNkTaIFyRDbnXO1FvPyVVpRyxaK0eq9Ej0SsJr041v8Ks1395pcO7WhNeDyV
	 q61bFeJDlw2CDZHQe9OuHBEF6Qb6hx1v89lPWNthRFL3SgN5AoLXyJ4EykJo3S3Tty
	 gBvRzf2HGSG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934C1C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302095359.19194.6608476624239395896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5860627810fbbb6d521ca0898f88596beaab91da7ed4b792205a91859b8d8f19
Date: Wed, 07 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723020953
