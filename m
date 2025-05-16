Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B07249EB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747404595; cv=none; b=CwIlbYJDcaq4PqZekVnnVQZRV7vVqRrR21afxQZTcVrOmLpwqoiq8US0GLTyGF/lUW+KFL/6/vl5WQTYL9sxAmJGGWmxZFS0c/mKaeq6x/aUg496zoY0kPGLB+l3tXkiaJge85uHznxT8+/6OGLMX2ZlNrl9DvQjJY/xY+I+m5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747404595; c=relaxed/simple;
	bh=uKs34zsNu0oSmrCREV2d9nwjNq7enl/XT267vpW7KKo=;
	h=To:Subject:From:Message-Id:Date; b=HDrnXoSthrdvuHxNN1v2MsFP5Ra1RIwvyh/ATdOAQnLC9jtUD28fUAqqXPbaYbh6dbmR5bmpILmpoxw9UhRRmK/E7oUY7wKXq31u4NzyK3CYAwaZcLtNQqyAdmBXX5QAC7+fk8O273F3aGs7yO62FaEZuB/fj2GSyDWlUYKv+oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1b+3ElQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1b+3ElQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9260C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747404593;
	bh=uKs34zsNu0oSmrCREV2d9nwjNq7enl/XT267vpW7KKo=;
	h=To:Subject:From:Date:From;
	b=u1b+3ElQ6ZtlSP2C0ziTsQCKm7mRRPx7m24WdCiw/beP9lGGs/LNWxxms6dKmlxeI
	 ZbDVvqUehVO8H/eafZflr/A3jt7iSuNltZmDz3Gxz3JQamNQcZgCK/4D4HxtLXNt7D
	 NvrBrnlMUbA42XQd64kQSB8Uscha0L5/scaLJp8EuckbS0RAZO93kwBFON6y6fRGBA
	 AFJrtasMNjOl/QK0Rzqmis0UBllsaBsdW5ePYBAPzFhQmPJCoI9d/BhzfeArC3uM+g
	 44oADLVvhYv4+KaX1oL4WnF53uWJBPv11d2N7x2CS4IKMOnZiJ1zRwRUTs1zLoBPIu
	 8MXWL0P2uV9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977B4C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740459360.14575.5633485665634661942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef10d9c7cb2a0fcc4d004e5c1524d937a148337351ee93c1b508ff891841dac
Date: Fri, 16 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747404593
