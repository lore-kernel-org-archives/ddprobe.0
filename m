Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243DC3009ED
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771502094; cv=none; b=q1d8ot9OGTypEBo5uG6YGkkOiiDGsfJafrDwyymdIN1X47PFQWOm8EV6QyxePD+eTt6CxaNsYilDx5vdiiPPkiskplBTFOUivZkpBHqID/cYAxjsLicaiKcfm/St6d3iBkpD/mwt5a7/abdKjvkZFGCYZz/Lr3TY5dJycQFvBtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771502094; c=relaxed/simple;
	bh=A4zAS3O/WRBDuja+pd+p8e3cvlIZvYHCWqVaEFzFbWI=;
	h=To:Subject:From:Message-Id:Date; b=SzeLsOP48jIbZukPnapGbusnIi+9H434kTAdApK9Yv0oLTd749k5lPorXXg2XdEHvXkAKGY9arFHXys0J5lXY1raT2FjL+9+NJO3n+L1/f+0ky7HDBaC6SSR47JFuCXoE0zEXEe0s9kfMm7OEhGCMbypEo9iNVfcqi+1LWfRcrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jwb2ZpTG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jwb2ZpTG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC041C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771502093;
	bh=A4zAS3O/WRBDuja+pd+p8e3cvlIZvYHCWqVaEFzFbWI=;
	h=To:Subject:From:Date:From;
	b=Jwb2ZpTGulnj4OLIDg0tv/M9Ts/XPRSZWQz9mE2mZR3Sgj/2xCz6NIO3iGf/oEUrg
	 pxKDc2LSdkKM0JTruj3p4v44R7CtJiweXJRMwhnXesd2m5wBMEjJzDmuOH+szCtKAM
	 zXKL+Iuuu8Y/k6VI2ClfJnMLu9mey/1KJEqO8SVwp7izMxjYqWNcBZJgtSrIuIkBZk
	 Oh8hujQjEXPk/THRNcqyTrtQ92sYRQhqM7P7NuWtMuFqby9ZV3VVj6nr2V6bXtFs/D
	 HZuYVjg9HZc2QZtefPqwmhJ6AmCozfVN2BljAxB7aVbS4mI04YHJUiUM2V+xLw41ct
	 /vRavi28ChNiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EBFE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150209361.10098.7661813931121713320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfe7f1e97ca86320e25035fb0e1c5b680492d09bafa1c41961706963d836e69
Date: Thu, 19 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771502093
