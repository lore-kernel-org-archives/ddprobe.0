Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D86F3CCFB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784907034; cv=none; b=QzvWFBsQ/IwO2kMCoKD+WdcRHpTAreA+W4Xz1m0MVmJMmU1UquTHyLfwUGdamWZT6k+TPXuy6noweoJDLsPqr30Cmyg5H55V0qc+rvl/dAKn4dJZjYHFASY1eN9Yg/TkyyUIwNXY5HkZ+24DdP1bVWXWmWWmyIlnG7LMczUYfYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784907034; c=relaxed/simple;
	bh=qs26iny5YZEBnWPrvf148g5WH44CkHAyRGu5RrnMj7I=;
	h=To:Subject:From:Message-Id:Date; b=oYt/69MHBdq/2UquKaUDmIL4mWP74GGly7WWJxMCP4xiv8T+/N9bX6DzKrssTzBIBdOHHW2uh93xR70RZhOKRRBpcC+fRpZD2VQJO6ByySwdRjS3Qduw1r9LZ/A/wQrkPZwKVGzgGBizj9Z5JThRU1mk7tdRKrTzfQhk4zotK6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjJ5qY4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjJ5qY4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B8AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784907033;
	bh=qs26iny5YZEBnWPrvf148g5WH44CkHAyRGu5RrnMj7I=;
	h=To:Subject:From:Date:From;
	b=bjJ5qY4GSH1MmfXmfNakG37oCuUuPDzg1nf8hQoUvz1CNlobflzQ/pFJalkO3KIHt
	 5x/O4aomU2w55BtF7Ki9Piyz03oXak5cdzfP1D0ExUtDXr3BGn8tR63SBigtMZtuZO
	 W7JYQLX5WzDOlP4BQ5RcLpijS6pfdvFwxXI9wfcCIRn/gvNI6TCsq1seDL75tEQe4n
	 1Fg4T5PoAcIl+76ZXX8ugo2DtYjv3rJ5woz9RGtwtp6F5dQ63Us16IaEQ0x11PShv8
	 Y5iNN5aoSV2hfyMfy13Q7llGUu0WOOBnv7rCu9SMVRACLNIW+vFiqEPgCuHF1yp0hW
	 kIluk69IktX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C33C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490703368.11247.1582684818208157822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c7ed54ebb5c9de32245a4a9322c9ee1d957e093ad8ed8b5c352d5f97e4e9a5
Date: Fri, 24 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784907033
