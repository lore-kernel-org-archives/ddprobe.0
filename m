Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5571CD1F
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756066195; cv=none; b=LRHASv82SxyolVsI9lpWGyc9ghHD45/n6tfTGei9NqSt6KoDY8iltff1RLFmyc+BG8id9lE7qV5gcfJiiSRtHQf+VIf3JDAqHzqn0CgmZS6EcWUzMHQRZ2aC0nVr7XUWRw3lC6Sv1/6s0JzpNk7VWCQoMCAGmynHG+NljrL42ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756066195; c=relaxed/simple;
	bh=ZxH0hHnwML618ebqt4c4zxSmw1EnVofx3iXlU5N9ovw=;
	h=To:Subject:From:Message-Id:Date; b=DolbVFvNsI7UOI451uBf8WSwYQ9qTOsBg5TEXfp2QayaJd6N8POPzxF7PQaC6jGb0F0lT1SAZtFEl3kYC9CIbm4nbYHdwy1JGcE31iKnB4Q4lv1DmrFgWjQeX2wMJ5X3Ot9d1J2lxzlkZh8okX7UGX8skjVksLYN5FcdK2gi9T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUUjd+oP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUUjd+oP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756066193;
	bh=ZxH0hHnwML618ebqt4c4zxSmw1EnVofx3iXlU5N9ovw=;
	h=To:Subject:From:Date:From;
	b=mUUjd+oPQRRW8N4IJ3tNtLCJVupKaw9S8z5VOx93WJ+1VNmuuK6HFHrFNfTIipu/5
	 p6fjgVdc5ITI479xxvBqEWkwoONzljexZIydWEPpxMQjjLOUxolHwhEaSyPDedfiTA
	 N2orq5nrsWWcATxgF7LvsL2/X5fWp/cS//1bcEB4tPennnC5zwY6kY3aO7tzfGTwSp
	 aeBdFZql9Wkof9fW5LWKFCqLAKBvZC9BySretMhcIDBEIl7p2FcyZzcmnNxOtkX3jk
	 MdqkbipUPo8FEJ+H5vP/pMhODlZY1pi6Yf57yTO5PJSLysrySgk5EYr6nFHTpri0Tv
	 kccmc62cKun9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9339ACA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606619358.31501.2437821670836855873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97dfdf9f1bd8383d3d0f77c9b112b817786f18b39b8f72521697a4edf9c69db8
Date: Sun, 24 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756066193
