Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7A3259C9D
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745954394; cv=none; b=SFo/lqPQVHpWTCePDvU0kLTSuRJ/aukuRjfVLNEhd2XN3L3Pcv3X/kiK3AF9j0wYe+nNJ/YCBTzP4Kw4NAnQ7yEC2yIjpQ9dEeePe8yvV/Ky5AgX9OHQx9Q0+Bxmw7R7B3IDSweBdoujYZAxDaamyx0vUX2gCUXp5T/2XgvPbi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745954394; c=relaxed/simple;
	bh=T7oQhp8dodcOWnyKOGa8TVcb/nRnsrDJnohAs4u/tBI=;
	h=To:Subject:From:Message-Id:Date; b=lL+vCxNS/qwqaCkIYEXivwwPid+81ZwQhUGfdQx11QE124R2MKiNUY523iiipdsPE7gKEToxaxN5xWcjztbG3srHdYiDbytpIaStsIVzpXAsp6OCmTcWptTwg3w5NPFxGns+0rwtFkUtdKmk+mUkvI8jobvs41FZPPxzg2TbcyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R45Px0hG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R45Px0hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745954393;
	bh=T7oQhp8dodcOWnyKOGa8TVcb/nRnsrDJnohAs4u/tBI=;
	h=To:Subject:From:Date:From;
	b=R45Px0hGTzhhKCkYfiQwuM7lH8g4M7UB3Ud/WlMg216xs2cuTrkL/Onu0A64xAlCM
	 CL35fy6xkCF3l7vy0sahmrLYllfcWVsAExDSXyv8/lnXbt4N1EF2MJO5jG/f1P7/Gr
	 5gFyjZFTxyyKTbk/fnHrHkXer8TiQIibs3b6GnkihZxVqDFZkGcITBUS+Q8q9T4zzg
	 nuWF+4+fSE3GrIFjcni/t13yh3UBL7SwdnvvKdb6sBV/npzpoRHf57Wma3d2EkLyXe
	 vN2ugeK4irPi4GnnsotfpvBUrQE2N3jmmd0ccpjAYQvsxKEWekR1QlvoW6HN79D9VN
	 4ytH6qJSdsRTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F007C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595439357.19369.12201462459827753628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c2e29e8d9f92d54ece480e8769259c7b42ee58cac59e1a6ce1e6edf4831619
Date: Tue, 29 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745954393
