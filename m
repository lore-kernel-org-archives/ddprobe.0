Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418AD40DFA1
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775942254; cv=none; b=g3uPSUcsFutYBmNljnj7Dc5ZSVE2hxhtA9VkVBXUAJeSEjCxGAuxxeUfD4wqeKneG9isGNdsows1haujfT/GpLOiWFqU92TGux0NmMdyYczCHL7u5CwHPcwjz45iqHTi1MoArnTpueuKCBw4cOjrX4PiYGwwQj/6It15Mhs7MYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775942254; c=relaxed/simple;
	bh=6pJPel2F6uk8YcBCE+30C9FbiL7vXcJ4tiB+XXWvbc4=;
	h=To:Subject:From:Message-Id:Date; b=sctN9rvrM3ec0YZv37e5AtUt3PbuG3hQOudFHGWCZ2omxWS85M1QnX2tj2ZWXlyXP8ukUOuNJd+PiLS/zgQx1fh9jEpAQiptJofMgibQHw377TI4LcKKeTAGhaQmPIafAYqtnnr8ezO2CQYtsDok4Bn3FlcTIlboWT+zNDykvIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKFbUIGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKFbUIGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4346C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775942253;
	bh=6pJPel2F6uk8YcBCE+30C9FbiL7vXcJ4tiB+XXWvbc4=;
	h=To:Subject:From:Date:From;
	b=jKFbUIGgZJDE4V5Q57Hpcn0YaTr/ndqklV2o+wnzJpY6wy8Jeyt8H3OZD2JqLXUCP
	 NDabiOlu3ZnnasxbtOrVzWRwTe86JMvNw9S091WmgWdUeHmj9/iy1m5vdpMWE2W+Pz
	 t33VXI3TkxsQa66vkQq87lIUPDHiCmA/vgW79i+vwsoQeEt+HefAfsvWJK/df0FETP
	 l80WDHbx7yvTdEJjXfOPXVOTXcNAA/ZtKosyFcIiwHYpw54bsLTHFhuH3TVGWIbzfS
	 1oWzadTBn/CJ9ZwuKoGLeCep0TCA+NzWielyznEq2e44TH43UuQySNVWFd5kueIwxi
	 aeYADYv16qO2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DFBF3ED66
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594225369.18715.1780960583377230569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252fc25d90d968c83edffcac384da931f3c7f51eedf660b166a855cd3020d2fa
Date: Sat, 11 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775942253
