Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662DE10E4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743928194; cv=none; b=QAyiYUQmz3KzoATMfMLiH/xOhOhctkYGfjeTZT18Ha0+DXtOGpWzQi5uWjMZu5R9K5fGM2yODJKbMgqp0qYBAj7n96SRDXcb1CBKCJoPV9W2tvsIpwmk2yweiyK/kmEAFnrDsHcFD0FTBiOZ4vbPd3UL6PIR1dg3HihSyjQ7RDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743928194; c=relaxed/simple;
	bh=S/KG0cV8OQscoYaaiYq+lFxCzJm+5xxkU3HeORiuulI=;
	h=To:Subject:From:Message-Id:Date; b=JmqmUxKH/UuERdIQPArddQTUUMMdMaF/4k36l7V8X6cVw3FmMsypfDyeKRGA8iGveTo2ohmOaX9OA3j1PJtuLbWWXcSfk8fhgdobnyUhF06qJOKdjx05MWWBOr07FqZuakBL1sWOASLd/myJG3wom5n9X8WLRyk/5qGWmReryh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1reUkmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1reUkmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4541C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743928193;
	bh=S/KG0cV8OQscoYaaiYq+lFxCzJm+5xxkU3HeORiuulI=;
	h=To:Subject:From:Date:From;
	b=i1reUkmwIyudfj417+/dY5w/sYQpBxCju23ar0Z4ehIQLDvooQSPwuHTF7+ArjhVp
	 VH+vaVMoSxA5Y0t7IMywUkWcSJAiBeLDrQqfj1IlyKutpcCuQC2LbH0Bmc/8JeVDVj
	 rQxBOsJJWk8Eq8TxxLVwIN7YEm55xWwhj+1YVVhqJytTWpj2kNp/+2fELrqfaTgTNp
	 If3kruVtvyPprZ9Kh2xVIuQ2d89KSfpw4uvSsztrYSdOhaxFnN8p1iWBZei85NzfxR
	 oDD+XfODC4cwoNCrwuHDtUJfq2mn1mUSBbdOd7qT1uPo5lpovuEnsY3rtVN1mYJWBd
	 gIZLSXqmyoH+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE86C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392819366.9347.9220771061241161900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c0f21eea764577d934448a7036651919420a94ffceb7541870db86cca62e06
Date: Sun, 06 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743928193
