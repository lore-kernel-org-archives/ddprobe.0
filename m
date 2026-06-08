Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185A93D25A2
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780928674; cv=none; b=RlKn7OB8uLspjngQ61iqe3iOi3vDuJ191oqcEryFLlolJMto7bjfjlnpqFkKVCcLN2WJaOG/WoZFd1F6kJHSR7z84QMJ1Tq39ullyhVkXGl3jCQ+Do4VdL8ktWiZQuLbTEG4o11SOzbjWPXnCFgovot12NJQ61jRWslT8MX/NnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780928674; c=relaxed/simple;
	bh=KhnMfp63QR1FZqPcSK/8tr+EJ0x+kuzpxvtfnGtcdZU=;
	h=To:Subject:From:Message-Id:Date; b=D/KdCnasupbtTKlGZXtPYgjykSw2kbXEF/5v7egUqfqavqHbwpCD0lbBJylWDX8cVWK6Ewv7ESgNl5VHilCKWD6e0Sla7ShOa8vGqgGfqa20KHkCeOCtotqnX0dHRaAiEWK62Vnm5FJotquYvI49EvPIp7sc5IyCLS+mzt7n8uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6tQIByo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6tQIByo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4778C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780928673;
	bh=KhnMfp63QR1FZqPcSK/8tr+EJ0x+kuzpxvtfnGtcdZU=;
	h=To:Subject:From:Date:From;
	b=I6tQIByoIiqFycGo8hmu0HkSjMjnUFkDe498yIVLwNuvQi0y8dDYg0BmqUpc3toiJ
	 4Hw+oHp4QF1/5ViMHlYU/0JmWr/qiY+Cr4lzpNqgE8BHxGLIZBSNQw96mTqEocEbto
	 75YNmz48FHBumVY2nsA7YpY6HhXYmgrd5dBlF5uwUwJNSMU4aH1+G9y8F9mYYwTlM2
	 lyJ+aVZTFsOfdRvU6AqNkP28ZtUwLfHLLJrn8MZaPOCsbearUdvPDIWnnPqR0tY6zI
	 C1h4kr7T+UZ+UdRYHhP+lDT/SrL0FJLEJ2jfW/vhFykKPvmxOv3Z1Pcp3IQmkn7iQT
	 5DdCLphKS5r+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB24FCD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092867369.15419.8725681657361708714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c76f5708296f10fffccb412a21620792ff76967d235cc369b13a9ab2c9dd9a1
Date: Mon, 08 Jun 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780928673
