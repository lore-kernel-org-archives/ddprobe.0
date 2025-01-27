Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5685C2B9B9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738007755; cv=none; b=FG22dL/yw0m6tg7H76oWnLc4rsID+NpKD70rW69d+8ct5F+FXoECSbZjauq3GWWxMY5yjpvI3veHvGGvyxlZyZn1dlWr7/E/GNNK5c+CZTl831yyHbgnnCgvRnA6TibgaKNirXxyTCVKFqlVeIGctWI5VeaxjlH44pnD19RBRic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738007755; c=relaxed/simple;
	bh=Ofmrd88v1/XgIy0Ea6B4a24Ix3AIllnECEA0wAbj6ec=;
	h=To:Subject:From:Message-Id:Date; b=Po1RJNzyjRuFNPka8Q0cscYiGUOaqYqWt/LbLKlD49i/fjfIrevgNN40J/bjfcJ4N5t7EsgSr3sV86+vp/ZzDhPlv7/Xwhw0YdHBRdi0xkz4V/+JQ8ShvxaQiba6pTeaY/kR/TMFGExTrRXSFW/gHrO0m0oZdn1zqFXVxic9lzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL3we03v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL3we03v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33DDC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738007753;
	bh=Ofmrd88v1/XgIy0Ea6B4a24Ix3AIllnECEA0wAbj6ec=;
	h=To:Subject:From:Date:From;
	b=SL3we03vbDp5Des8UTcQdbEXSfq5wTZo4zfyAdDDdeSsPXOrXwok58nFZNlWS8tQy
	 Ir7RXOxreFA7uJfy2V3xLmA6zwqJw5TQTkJRhXw9+VNV+73CBS11L9Z85dgtIr2PGS
	 iVwO4Ngla/adfhoW5dJ0PR5udZXfwgVok5dONcnof2HnatZd5VvhQSV0SIaxJzncRI
	 b1DPM1Mljye9hFI+K7XEtcW2f2/YewyQBiKt9uXWZe3Rxzb06wNzo4Ln9hoUi4CbbS
	 xdNNyABhEo69w8DOaKlRTN4xlrD0xSr5qaaatNS52gbLQvW5gF5Az/9jASYA4ccjDv
	 lQfd9aSCIAwXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D967C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800775360.28907.14586996779161366737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffca4718ac647039c2be41513b95f0fb55bded44fa1ba30b7eae8905b1151c2
Date: Mon, 27 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738007753
