Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596621AD3F6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734080755; cv=none; b=LOLiI3E6rMSCkEWnBxCALu6BvglpMeRmpudKOmK2yxLP6Wf5B6DtC4R+LzMBcRMOE9DsOxKwOaWKzWf5jOqdIx1tIUTQUDnseMVqvTbJWknJjPeb2Ot2q7h5DDIFDJnlUul8tq0yJhexglJmufzJebqVtItxLbW+O1Rqza6uryY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734080755; c=relaxed/simple;
	bh=S9jrgYAUjPLoYaJP6EujVbEDtFYx00DmmkOgXuO/zwU=;
	h=To:Subject:From:Message-Id:Date; b=U/iXAwG3orNYmyfF7bn34LfXWcixEEiXhMyVhhngX6t4G/wCOcmc322wY57N3ln8dS3dr9AItFB7E/hrzeqPp5d5P27YNY3IEm50LbJzye79Gyh4xgvn3vvVY8JdjzCYx+to3xV9l7zxzF06cfqqVg+8w/BKldxCvmZFk35NvG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM4XOYPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM4XOYPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5FEC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734080754;
	bh=S9jrgYAUjPLoYaJP6EujVbEDtFYx00DmmkOgXuO/zwU=;
	h=To:Subject:From:Date:From;
	b=sM4XOYPQr9MHYaQQjACkliN/SC/G03eOyJznoY+sF7T3Cv004slMoUho9wnIgoECh
	 D1k4ISOP2aIG6mDqetQvBrXjZwlGD3VYenh8onT8GvKHCEJItWR4wmVuQpyssFXcPZ
	 NWWsj0nbTEbw8+MWAWGYb0Me5R7MoID2NeTmS87NzVgoVkjvRlnHVAU0XkyL+0jaKG
	 0fudfhP62GFjPvQkvxiwIyLZzcyIZbajK129tQyMoyxeMWQv3AIDs9iLKLEhsCctF1
	 l8t/7YnSwFEFLgqjAou7jMvNeOIxrJeVWG1RcYaQiJEGmtznqeOaf5azm38j1K6r9R
	 O6lWnOSsjgcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19ABE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408075371.9151.4638368815407655602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9600277cb77b3d25b02c23cdf86bdc79847c4adc84cd3be03c8756e58719b78f
Date: Fri, 13 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734080753
