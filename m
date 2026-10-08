Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DEB038E5E9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791489034; cv=none; b=nlwBRk8R2RIEyyFKvNpB3l5jLyYWd13n2rQ717KIfMnDQXWkNL69XAO04xixgwJKXFG+UDOnGtdbdynpcEhn6H6h2JwT2agglNFs3UIaEpCSTuIitBYUUVRGBUroHSe5H+itGxEvhu6K+vI/tAN6NmicsXuVJi/s9dvyqhJtAvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791489034; c=relaxed/simple;
	bh=lyXMGfHS3GY+xcMJWLGB1H0l2nmIHnfGINL0HS2jszQ=;
	h=To:Subject:From:Message-Id:Date; b=NjdGq65uKsTBthIwTUWYPzBIcfRpMxl11Hadg+UsdFLRr4LiIBWEFGSFhaSNoOfgl/IkIqs2yDxvRSo+9MZf1RAQEhme9fx/CS69xFZKoG2s7mnNQAD5PCW2gj6olVyL4WFsBzHl6gi2wwhj4xbBRx97x0ShJV+2MERNmHipIl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dL3NGtMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL3NGtMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66C4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791489033;
	bh=lyXMGfHS3GY+xcMJWLGB1H0l2nmIHnfGINL0HS2jszQ=;
	h=To:Subject:From:Date:From;
	b=dL3NGtMbK8S2P57UfdhTfXOOtk27a5l7gtU/D7dV/EHIRAO5wk9a7Iq/pl9L61WDX
	 RfuFPyePGVQhHEmczKNWSrL1YbTcKhjyUtfvOK3mH+U3ImmPxeKlvfbCkpjtJjBqwX
	 mLJZtikA93wc7FsJW7qbEJDh4Vyue9sPLPAmjXBbY+2CNLP1OKWAxgInCdqdOHOFwN
	 77WKmKwBfRFnzi7MbkimN/M7If+289sg8+mkugjUKGb3/KoHnCLyoy7VemZB6wga/E
	 EUeS+4wqeTcWX16g2r57XRtbUw0MsOUcoU65yFuOjDRUc+NXgF0GGBakEYieRfp4Oy
	 rRal7Pxe1ACSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA24BCA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148903368.12000.12394448938094885828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7342d068138a8c412cd6276cdc57b4310b7b665cf2f7db796cac34b0c988dda
Date: Thu, 08 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791489033
