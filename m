Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138E1231856
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752919194; cv=none; b=SV8jDe7uCZ7iEDwUYco8uJPev54jpS8ZtoBftk89iyaVxyDzlDgHLqwfiRp1CuQ4UArmBTB3TrT/DLsdtn0ehdSCtVdaa4H4vASiBU5+ifSexIIKF9wvuaTn+QUeww8hMH8/0iZR4WF3sgE+krMGP6EGBsVNxQaQMekmI+e/2K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752919194; c=relaxed/simple;
	bh=+qlz6LJ2g2KBUm94si9RSlaUZyJe8o0VetJEEyH79i8=;
	h=To:Subject:From:Message-Id:Date; b=PiSkNtn2bdBnne658mgHpWiMmhziz/CVONup9mcoFrVdkL2U0DBZFL0iz/e7wE3GBXoSfkaXlL25KO5mIad2JMWa28edYZSAhAkIXeMwLe1DpkcXnlnDlV0QDeLcOo84f43WAn62/NRtQL1L+6gFUnAvVt2y1uNGZGDl9IV1dK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxHUVfXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxHUVfXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752919193;
	bh=+qlz6LJ2g2KBUm94si9RSlaUZyJe8o0VetJEEyH79i8=;
	h=To:Subject:From:Date:From;
	b=MxHUVfXZfZWeWUTJ4YLgoOC9+ue7APoqy0P2ZJKA69r2nf0eLawClCpcGLK/Aa4nA
	 jbh6/iXGKyrq9+Yv26W+DeE9AOgS7CPr5xfbWACZjVPc87sdTpytNzVt6mBYYk6X5I
	 owieOM0UCdIwK5oQ7Gd4hEcsMKWphhvex/27karp6kAQd+kPwR/b0YrhRwf+IrLXk4
	 XSmRygQLP297FIwLzMyHI2Vn3VsBirIKbRV8YtvYxtxaPLos+g1d3uebvMWyI2xD35
	 2gVINzFaxdVL04h1+Oez74DBdoTUem9Y3E5hIe9a0vHQQoGgGQdZ4sAs9uNw5xceTk
	 XEspK1k/61PFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCCC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291919357.1105.16485420297852743257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813520acf42a082c90f21ee708ee5c189b10334e6e1ce4a9ab081dd5d59b6478
Date: Sat, 19 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752919193
