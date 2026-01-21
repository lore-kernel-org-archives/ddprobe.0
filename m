Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102F333B6C6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768991034; cv=none; b=dPEnKCsN/KrClseqC9Tg1LOCa/Wg72t7BZ9BtmsDGPSaLgj2i/rfFjoYbtvdnFWmPudriAn9TDeHMJr0nz/6cnLl0cPQiCk/20sYq0ZDGHUD03wfAlW6y/ivSQ+RM7WOd9NJz6C0b2Z/WYDOWZwjeHwl42i3jBPr6eIBAgohKhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768991034; c=relaxed/simple;
	bh=VX+DESMvvjlDqIEn8nqMZRcfaKSt84d/8Dfr9ice2cQ=;
	h=To:Subject:From:Message-Id:Date; b=t9TsPONeyGRDMhsUba9r3BfhSa+xzZInNQ0hkmK4OIbq/p4F94Ms8nUkkg9Gu4JuHhlGgN/arxM0/dvd047kj+g0oav8lgz735c/nx4vBJ7nycPmm1fC2Qaoq5C0zkTm8IUSLP2Fu/ZiF9YbVcD28wRU2A0WvPP8RuGOT8Kir4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdPJMXfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdPJMXfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C2DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768991033;
	bh=VX+DESMvvjlDqIEn8nqMZRcfaKSt84d/8Dfr9ice2cQ=;
	h=To:Subject:From:Date:From;
	b=PdPJMXfarYJ8TXslV80oVUtUMSF8cjhSjgU9VyFNhtjs1gXdMU1Oab50qEb50gCDw
	 +QwxE07HY6Py2LNHSpS5xrBXePskJNlGNzlcwte2pn2JDy0RPQQOZB1UgqM/nE6UPX
	 nUEjWELW639pgsmBmb/1UhSRqj1G8jNTZn0DekLKWs/kzNE4SN9hkoWlUEXS+m4KC+
	 EyF41kmlc6ZQENlWORoSunMzwu1ilypzSTfIih/AVfovaauSBpOxO5/NrJGhxHzTnU
	 66ByviW+Q1AyJul4jRckL7gpOEwxtGlZrPIN/KKVz5gxpPy5T0x4ptG7YxOxRRMfph
	 SLpx4MX6AgvPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAEAC44502
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899103358.26456.4879710791995811304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c1f06ed100d5c575251ea663bd5b5ea8cd54512a25482029acd456e850b283
Date: Wed, 21 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768991033
