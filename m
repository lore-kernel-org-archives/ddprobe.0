Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD311E1E12
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772316894; cv=none; b=fO5LZvEGHCvwcuYp0tqBanZvAna/iTEXH0ZKefXM35J3Q9iENBWIp/v7bwv4kI6e8Ia9Dy2P7m6D68UGCvYsTI7BzI4RWCxih5HohI3X0sZvZRURGjrmxuCN6tY/vCWxkQejxnB+erxQot2WQPZlKu8Gp1B178s6upF+MMl0CbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772316894; c=relaxed/simple;
	bh=M8IB3y4mxgUwmtTB/+koa0r+xO4aM8FMblPDZPuBBLA=;
	h=To:Subject:From:Message-Id:Date; b=K3ZGYPa2DAC2ScM/b1IOqpwjuabVbqYpl4e3yODwnCwr670kYdvspI13NxOMpYEAA8nmhpPxhform4274Js26+nx6QyWFpeGvu6/Xy4Gfhs8g+Gku59OyR+fG2szBn/SJYHY/VrWnMe45y2FIAgrKYQHn3sA2Q4sU/GsKf3q+yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzgKdcay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzgKdcay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5A9C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772316893;
	bh=M8IB3y4mxgUwmtTB/+koa0r+xO4aM8FMblPDZPuBBLA=;
	h=To:Subject:From:Date:From;
	b=uzgKdcaypz++tweHKamC0un/Hae2bWc56+azd2/qJKRVF9FaxBAmRyHbLiMhP8JpB
	 Q5NvmKKol1LMz7k36EMPU8FZj5KG675jNucQZj2+a9LV0rJ2n4kW4s1wJnHO7evSBR
	 gdOQO+b1lU5A0m3x3Edf7xHnWbSTD74llYmX6Z2iWz6jOJlollnNn7vX48GtJJJsrk
	 W4DeMdh6JG2qG23NHktfG9g1v7ocG+KpmzM23CFdOBhinkI7wIgFDRXYrDKoyg6smt
	 lwV7sfzgBpo1alu8LYQ4WtXZYXJm5o6NdaJnS1UlbGROzEmhZKOrJW2QlJP8ECzBm9
	 sp4q53RZN1KiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0AFD0040
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231689360.2801.17729820243811720750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7076df652f2ae21e8abcc0933dcd21cd3eb9c6b2fca1461a6ef8733981f08030
Date: Sat, 28 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772316893
