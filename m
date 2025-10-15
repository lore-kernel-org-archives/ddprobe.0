Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC7A314D0B
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760568594; cv=none; b=UuLH+N84h/7LAfN8sOaJKOs1HLJY5rOHdXyu+iau5Ex3ifPCGV6lsUeUDJ7acTcJMX0bULSHjD56dh++4fBPalK+9nE32hXkAvDqxBci1oQGVvQLlAGJgXU4x7kvA7SRNGc0GExcV21zx7W1EmPJ2D0Me0WHkNgIbGnt1r6vrmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760568594; c=relaxed/simple;
	bh=k+2znOshYQ98aH6t8ROndBpMUw3OKrCh4NfFAqIDWoU=;
	h=To:Subject:From:Message-Id:Date; b=qCGZPVFGtnqajKzIUObb78xN7hFoeiAb4NDjlRMQlg4uHKtil6YqYY9ByWqsHDN/ew69j5Hxpnx2w/eBtwN1tSVFIY9XjydLHA7YivbGuR8y1bQ5nne6ZKcoyH1u1hWVcsx6OVg5Mss3jy9vSbitDCpwNQcfNepFrSHYGV3ZazI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5/jnS2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5/jnS2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1352C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760568593;
	bh=k+2znOshYQ98aH6t8ROndBpMUw3OKrCh4NfFAqIDWoU=;
	h=To:Subject:From:Date:From;
	b=n5/jnS2RD6PqRHdutcXlpYGWL2odlKiJAQrU3Quc4Uj0ycZGIY5ZouR96AlGHFbJ3
	 pu4H5m/kCA9A1eKw0OJZnFRwiJpV8GQOIshrcTMFOGuJUGTopQg/ZVEhptkvRaTFCp
	 So58ROg9r1h284QrN2thSjfVndWXMkQRGEmjChFy4T1ZZofMPq5NEwBlkgarrn2tpv
	 /qykQK7CyOc7QanPSDkMz2P6fyoqWinpS0iUbcSlCfGPilWLCve/RaFvEIU3kR3+gQ
	 UFKiyAyuvlPhLetun3w1uRcY/m/NiiaIByby9VvaMJWkD5dfTH5hpP7C8iisP/qfwB
	 Xl4KS3mbKLBxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC57CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056859357.8661.5113141544009376555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827edd63059cdccac4edf9646d7d836a4c57d8eaed870ba53c2789140de1dbc5
Date: Wed, 15 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760568593
