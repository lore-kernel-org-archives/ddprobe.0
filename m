Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867F84D9553
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792063234; cv=none; b=mkld/KbIodjiyU7XKGgf4N0PPxIfTzRa5MwTgHLbQ+uoPiHu6jzPFIgz9AlVG/VHh+LJOF1o+APZLasACema3c0pzuLkdYMZ4K32BIjNCcQCZa7y5TgWQ2/DCoF4XMMJOtGtVD1WS3zuzK3W9bTJVkFX8yQV9eWflc+aVu6dPPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792063234; c=relaxed/simple;
	bh=PjqM9j6QTlky1g8bEASA22DGyvChC2oF7WFYrtqKqR8=;
	h=To:Subject:From:Message-Id:Date; b=Ub6n+iF2mWlHz9XDFFBK57M07XodxmEW2sN933LoUVYJHyL5H1JsF8hfu75MhuDp3SkiZpmfiGnVxIRIvjm47JTV2BPvSPcvBD+LTN1qYUA8mK+hUhLH2tx0vDYL8aIwhsoKhG0KD2Pkahswq8W8+iiN1zzo8q5+JQLgW1BSl+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hB/xFFp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hB/xFFp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEABFC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792063233;
	bh=PjqM9j6QTlky1g8bEASA22DGyvChC2oF7WFYrtqKqR8=;
	h=To:Subject:From:Date:From;
	b=hB/xFFp+rXVyH4nsAB3RzwFEH5/HltuPjnoPydjpshGU0SNJrxGOjyhk1UlBQFWPB
	 UdtA4KTbCHdTF6HHEg6QOV1vDU80lSdOM+LoCguQnuwcrIsmw3Bup8TxV0+xN7ov8d
	 0oQtoQMI6J1lIH5kqmrbyKDdxxJYw5jCgTa0O+NIdNZP8yMYXQkhp5YGUOrUXLbKrO
	 BWdsvbcsZM4mHJlAqNkMCJsIl2Tlux+fED4aStk9DnMNnK/hi6YL2y+oAev70qZ4FM
	 ZjhrhSYeDj+Kobk+qcHeA6AJVFT7kEefywlezNRAj/xMR82L80vhXJGNyBIbVBWzyH
	 be7m5Tzu8WZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD03CC6B3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206323369.30533.16618988895016473177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae21a202b80a7c68df5399c9d60f46c2629f2adef3a2cad32d0831c500fcb857
Date: Thu, 15 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792063233
