Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC013158DCF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774810493; cv=none; b=g5BgoDhwWxy8Xp8s4xKg1HevC6znNXpWVD73icNNslVrm6zEFqD7JhS9MgyKGavvLtNwN4ha8Rb0OjPIvcoLvxXjvyDuUwX4myvcOOcAkBiwETAu4XE8ZXGHoGysQS9mI7kNekTPjenitU/CIrvH8ncZRn9znc9YAQ/6+BRWce4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774810493; c=relaxed/simple;
	bh=P7TbSWT1eZQhEeaRw2OSeXa1SaYhD0gpHczKU4sFeTY=;
	h=To:Subject:From:Message-Id:Date; b=Sx348EWxcsuRrhkur/O/r5vrbuGhh0rVGy8r6y7xtA6JN96CN/2ckB5M/MPoqYnJbWsROG2Qd+Q5SSjPawoLlP3Woq0VnlhaJ3c1Ap+OTm38P1DwsOpJEaUa6WFpA93U2/0XeY7tr+rYSJ2pZ1DMMHMwPsjAnsDKTGOAoqowD7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSzI+h7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSzI+h7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E8C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774810493;
	bh=P7TbSWT1eZQhEeaRw2OSeXa1SaYhD0gpHczKU4sFeTY=;
	h=To:Subject:From:Date:From;
	b=fSzI+h7cavpWtJi8C0YQTxye/+c51PVOrrNngtGnabmM1mluJtwFkwIgiHPSZvrey
	 jtLZAtHgd3JvkTFMOEOFJOJBMIGMfu2coU01ZTbwUPBFJ+68Ags8onL6TtvcMSzWEE
	 gP9dHKr3Ty9Xsj8tABMwTiolJyiHOI0Z/6DJ9XWdWi6Ls7aXdV1UCuNceAcyLL2ZUn
	 AWrX+tA/FPgRGHbdRwlP7X/wrpuEodR6ZSDHUP68OCdH9TcuWWFbPHSXgH2LWSgQ26
	 6YJ6sydA21qXnXxck24MSAABZL3FdwakDjEQZX7us4G2h0rOm3r5m7KW6L2XQjtpyv
	 lJ56yaYxyFFfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFAFC97E6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481049358.3684.14576521916385301445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e221a19dc5d7f741d2236e99c8571574d8ea69767235418aef810e772217748
Date: Sun, 29 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774810493
