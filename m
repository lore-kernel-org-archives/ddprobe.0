Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB81B19E822
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723559753; cv=none; b=cN4uzj9gtgwlmyAb2DyfszozvmFt0P8vWLA5ielLbrc6j4axn0eMEML374pKkZduE8GmecTXPqsYsIUaNRoGdmAqG+Pm2BT+XsPkgMECipVNFpdoQqM7xgGFG5OdRmXyLmzb/KxHSGgSJy/SEYPcFhOWJbRO24JJcAhPS7yKOfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723559753; c=relaxed/simple;
	bh=6Ktghq4PwGiwzqIGWbKygboSpuFFaIlklfz9Lgs/R1g=;
	h=To:Subject:From:Message-Id:Date; b=srmSHESDG/AUj+qyoLZEHIdZM5Di0FeUT8ucj2qsGUsMGvqaHqp8S+N02qGwM95bTZ15wkT8aWVJE1o/I1bBDnSFpZIDMnbc0uu/hXIP7dqjNyECM8O84StwgRIo46SGzVn3uzP/ZTq10hlc6pr7QfD3JTkCFpI3iBTmSU5p9Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ug2wa+oN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ug2wa+oN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1F1C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723559753;
	bh=6Ktghq4PwGiwzqIGWbKygboSpuFFaIlklfz9Lgs/R1g=;
	h=To:Subject:From:Date:From;
	b=ug2wa+oN922qi7Bd2uTX7QF4ySgL1rRevWwDQojW0dYqPLzcpIUTT9gtKACjdtBlL
	 FXfmgewfMQbRR7lvTk8ZeCkNDebHglS8XrHjpV9UXaE/wpyQ2/+/hNPSj3A+qYB6uf
	 uTKPjlFVd21jUanZ3e1q3PKumfnGuriAMyE2VsblYkCB7d/SpEETBcM/dr06VmjUky
	 WgOw4At23DN67hxKbo+MnyrWohdNUFjGLdt2x3e2e/3QT/pY+fIfzDRa1+2C7uI1mf
	 b1U/ILxUcm+C9/IhOF8ngFrDXlA0LPEVWy3Cd40Xo0hykQ0SQZD25MnrHD6yQQTi+N
	 BEsBcmi7mo31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A387C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355975361.30946.2902955497686975215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93677b29357e90028683e3de5c18f81ca597d80548e0acbe9833e1ec457d79cc
Date: Tue, 13 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723559753
