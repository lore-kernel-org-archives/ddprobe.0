Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BCD337B99
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769432634; cv=none; b=mEdnYFn6NRBDfsn1LN6RgnzYAoQovqZpBsQnuNwgRBbZqCDxxRYHWTdM8VQpAd13C5exs5FnfwfzP201wfUOnKj4J6yt+OhxGoVaMjkcdhXipgGY3x9F3/cfM4gR2mnUaothZuyzaHw6/2dDL+mUHnQhT+3Pq7fOcLF451Iy2Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769432634; c=relaxed/simple;
	bh=eIxxxktOU7CFGPvEkS4NWxdx+aXLufkcLa8tisBgayE=;
	h=To:Subject:From:Message-Id:Date; b=N+LUy4vNAZqW8gS884CIdP11zxTNBCRvtM98TukH6tc+Ezpn6SQOembfN56F4MCJyFlUIXXOGBE+UTqSJFsbo+2A8WZ3hPdqMQVP37oLuEYUynSH5H94lYY+Phxo4RENcYfeoiUFh3fXmUO4kLw3gH9MIlYbCdHxj4ziwoybsoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F95IE/04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F95IE/04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDFC19425
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769432633;
	bh=eIxxxktOU7CFGPvEkS4NWxdx+aXLufkcLa8tisBgayE=;
	h=To:Subject:From:Date:From;
	b=F95IE/041dUnqKnMqdUyohOp1It8s1CsNiOf1wyr7oghmT5RzBHxnVy3MWdFCuXUn
	 Y+pQCWPj+lu3k98A9l8PSn+UTOP5GdRSNchlkk6zrEdgADXnMhwZkUcRJKt3pPynQt
	 09X3dYapcCR6/UbFC7X3DBwIqG5ct08ls4uTBtLDTXcoTN6+X4Txy+tVUiuqscM60b
	 4R4g/eYz0eZbh9Csoz1wFOjXNUs6/tErBVsZbLgSodvqeScfizMSakrT7uQU70rXNW
	 24nKeFAXk7YpOnG2pDNEb/rcF5WVGjE9938T3x0c5kJEc/PmsTgdOF7WzHhFBZEp8Z
	 BiWF+9QqyKAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F335D13C00
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943263357.7583.14393496515312500383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1497a9aadebfd9586ef2dc7e1bc152461b2d458fe51a89328ef887130c41f0
Date: Mon, 26 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769432633
