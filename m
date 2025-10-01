Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8BB23BD13
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759353593; cv=none; b=OB98e+97Zg/nF1KHtTm2QlSuFhBW3WVq1quFRKRIpjt3d7Mo1qDxzjkFfD5Uo39WbwS1EnEvR1IvRT4Tc3FeiIXdD+V/nXzPjCSHWP9MDlxxT/i0X/yVTC5FCzjbZ5eVISDmzTkQry+aOzoHz5hqKFZ+C7IwCZEiT+YD8EIBCsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759353593; c=relaxed/simple;
	bh=soYQ320ojpKYVZ/DdaSCA5G1vIeXz5h+PnztFm7zJjI=;
	h=To:Subject:From:Message-Id:Date; b=ef4tCRvOQmsvvohB9iHKCj7tdbKoTlKpR+mmUSXalDHlhA/lXg8GFDQNBsQOivZuAPmervW9ACRZ1HN7IelYTu5gsYe+V9/9RgI/mHKgLG2jMTLQcoQp7097SMvrJzlmbtSMOU3vw9QzusWyg/t2z+3fegTtGYMNyyDD07DcObc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSkQ3FkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSkQ3FkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A327FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759353593;
	bh=soYQ320ojpKYVZ/DdaSCA5G1vIeXz5h+PnztFm7zJjI=;
	h=To:Subject:From:Date:From;
	b=PSkQ3FkGPJhP4R3zpgdmgXUF40xJZ3K7kE5TEi9cNeLrpLvI+CfhwjUd6O38r6pY8
	 Kn/j8VyaJ4tuHmmbBt87HxDJoyuZ6bv4QUoioHc/3ulSOqocQ3rEkxNVvKvce3/Kf+
	 ijk1o4zIa1oJs3FCYhb2JWm1N+ZuHIY8aVlZCq9VJNqaP5t796UZATiBIXF1tNvIZo
	 W0dm8eWepRsuhLDMVekFaqfHfKg1dRHE2CK1uyRC3hZP35o2iugwSr1y39kZIVtaNT
	 +VKDIXQqJehHBBRwsiC4bQRXqjF3JxbnlUu17nIZHXJWaaIVFki+iN5Y4lSCQCCW0a
	 qTbftRL6toeTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E53CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935359358.31173.12550692163848609542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae131efe1420cbba0ebd8b282f6ac4a35014dfae2211499f0aac699d0c375f26
Date: Wed, 01 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759353593
