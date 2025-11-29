Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5BC1B4224
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764378174; cv=none; b=n/LNSceFIW6uPcED6TFXJ9QKqfvHkIQ5Wa4fM2ApBDC4OcNLDTv/wxrdaCNRSh616Y9l860qp5JW6UpqJ24GoqmpQEccRb6siTAQtAPVW/xojsl4InMBSbnVYsjF39xF+jmfzkWpbpSqA98lWtdcksISaMR87a195F8aVjopUHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764378174; c=relaxed/simple;
	bh=/hOAxJJJ4vzG9i59EPja86DHK67RsFIN0iyMBV5V2Us=;
	h=To:Subject:From:Message-Id:Date; b=Dit1j1r8EhUPZYXIkYIKWkxUWDws1v8/cRkk8T56OqH04DIWwtyk6ka4iC4TuSXDgm5JjEecfgY21B+m2/gTkxLgsnb5r9P7KBkZNH28FAtAuYM1aRE7JG0UPGIYrUulBjPi67A3+zqi4B/0SE6kM5thy2xObQXhqpVlwi6uk2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2j6/tSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2j6/tSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A267AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764378173;
	bh=/hOAxJJJ4vzG9i59EPja86DHK67RsFIN0iyMBV5V2Us=;
	h=To:Subject:From:Date:From;
	b=H2j6/tSPP5yeJzzH8FEgAAtpUQdPsRxtDoIPVYUwn6XzK2WHs6OpKBHRLuq4nkd6d
	 JpATEamrWct7PeYKEB2iU+TrBPAb0nspWNF9iMbRHhtq6ZCe1o4qn1z5YGZK9ya4qE
	 ULEGFMlHZFNh9TVLE9phBfc7de+Blgp58yuSgxlvOphlhMR2gIYlFRy98mdS/gBnFa
	 eEKLnpAm4bX+ZINhuoQpQsEvoERTQAcVfLJ1ypJslKSi3D0g5Ey2Sbl0ys2/lsLoOE
	 DcuG702wdYfTlMKINQskRHLM6Vc5e4k5I5Sf6IMtW2vzB6Wv8+soeOdiZ4NxQS/ehB
	 uoaWTeYXa+r5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9313BD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437817359.31243.12854282963790310351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2320e5a93df9078552aca9ccb46cc3c41d5f748858a80f30a73eeca4ae87564
Date: Sat, 29 Nov 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764378173
