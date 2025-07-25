Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E51D22A808
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438795; cv=none; b=NO7+q+QmDIQOOQfsfotJE1+BZgjiKO/dvf1f0W0GMZRuJKHSMDlojVuEsN/OD/GhN5S4uLeWVKLyOAXjciT+86VhTFsx+Mx1IwR8ntdlfaRSWW+zAltaXBrL2X0BE03+oqx2DQ8VK+5urAePCJ4UTkN2FWi2BUHzdhXjwF2rx2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438795; c=relaxed/simple;
	bh=qGYywAL/uODEnX5Jf42Pk1itrbjSk47D3HqrPer7JoI=;
	h=To:Subject:From:Message-Id:Date; b=MBDL3tg/EUiqcaIWC4WepyQIeZHgBSXTsGfIdheh0JdHTYAkgqjH5uYnxT0mtdbdbCcHR+w+X03NvLkcSsZ8FxOER3FWPeaLc3GRxazXpTbXUWb38BgtY29RvAFb9rugJOEX0qQp4y/W1YGUBzqoNSCVavUkBzXwLooPuwvBDhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXKIKYvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXKIKYvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A174EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753438793;
	bh=qGYywAL/uODEnX5Jf42Pk1itrbjSk47D3HqrPer7JoI=;
	h=To:Subject:From:Date:From;
	b=tXKIKYvkWk+QugZa4C2PIHE5qt2xzRbGW9xZXAr0a5yLrfhEjZnKs1ZU/Xzo7/B4/
	 tvJiYeN2EXlp+b/VxiPa3iNnNMwG5c1CPxOGoqfquhVV+wXKzvcvDF8xASqRRdA61+
	 9lPL5ZUm47orC4z7hOm8HVk9Z8UYvYoogvFQj7m4PACxaLsNYJh9g8el/V40qR6CGM
	 i3aBk7ik06cldkIRZiPzBs7DcUeKan+JwLr7x4B2H/uwmxudqQib9JPz9gqdvXUz3s
	 O5/2QFgf9dvup0q64cW7EIJjIb5zaOfNGnKMljZ5uK9vUBqcvdMg+8Dlx02iKnLx65
	 hr7wAyFXXKCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAFC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343879358.27557.9154299103119440378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e30c0396d94ff88e50ead6bdbfcb9b126ce4a98223c5f911a6239b35926c49
Date: Fri, 25 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753438793
