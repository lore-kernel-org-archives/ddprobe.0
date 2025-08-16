Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189801DD0D4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755385194; cv=none; b=qdJR6kIxuq5yemn2A8+ceedN6zl3bll5DiyOAYr45+b41XjKlgMHpr7K2MTEM0UvbXqjT4L+QlqKkdxS1sFtxRwB4eZbEXlKS1xB9sX+JwGKuCFhZzsPEQL7bujEVikb3F5K6eEMd5+NQbJrPEWP5RqElHDRIMx5lpZiQVhreOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755385194; c=relaxed/simple;
	bh=AjfaIiqXWkEq0t6/FDRgJWBVoKZRPwayJ+lOBipIJ8s=;
	h=To:Subject:From:Message-Id:Date; b=HTe1/+zbyoVvoG25FjKezfEmiV6zhYAgU4uIKaWNbzLxE13y5V6dJPcX+cJXo6ir6Jaqe1UwSgHe2NIJeUO0lKxHsdO9kNpm82/EVcrgr06BFVCOr9Rl2kjfeps9g/62mgoH+ZugYkpUTH0qR8sv7v4pCXFrf4RxNvrpxc27Bvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxeJmpvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxeJmpvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02C1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755385193;
	bh=AjfaIiqXWkEq0t6/FDRgJWBVoKZRPwayJ+lOBipIJ8s=;
	h=To:Subject:From:Date:From;
	b=sxeJmpvoPiLuS5G8dYtbCOr7IIoWoSnAn/lqWFnnli2JDF6MWUfeBIdya583ylaw4
	 WUZrD85Yi/Rrs/EmSHMqVRt7O1S2hSHL/Ij4WxJJpeLKG3d5KUhjq2CJL2xUJDG0M4
	 5EudqA0PordwrowYL0fDuvlR93s1qPsfKy21qmzlTjIpGou4FRGUUvXQihLRk9z3FN
	 Pg3kI0bBUDU37w+kgL5hXOIQ47vT6Zw3MpuAAAzi1sTbQuc6Jfe02450U/5jbyvwRA
	 vJwGTolTdoum5z0ohxarXG3esakJXwq98Krx+deTYYJZHmRCQ2J+Cw8wfxGf/QZocT
	 qDaJtGJ6CuGoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B82CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538519357.12743.5335162707940589833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd915e8689a4a8631a285089bf33d35ee8cbcb1acd82120d219f58d5aa0d968
Date: Sat, 16 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755385193
