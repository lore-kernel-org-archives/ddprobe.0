Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013912D6E7E
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767391434; cv=none; b=lNOcwGVOy91p8n0IHZaU41rIQ1WIZCZUmpHBBQ2XOquSAY8kRkIP4iep1abhfyqUP9cocAn16MYUa1/2WtWiYR85NnZTbIISzhKExkqZXsqsvmE8gtWUtmVWSN3NpwRJFl2W8gjiBpMVGUy5k1A4OSDCEPzkb7VAewfk4Ro8MM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767391434; c=relaxed/simple;
	bh=XTzkJHYteuQVnDDyLmS54iFs5DJTACeTf8n0R02y/D4=;
	h=To:Subject:From:Message-Id:Date; b=PUpszX5V3DoWvu8FK67ZskWIFWhloabLWivA7nkJIpi75j7AqCe1Tb7+/nxZHJpMHIgtN4TG63Y6M8AmD2iWdKFb81wNsAhsvgNV4I4GguzQTwhTP/vCD+DCQg28VDpXBO8+1Q/9iV/3+9UqwxjJ5wqsYHVfmY+3Isxue2gnstY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxvtDJDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxvtDJDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B87C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767391433;
	bh=XTzkJHYteuQVnDDyLmS54iFs5DJTACeTf8n0R02y/D4=;
	h=To:Subject:From:Date:From;
	b=GxvtDJDBpGwvvyZ2xNcRnHoSwTcK3QkLq5lqrpNl/8q3D5epr8xcscobfxMc/dkXB
	 Btl9qcL0YEoJYD+RAOy8Qr2wogBj/ROLe9LAFlhuND3sZZsFjaDocWiTEyAI6Lt6cl
	 6FQzNyuEG1sxOmFDL8IxU5sM4M1N5zfbb5uY1TG5knfO5Mfb0UkLzvux6sxVRB4/VE
	 j5sptdSRev/3I5pNOm4cGnUAcDEoU7zmBe6YbfroATgO0tDfzs4ml4MIPReZqM2b3C
	 FT0DfISv31TPnmFirRZ2X2FZmFFm3o/keaIjti+4sWVZemaZqfZFSQPK5SGETRN4SZ
	 tKmXS8lLMp4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98906FA3750
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739143359.13059.6399959815665211933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8affd7d2ee48969888ad8a9878cd72dcb9f128a7e0b766637db9ab97d8732f41
Date: Fri, 02 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767391433
