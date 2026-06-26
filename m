Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE953B1009
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782507514; cv=none; b=o/2FLdenf4M3E9EJgzw7xF5xKxpKXJMaphHHnGp4o0UFpgbnjxyzaUHAoau51D73yiKO5yUJgnNIIRR9naMrn1MD1bXMDJwH0rl3ecSe2LW+4arW/D+FozVstQ9wk49hhofJ3brhOB6yC7glBWa8rj8DXD08hldCk2gSJ8kIIIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782507514; c=relaxed/simple;
	bh=LtKl/O/7uXQRDPkZvn93tF/r+b6urhRbPbK60LrAq64=;
	h=To:Subject:From:Message-Id:Date; b=kXuPG606jTuFtFyFYSKdYtrqD8f+K+9rGWK2BMZdNJ4I2tuQhhTN/nDDjclekmZdPgUz8nYBqgScVuJSRsiHMa9fT5l9OuVcxcgOybMUzALTrnmoEsz8KIRUTMOYMWV430r/hsHipDXTlvsU3smptbRjG1+Tx3a+0xkgPk7NNqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I68ELaXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I68ELaXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1CAFC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782507514;
	bh=LtKl/O/7uXQRDPkZvn93tF/r+b6urhRbPbK60LrAq64=;
	h=To:Subject:From:Date:From;
	b=I68ELaXe77Ten7a3s5ipF+jfv2Ep1hKu6UEbhUK0UV5CxIn4EPHEpVZOaBVwBYY3s
	 sh14lRrwNrNp/+N3MCyyoLVlgmUSormKAgcgRETpRVjouyL9zmDJlyZNHK9sVug/E3
	 8RFSGWFBw5xsTtxCiSgDHzPLUIWSou/q1nxEVnIuuJ7oOlTzFOPqjZnU2KHPt1prpV
	 tnIIaDF4i3SHiXkE8jleCoR/2MJLPAqqm0R06HIKrBFg5tDnqSZGq0fTWh+82QsEzj
	 ktkZ2jTxFnuU33Rhbj3mggu0xRm7rtCae4C72HvlgvoOm7yI8VLK6CPbgFxdU2JNwu
	 MPH/ulV0IGidQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D16DBC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250751384.25888.1753982218909107931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1235fe57113068075c225ab681f15abe7f403d3d8274ac351fbe07408284c8cb
Date: Fri, 26 Jun 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782507513
