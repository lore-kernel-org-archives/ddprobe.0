Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D085502BE
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725121554; cv=none; b=q3Lj+rswWbeUVvZK/Ri6U8P2jjsYYO0kgybicz7RI7lgE/twPbfOH9EKWsriYmaR1pd2c3RNxCRdAPjXIVSL+R7qk4/stmYrLWbaxxt/CA8vpGk1pp891BqEqZlFl798/43a0W4Bo4Ev8pg8r1N1Ar1XE8aOE5mB8nfFXuuiXo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725121554; c=relaxed/simple;
	bh=gXz53AMUoA2NlOmDh7IB4njmvlOXuS+IhlcGZjK2b1c=;
	h=To:Subject:From:Message-Id:Date; b=RfqxlaYaTj6m/RsnS1vJiehWNa5tHebcXzFil1dXWToWIeGAtwN05+a6JOsqqcisljazkPKsgRyQEOrvDeM4f055EJNDne5dA6GMzsNq0lyUP0xHxgmuSr0Kr2nV0JkeBw4vQsMEn9nG7p/9Qb5yEveoNUqeVevZ1AQx9j7pu5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mX/mV1Uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mX/mV1Uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35C9C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725121553;
	bh=gXz53AMUoA2NlOmDh7IB4njmvlOXuS+IhlcGZjK2b1c=;
	h=To:Subject:From:Date:From;
	b=mX/mV1UwJY4/uOVudReRsethvTRrEF75c+JN2PVNpaSgCVPJZNanuOZ1vr60OqIrU
	 +J4hBhrbQxtTYdy0MXElsR6NCqwOZRojkSbBKUkWOCp6F0jn3iHV7HY07juVNsGtsF
	 HgJpKl0MlGQfnUOWX3X42s++3UVu/7WevqjMf3e7tv9vAtYGbpXQmxbCS0eExTDlrL
	 mRrHO9seoKtvbHNRFEbHXjToXL6yRs9P4r7lOqtjh7dO6ysX4B7rrR5UogGWexSLlt
	 TIdldr/8ppaZ+BH5qboUxElWiOgeCZm7oxR7zzXmzi2wPel3s5hzyArT/WxLoF+8PO
	 uO0KJDIUIvxuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEFECD13DE
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172512155358.27763.2571898047644832721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71154ec3042efe8ebcb1d786707cacaf5cd15fd909da90a4b4b26825fe4ea7f4
Date: Sat, 31 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725121553
