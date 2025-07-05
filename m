Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BE41DDC23
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751713194; cv=none; b=aJxb4xmiKXsonkXHvyvbqRK05CosB2hRlqGpoAAQhnLCr/wy0SZTUemvRgYbsW2hRKY+GrPo7TDGX8pnx09Tw0ArcjdlIQ8S9AjuU2p+e3N1nWVavapdSqQGUOtDKQx8BuFSkkjOPWCVLJPLKqJDUKD2fdIIg54XfK/+zZc9Lzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751713194; c=relaxed/simple;
	bh=O9DWN/DL22HHdtS08LCZswgFBJ1IfclDji+X1/EHLVo=;
	h=To:Subject:From:Message-Id:Date; b=WyQ7sJCkTmHP2gIM6lTwwl5UcxN4bSd3uOFd49BBnZ1PkfCxTi/x+QEqkNNrIffiEsGOLLCIMPEYSnT3FuVwcUC2/d3bSR44dxTVWjKKmJPjDGtsMCX0cfX7n25eU868HSP8lWyxw/1oCTNlSWXiNeDrZ4Nf5eaoAxH/9iZMw80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCBau6Qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCBau6Qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751713193;
	bh=O9DWN/DL22HHdtS08LCZswgFBJ1IfclDji+X1/EHLVo=;
	h=To:Subject:From:Date:From;
	b=pCBau6QyYcRGblJ0nW9qfSHtgmWARKsEGWF6hEt6Y5SJmTRucNxuoXDYO27dJeEae
	 itu93hhLkWj0Mk89RAsQ6vW2xd95OMwXG/XELC08WGUfDqcyK0x+qMUh3OVX9F3Kh2
	 ihw8lDOaQeBWoANfkqRIPBZHlj/kJ72AP5WPfp6/Gv3ztfMF436cFDNyx0v5Eo001r
	 oGJNtsjna9bQhhAYFIyKyvOpVvOf9LjHwm8uehTl9I4GOFVJv7R0MNNdLudh97gcFO
	 aaqacOStk1lW5eoomi3lzXZrmK4umzXZJl5E9N/iDR0aLulUzKCr881ydMP/TMtSxm
	 b8f6IBm0hGj1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E914C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171319357.28499.5876156256089701978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3542bbf3b1167d976453d3914c5956e5ed409b32a19b7d27468795379a0f9821
Date: Sat, 05 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751713193
