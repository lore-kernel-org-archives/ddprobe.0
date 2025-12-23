Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184C8342151
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766500434; cv=none; b=mXxdJz5bJ7Kag0ykVXbFvgPY550aeix9oQctvWJ44j/gZllrtffTR+qRne4YhElClMrAur92J4B4UduY+oXbF//PF3YnK9ftETvbwRUwoIrs8BzPqFhI/fv7D8YQ+VIP3y7C0Sq3meZ92E8k41dd7S++zRfDIvc/2H7JFtqJxWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766500434; c=relaxed/simple;
	bh=voD2PFd29sdvuVu48yy8QrVRjs9sj7yhgcDAjnBr5zc=;
	h=To:Subject:From:Message-Id:Date; b=O9BWfnFz4OeJsiQwVew5RLL2ROGj0Nd8xfPu63K4yfKK2HsjASSRINFqZQ/1Wdfmk+6Vz3slsnwuLnYCMg5L6hXQhBmU1gjRZQYz2J0VMNc6w/iHLTRGT6cl5UknwPzj4DZUJ1mKJCwU6tg6OPmm8ct1Uc42Rfdq2rW/U2i6dOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cElWRCmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cElWRCmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E91EC116D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766500433;
	bh=voD2PFd29sdvuVu48yy8QrVRjs9sj7yhgcDAjnBr5zc=;
	h=To:Subject:From:Date:From;
	b=cElWRCmHVlzxjBY/h1rzgm11/JJSxQxcEBXpY0in6yUfNLCXciLepGxwIndgWINGL
	 iByX9RD0AFI++n4LblAU8Kth4d7/X57VrLDQEdJEu6S0bmx8QdXvzxs725YbB7HGEU
	 OCfDMOdYu6fwpTlg1ZqXuk1x2CXdD6CEYbfiAsmwhKXNXxLwT21IbSzTmxbFjOJYMB
	 A1+2NaHfI2NK3+kveYCDrbeF2Orx5jVmYK3mhZMNwUSrsWpBaZd4coMucQuogEUVJl
	 l0wugyODH0aA4m8/1gJM0un75pjZE7d32nn2yqCh0fjUHeOFjucIRh3b67GU9MbA5E
	 WXGyYxS2B4+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026DE6F095
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650043358.27205.11678804344142772769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfe69bd40e5107d130e8a1e57362e82a4124fdf20cb840f0403c365bb9b2157
Date: Tue, 23 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766500433
