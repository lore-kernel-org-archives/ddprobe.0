Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AFE30E0D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115594; cv=none; b=tls1S/rlbm1ZUIRF7sFoIS/6juDA3NLjiP62mbGmzQRhIcB9AtNft55u/D9P19STZCHW7VmCveVHIlJ8Tk8rtnPStLqkkVsc/nx0pUlMj8s/l1MzTLC4gxWhIcXqYueN6PpSmrL8aJQhlzVfUBLt3m2Hco98+IUFg74TkW/FXqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115594; c=relaxed/simple;
	bh=hZ9I5ie/3xoz7uOSgyl54n2jMVskwMnoB0ib8ipRo5I=;
	h=To:Subject:From:Message-Id:Date; b=dgwRVMcfgXg5T/mAY55cGinndAiALxup6uZXvYd0sUkd4nY/id8mfXP2a7F38Pp+EfXX+qFnskF8jDQkMsqk9OCSAI4I45tuF3LgK1hckStuVGO2PN0nKRfInPOn40IgoW92xVCixns9wjwpmotVPBx0DaOq/0Z9zQzppEKLYrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gW2RJYGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gW2RJYGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD059C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763115593;
	bh=hZ9I5ie/3xoz7uOSgyl54n2jMVskwMnoB0ib8ipRo5I=;
	h=To:Subject:From:Date:From;
	b=gW2RJYGFelZcReCgSAvEPtI/U9s4o2ahb4fZU9e81LUmb/mfT9UJuTBNYnWUyn5M3
	 Ado7sTv3yAx1k/nQjalMMp9naB5iABR2+EzM5ySZVLI4O0suu+X8VHmZAoBJrW0N8v
	 MPg8CAziVipgnGSOd7bF//GdHZ53I25gM1Fijj0HWPu0ztUVMlJiwK/hcjM6lVIyj1
	 zcumAD5X/lHdnL5YgCKz2nYZtE+o9X+gqhDSxl7RRM/n+Y/0azW38SdQ1ip5K0nC0G
	 jlRblEEcLE/CAq1Zh2/d3uP3I2bXeawtiUL52/mpNcpaDXmXo4GX5bu264giKdGnVm
	 o9XVekHWp8t4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCEFCE7AA3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311559363.4749.15296008123952900065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad96a42d5ee07bfd7264c3ed713798972b4678ef1f10a1d51534bc1491834bd8
Date: Fri, 14 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763115593
