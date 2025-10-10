Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0710D635
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760075994; cv=none; b=Sdw3DYlt/zw+FV7M+zATcvJ7xzrpHwiTHG1tCLDCjst56x6RF4hTrHwGDKolvs1Xd6ICeTgKQn3sG3IgCHBKuB4mXSiIcR6kCUVY5+s6E+EmFjFZpGTie3zTzyxTfwmQOEYGlfzsfd/Z29JIRy5a6fgomDjzdPFTJDG/HgKg2u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760075994; c=relaxed/simple;
	bh=zm79a7XWjhDZtAzF0TeXKwWIFPXNwSbZ8d7ee/Q5k2w=;
	h=To:Subject:From:Message-Id:Date; b=BxOZErz9899OwosbngobDaLA8UVN940QjKbUUFsxpsiB1CIrqToVO7jJiveg2iINWHxuL784H+CYzalfZGUYaCclviye99Nr3R30bU+k1gq9JCPhiGvOrV7N66BlHG1jYBy44BE4UiwRuQJWYZK8nDliuRiMqMfnSRDdwJAKswE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ok3980J6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ok3980J6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E852C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760075993;
	bh=zm79a7XWjhDZtAzF0TeXKwWIFPXNwSbZ8d7ee/Q5k2w=;
	h=To:Subject:From:Date:From;
	b=ok3980J6RC7xvtcgysYVFF6Ev3JIjJfXdzGtTNYtqSzciOUPX1fHs1abY5HwxdPYb
	 qGEIKElmyis4UuzK/HTZdvsyQgO1ytxWz8FMJryzmlR2cJicFeYR/DFFdKopQ/z5Mw
	 /6owz8wOc71AmFyY3JkjG4vPvmUtkKTbyCoZ5CPdo6EwJmx9kOtZKJ5SvWbTxspYZk
	 yyjVsemMhlj8r4xAGb8uVwDZoHbap/Nv3VeYd0FLf9Van+RjaelyjnMyRNADv8zSZq
	 sYdU41u3OE2h+mx+1bYa23j+fvnwrhjbEldAdg7wMarJJjFKr8yi1dmzdP5V6/kH7a
	 wdj9wogQWQEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AACAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007599358.12263.1730410182418839395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf18e195959c7b5cd1b23234582d9b221353fad5a296755cb8ed8b44f8a76c8
Date: Fri, 10 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760075993
