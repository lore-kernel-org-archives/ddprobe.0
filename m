Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DE07082D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776035254; cv=none; b=NwgQIk+Xle7+bzWnNb+oEB0GVeazNGhv4GHf68Zit2L0nn0FDiDNzf1yjr1fE1eg+p+JBXSNG2siUIhpVZ0beMicunhwmc8XrSPHMwL098kA7J/I6arOTkAqGJlUBxhoRpEvnWxQEAtlPx6yMmYT1yhuJZ+Oa1wtW+U29hgO7dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776035254; c=relaxed/simple;
	bh=9sMEnv2RDDcDoLlUPv8Cs+q4S2MsQVnYkw5e3rYSsLE=;
	h=To:Subject:From:Message-Id:Date; b=N7Elf9LhgUI+XNt5fsUn/BeIBg5ND48Vm22WIc/g+7PMAsGV6qkflnCECvztAzCRfgabZoHbDSZt9q1QwA/lvoW0/P4DBdK+eW4jzd0FRrXoZW82mAsluNUemDrr0lIKmitCaBrthfgihsw9q2FKGIqHw/IUTA91ww/OzuYlJDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIWO/wug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIWO/wug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC4EC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776035253;
	bh=9sMEnv2RDDcDoLlUPv8Cs+q4S2MsQVnYkw5e3rYSsLE=;
	h=To:Subject:From:Date:From;
	b=mIWO/wugqzd97TJImMdXe23M1mghZHw0esMLA5ts+NQQjate9rke3wCSOIpyBeAmz
	 rt4ydUcA6QGClhX3VcC7mphZX8X9tCWuH2ywcA/FmC3GtH3mtUGj7r+I6gyPXdml5s
	 kGzUYitWLSKm0nmMs5utJhsBsVfR0TKlW6dLEKW48cow+k3TfoWBzpp8ZR5h9wlSCH
	 /FHhqy+2MSUzEZRp4+j2SQc3cSHbFGDst7+vnTSx7RgLQSOkciywP/Yuld3GDlJbaE
	 s1oiuiw5byLd20TkiMPLS2Fxs/HlVbdJfOYcFnGC9acS0QE2rCH3/jxTrByIoqaQtz
	 qcWCCG9EA7C8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB690E937E7
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603525369.10183.382792026787524226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf16cce2b6859b3aa9f17926357f1385e0d31bf594c5475108a19ec8aa2367c
Date: Sun, 12 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776035253
