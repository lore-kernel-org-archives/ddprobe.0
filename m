Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2207A8F66
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735931154; cv=none; b=oRLGexvc/jbZ/VX+uhRVlf18o7NZ2joFeQoSRIf/xV5PIEQseQEcGxGzwzwYk/5mrrSYcYHiesZsZfI3qogHAlubrN/yOuG07Oq77ecekwc8OAjSJs7mDRrh9PBjMrd4mvITFVkqfeC7/+vsIWbz4ilz01rtgbXtK4W1COeUYUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735931154; c=relaxed/simple;
	bh=lE3u2f5R6yfjztvUozjJAVM8FrvLCLa0xRU7mad2wqw=;
	h=To:Subject:From:Message-Id:Date; b=i8UIuOHvgC8hU7kxLm2aUAKwOXMjtCU23qhj+1gZ+wDT26eK/UGCgLdvBFWoqJ/1cqycR2RiM/KQ+XG9/RXvShADc1gL7NoXuWTqaGEesmDStQx749WcVyp1Nl+6JzFvsUI6b/nFgM3aNbb/yVX4/soPI3bS2piaFdLUuYQt7vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sx5pvnvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sx5pvnvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A794EC4CED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735931153;
	bh=lE3u2f5R6yfjztvUozjJAVM8FrvLCLa0xRU7mad2wqw=;
	h=To:Subject:From:Date:From;
	b=sx5pvnvnHlG0YiQxhxHnpm55CVzR+lh4xVgWK4kQlJkq1HXlsyeYzWmwc7G8wptkL
	 CIXGts8fDksFCaigK2nrUI15xfDdD5AVL9I6dvIWHGQd8tXsXFzFCdFeEInOsqmPyN
	 iK43uWNrwxtPcJtIHjOrhu7rld6moox98rv1HVvt1z8++yYSd98WURAwROvNTxbz9J
	 14t6DhGjmrNtl0TG7R48LRFSD07P62Gp4H7kAq7a2+HhoYRkDBo56INC/Lku3Xgt96
	 LXBIFUPBTuhakQodZAluzng8dKWK5sQcg7SP89oXoeRSTb+NqeGSMAsy3ZG1YAf4Hc
	 Nco7EEDw2szpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96208E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593115360.3246.5007913029084498642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7f38229ca17f32a231421f5071d46d08620eb0dbb4d115e4b342e3d2846262
Date: Fri, 03 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735931153
