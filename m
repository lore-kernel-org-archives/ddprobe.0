Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC281CAA4
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765042374; cv=none; b=O16gJQCWv4/IlzXdyDLFbR13RdT5TkoziuVKErAuTIwQmrBafn6B11yGIvPv2VtCARvA69kQSt0ISIA5S/EALIWiJjZwfzlj7+GUOCyecpIxo+2W+4L8WchAgFL2NXYGlWQTkAvS9rsymRkapolpFvpX8EbgDpPHl+UHmhLWH4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765042374; c=relaxed/simple;
	bh=ZpEwleRvlGTPd7pHVdArMZf+/rCn8IxUO1hhkjyz3eM=;
	h=To:Subject:From:Message-Id:Date; b=H2uU2rxgfV4X/8UhUFt0s9x7x7NvvqeeOY2BlxAiSSbB14aK9nyRhgnELB6ZqemNGIfUS8q+F1u3fE+Z8paHD5sjvhHPW5YHM+eSBTYmwXc0JNvYwSjJl9+GV8O4Lal+8hxBmOeJ1IjmFW3UnGI6DWa85KKdCwUx7fKLw9sj4o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbrs1EOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbrs1EOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7383C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765042373;
	bh=ZpEwleRvlGTPd7pHVdArMZf+/rCn8IxUO1hhkjyz3eM=;
	h=To:Subject:From:Date:From;
	b=rbrs1EOGS8QB4OnArO3M3WTWdGEYSKPv8dYcEAo8lskWiv87S79fnYLtqH9Cm4TMK
	 wE2lbQXyu+ed/vSURIzWjFGC24Ec/7ucY+fNLmxf/kM8hbFuod8L3ycukqTMMxOxQg
	 rv63Afio6iVM+IpR4s/DWOpLyl/ii4DK9Z60DzYaZts6n7jC3i6zJZjd1i2qAGnRcm
	 HG+71GHkyy67S+1CkMxTYe1xn0KJp8ngrP4hM7Zckg54UUrtxaPnZa35aBwOWDWQUv
	 FjGPLB+s5bCHMrJNzxiyS4I+EJZltBSpjibUlNhFsMNRC8XfIXu/Npxug1b4P4lUmB
	 2C//8JGoroFxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB4D3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504237359.4155.8304973203689606646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d507cef4fda8bae16bab068d4abb81138af0ca19215830deb99f1e797dd4c8fc
Date: Sat, 06 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765042373
