Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1921FCC50
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730754954; cv=none; b=O1NczOKrcHM7tZ73wumgKGvcFAAcA9TduyqRHIWm5kFvHImFwf1WKWZn5lWTePIlRgcW1At+Q0Se8YE43E11KzRTWjSgF88goMXhMY0H+EOB9OqheGQ1May8k5wmOgEgXTieurakSJtfn5qax9og1cCYq5KxCX8i+Ei5L5WdyN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730754954; c=relaxed/simple;
	bh=QY8kesfY+rZIfL8HZvvttT6uJ3fSp1aGgk6Mfovi4DM=;
	h=To:Subject:From:Message-Id:Date; b=REOuliUclm/QjXQuVjZ95pn5eQxTq1OYLxEe/GyymH+XeG0FATHI3KACTrbUu2veFVPq3jFA/Ph7ysmFnqTFvBrDr/xqn9BaCSZKJNpkqWwnUsBil9fKN6lce48SU2K/oY+0c8049gR6vfgmEURE0J3dOKPxjq2jD1+6Vqzet78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nK1wGJXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nK1wGJXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DFDC4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730754953;
	bh=QY8kesfY+rZIfL8HZvvttT6uJ3fSp1aGgk6Mfovi4DM=;
	h=To:Subject:From:Date:From;
	b=nK1wGJXYlIkdQoOSQdEQf6/WMt5mHL0PQuNYiSpcr4O4eVECGUeLTGqEXsZ42F/G0
	 AC7hMsBrP+K3XFTelE14Id+fCRTRkOksiBPALQtD1/qIZs0E1i9L6u3swLwly8Srgn
	 hXXTFbPnPYXuSDMHhZ852Q9txVsCtj5K8Kax2hdVm/MIBoqnsV0WSgsUvetjBIaShM
	 XsGVKvypO5GA+x101NEchE4tGEkEUcotM5cyMSjjwqptqfVkZyQ1LNKd8Hpl6z/yVp
	 nVUr4+lT2H3OdIxgEemosE784elqYK+58Oe4TRZROAmLjrmCi3sXxfRigoXL7CIK21
	 5ouvkC0Lr474w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199DD1BDF2
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173075495358.14483.11176219185091555034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09443243d8e1f46ffac8af1938b26a54d52754105d771b8bf9c6a711ecfa141
Date: Mon, 04 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730754953
