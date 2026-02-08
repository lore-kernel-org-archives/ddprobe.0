Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268612D372D
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770563634; cv=none; b=RwaSMK/WceJ78mkFjlzb47UBDg8MCOuUksOIa1FkndwRD9APbvW16P5/0CAQoGVlgR1JW4X4w6zx6LsfCp9v/bMlFi02Y3rkCOFeIizuQ/8dU99Z862m5KHJoAMvd6d3AGqyIF+EVFsupOFi569o6J9QrKkqQSzBb34Rlp0VMuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770563634; c=relaxed/simple;
	bh=+9DRiNqXJ9gddCzjJZoyjrRrR4jjgg6S/fwNWlwmoLQ=;
	h=To:Subject:From:Message-Id:Date; b=CgYGKU/Y7pUTjYFowFW2Fu5Dk/d42GxqM9eHdg21bLiOtu0l6swJB5uSL3o4wyU2EFuqrj0xBN8AM7OTAOhqHQvtXKLwtf2QsxQDqJ0mZ4Kvmmi81PPCUN7+9HoSW+wKbBO9KzD7CBHZskzO5yDm399kTA4iAFiz4fwsvVVToRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOEctz5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOEctz5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D00C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770563633;
	bh=+9DRiNqXJ9gddCzjJZoyjrRrR4jjgg6S/fwNWlwmoLQ=;
	h=To:Subject:From:Date:From;
	b=lOEctz5rCQxEzzeNxRxtEsO57zmZi2jqOhoP71fCRFsMMntbKfcuG0nkW/HFPrv+G
	 h+Xzayci8SFoer2RpblZYZOP/U2z4p0CxscT+zHdedjtyFjxLYj8CJEMQNrOFmvdKx
	 damzIx3TjK6XjIpq8EBs5duG4wcrMDfZzE0059qgi07Wnxe7v3/YnMZ/Ctge5dbAdz
	 o28GIcvD6E1NEYLNeWSreYkob7rzzA1sPRy0p79EiD6a56xBJUygKI8BlGnM6HTK/G
	 3sKuMefEXKfG4gdxLIh3+GCNNcphq/WYRmXLiNz86J06nWHGc/ukHrFOMBZmiyIwWt
	 1H9fHpkLy4uyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27F0EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056363361.11059.1617854280425811056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc2edbe9f9ec100faed6cc0dcd8c6083d1cf4a149eba3470af6bdbe006ca308
Date: Sun, 08 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770563633
