Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D232F4AE8BD
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788625834; cv=none; b=RmQ/7yU2jDqYi08V/ZIr4qD4zmYib6ISXoEBXTglhYQRVnWWgFbvv8z884REjs+CCeykyJn5HUtNQSNAcPrhfl7b4JY5aWoIg51iaXPosbPMTcEXUgbTUQo535J+uhQMqlTU11gs8PeabLw9J26b/+HZ9Q5O5Y7/ICYAxBV9zJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788625834; c=relaxed/simple;
	bh=eFGI2+EoBRdIaGSJ00oTMseaDhUzqDVN5dywBQ4fd4k=;
	h=To:Subject:From:Message-Id:Date; b=pVfGkG00WkvIA9t+ImUIiRMlP73qgi6SPRX/nHnOBfQfpbezy8js/yniWsvyQSv1vWduBOfNLQBvCeTHOuzyx3DpjBu0mb6WjDWIkQnDPpI0XCxMIPQlkf/X9+UdvEHkngGeYXuUR/J1ljAW8ehaox/EHYB5lWhiIKCAJ/XW9yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6sjHzoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6sjHzoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE48C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788625833;
	bh=eFGI2+EoBRdIaGSJ00oTMseaDhUzqDVN5dywBQ4fd4k=;
	h=To:Subject:From:Date:From;
	b=D6sjHzoazlrLbelWR9sLdeCp6nLExhqeIb4OA/VFv0Z3VLi1o+mRCbscD/lrkqRM/
	 z+4LO5xtQ81+Kq805JAWFp8V8PoSchx+p9n0Qzd4i7Bg/2UgR6BT7QkQR6spA8AJyi
	 g0NkpHsUVmIpFyXUUkPr9ILu2T4VOpzSE2FQxBBgdNHaUVcT7CFTk+0xg08DmAb/A3
	 6KOjfkl+jzZfCmQW3/GANg0pM3155zRNohuBrZll1Yhw1NCsBjawronZ2AsRDJqRAK
	 IEVJR0pa4ooYyvcqsC/mSraw2/18Qys9KINjQ1CpDOAP9wS3DbMK+XzxRKguYK8oRi
	 +dnAC+kzBnGFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC14C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862583369.14763.14170006811874243223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbdf53aaa4fcdde50a51051816eba38f65d59a994a00369b43680b6b4b9375a
Date: Sat, 05 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788625833
