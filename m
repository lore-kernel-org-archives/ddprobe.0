Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A73C287263
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762842594; cv=none; b=GpgWD9TpuS/NXN+H+k1/TkIBfxeL8iwJehs8gt0S3L8+NqiMkritVwPnAEcee+lMrB9uHsQWZboUBu3V26FFhpSCbln2VXGY3ERxG76HbLCI0xOy1Wuhg0xd/AJ0Jqph89S94dDBJpzLNCczJOLfbdm8NPD/41Za1wAz3+mUT5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762842594; c=relaxed/simple;
	bh=rzc8/CzvQvjyve1+aPM/l6HTurAzrcg+tfPpuNwDayY=;
	h=To:Subject:From:Message-Id:Date; b=KaIum27s8iwHKgl/+HCw9pBz/pA+TK5rDxgF6m2mhtflS+yUsZU95t36nahyp7YoMP0B4KgQBYUrXr78x7QtEawlBDcqC4N2GpDIsaPqRwr5JcQf7BHFKbwrArsxNlIr+wTXOErpbjjj5XdEpAF2b/LcepwBmg9A5FEqnN3x214=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADz7Sqwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADz7Sqwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F107C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762842593;
	bh=rzc8/CzvQvjyve1+aPM/l6HTurAzrcg+tfPpuNwDayY=;
	h=To:Subject:From:Date:From;
	b=ADz7SqwziJaElnYAmFh0oDp0cNTfYdbT2ixtToRz6UJr+bF/Flv9Hz23oEm5sudvW
	 n4a2zeVJhSgLBr+jLH8tIxA74ZQoRxznv9bKbTQ1i4aH0TZExRIGWo07OHExQDu6tk
	 xhvouoTWhLgkTLnVIEatWonHKGsDDZ07i2oWA36kHNGdYp8t/4wb6I5XrFqm/0eTlD
	 TVpA1ixLkrZf49pHglcI3KHwnUr2YWXe6D4JE9Mp1ORb8jUDjPHKoI3veiYuhTfu2j
	 2F5KhO0V07rFHnkfoC98HuhDWifKBD+ZDJy8ax3pF2VUdoTIP4rqHI4R1CXV5ALHBS
	 SJXgegosI9b7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90374CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284259358.30360.15380257600369619116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f55ce1989ea42a928a1f0d64d4397bf56b78b01bf4cfdae8ab1c5714cf1783
Date: Tue, 11 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762842593
