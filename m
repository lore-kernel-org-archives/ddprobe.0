Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B40D2DAFBF
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767011034; cv=none; b=It/SsdaCRGdQWF7MT56xjRVBXk49vMATprfyg87asyp+bwxQeejGVpws3J1ZNGw1DArqy7yst/i+KLcXqJAjJZO9RST48PRIHTrlS2vrxmmV+NfmjgSaRJjAlOkNf9f87i9KWwfKnw09bxDIFOKhtLLFt3+cBFxt3e4GApQcuIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767011034; c=relaxed/simple;
	bh=0/Xq7/+AKRbN64PHV3EWM+QdsHweuqRwmtJG1RtrUSw=;
	h=To:Subject:From:Message-Id:Date; b=kXhMhERd4RaigtDo8iIYCRF5Hff/z4xLdOuXlfx58UsIyDl4yHh3Tu5NmNY5NQkRQ/VjFmZV4g1L7vGNB0lBgmShY3Usb4lE0UvyU82/tMZMAzYGwGA5qRh/n8RZRuKU3biXfybVZREJXgK5zhVaZ82YiE/UwsA2Z2iRqz5yBDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGUGQicP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGUGQicP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5A7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767011033;
	bh=0/Xq7/+AKRbN64PHV3EWM+QdsHweuqRwmtJG1RtrUSw=;
	h=To:Subject:From:Date:From;
	b=eGUGQicPuT0TQ0yNx9/fpdNBf9kElMaaMn6WMNw73sr9WMwnsqaZs+dUNi3HlJ8p4
	 cJdUODCw9hzaz3PwgtEgTgWiw7laAT2KHTuehIqoYGX76FSEQy/BDyS7+VV2JCMLcU
	 h7XY7466DCMl/XSz1QRXdVj4POrAAaDmbwMUTRlGT36344LOmdYTMWDo4MRhhMAH09
	 oSKSh/aDdUta6LUjBM0x8QgzUnc9yydSxH4SOyQ/SgukHE0l6rj4TO8WSTd2MxHEAD
	 X3GuzHlkY+SCoZcqPFhmEaRbharB4H9qxCMQA+E1x/V+i05E2/SNWZ1eY95T5zuJOp
	 HCNVLufOP0wHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A72E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701103359.20341.11283349042159183189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11642cb367e94d10abfceb8793aebd5879754f70519d09f5975a50f62cb325ce
Date: Mon, 29 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767011033
