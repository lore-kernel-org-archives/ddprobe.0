Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4411412E7E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736633754; cv=none; b=pf6JnVSfEDpYdtp9LMNuwF29eHiTZOYllR7kDh07zdZTy5ffosMOMBoXHSUvO0b4Smjickn9CE20HANIv9B5Z3DbXLbu5Ro0ulZWnZUJRItqa0VMnnPHwCqnoNHPz3fCd3q0mQtUyrhgJM/YzMmC7E/H9h8UjX2LWMQmCCxRw1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736633754; c=relaxed/simple;
	bh=RLxkwcN10ABMZW6YMb+rAwoHQ0FkEZaXR0gWGCjB/os=;
	h=To:Subject:From:Message-Id:Date; b=c/s93pcBvzCI8xExRl33TH3gzx29Vnps4ZoqF6SbHvMf/fF9qfAMZkvFZRGRFvoZODVfO2a7X24KUk7GFjWuxR2gfcqIDAQlZD/pRDDBla+Shq/UOsQbIB0BZyhNBl9NTYpK80VmVn8WVEODKOZmeRQombLZrA0J/nHdMewxznU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLtvUJxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLtvUJxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B1BC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736633753;
	bh=RLxkwcN10ABMZW6YMb+rAwoHQ0FkEZaXR0gWGCjB/os=;
	h=To:Subject:From:Date:From;
	b=NLtvUJxlfLCwZEhMFzduvzCMKHOcGkwdEHUwP4FfNyfGkpDCl/zx4j3a7V2z2eWnU
	 HVBEWU3kaFZ97ksf5f1oxUWD99YtKlf21+CLx38F/C0xgomcfnAT2lxQQtdDDDz4Gf
	 KNDtkoYAi0EY4MqatRdAkFrHT9xoTMBRICqdYa9GMItKQqp0JjY9vAcOnUBIBWLOBt
	 WoKG/M/W+ReWkklRfXnE/uEeqMb+xv9Bj/hHIUspYYzZDlkqah0L53vwz2KstD78rJ
	 DxNMfv7C1aVO4DCOZ6j6YrXg6vgt80lWrD3xUyTr70hbzFv1XHxqSR8vj1tIraVgjo
	 Cr3A+sAtQmMIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9BAE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663375359.29157.10847804042980877764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12c8b41f738349a5343d438047f5cb06285716118576ccf15554266e02b1093
Date: Sat, 11 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736633753
