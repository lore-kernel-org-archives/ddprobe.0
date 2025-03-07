Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9BD23F296
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741367333; cv=none; b=HBrW28yl257p7SY8uI7hNRVrRLSUDpm1IgpssQpeYuiFfPStFQNPmcQAUeSjLqafn5Ha0GmWUC+XpRo1nBJz67kRyJW5+P88HSygYMVOLORgskAGaQA/h9ftUC4HghHeSOPa7k721MqbJ5EIV2asUyZvenB9AzQxsN9ZLWyqOKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741367333; c=relaxed/simple;
	bh=9ifozRC8bt4TT6HS+adY1FlFsbDsuNM99VD9KN13BZA=;
	h=To:Subject:From:Message-Id:Date; b=tgmoJL0J2L+hyHXMjj1M8YbDOPQBdaHsblm6J4f9Oepif4mN4aEI/lw15n757jtE5RgO7jZmdhxAmUfwK1RzrJxxVXU+yyLl8/xdVCxMAFwMOFjO5vfiiE6cvRmqz8hcCQlusMHoLIips64x1K1NjQodIGNNrdw4pG913W/fVmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/IExz2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/IExz2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54F9C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741367333;
	bh=9ifozRC8bt4TT6HS+adY1FlFsbDsuNM99VD9KN13BZA=;
	h=To:Subject:From:Date:From;
	b=u/IExz2sFFqgbLFKZkyg8y4I4iY61nuO4N1iq7ISOTqzfsuCgaYRjyhQCoiuibbou
	 lbRq0Uf6baD4NWtKAsJci7Fc17wBCG6Yz9JkIw8RjOkBL8cpfCC3IBx11RAY+CvNsE
	 0qEEfAMZKkaEt2yKlWpiNPCVgwEaDDNTFzldOlRew6kfFMUp8Gj7B6dW2SeHQ4nXes
	 yRt4MoexnTQ1tGpVGI7pdqJLoOVpaVP02eutn5pQ4j2k/oSrZxnKKfZnjeZ5Dm2gzf
	 USfIuLx6oC2XKSbSuTfaKaBIGOIZz6u+erlQlpUNM5L4UCzGUIX0k/VQrR4V7VCNSh
	 xsRzomduerEzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45A5C28B23
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136733366.29668.7487095023063877973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42a21d9095e999b2e57305425a8d01888635ae536b1f5dcf749d3bca5768ec2
Date: Fri, 07 Mar 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741367333
