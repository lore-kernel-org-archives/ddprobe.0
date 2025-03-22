Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4989D1F2BB5
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742642394; cv=none; b=h+k0oiL6oAgZhlBVhOpfmJMyloBftVZ8vp5yxmwl85NPmHZ7O6d8SXYlbdgLD7tRB2BViQuqFjiZY2lG66jU/A4kvMiL05Qu8bVz9EEzOCsp7PYsfOy7thoN54DftZMOGcUa2T3HcxQ/o8hyazMbOKEltCQ1CW/qZVWcdH8Drf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742642394; c=relaxed/simple;
	bh=LqcA2071Ro1WNAHtbEPUcJhKoi5LFvYepGzIcipbdQs=;
	h=To:Subject:From:Message-Id:Date; b=LnPUZ/qtjthWsOMwySAEqqee/IvjbdxPcHcJIjVy7f9ETpyq+YvaGsEtqwymX3mfUnFskfTz13RLDUz73ucwP0S3HsADhjZ2xY+IniHmdeNc8QP3/NY/v0vOmv5jE6t9IayGY8dizZRpoGoounXx9QRSYfo07chZQubib/UkA/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8xKsFrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8xKsFrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69F2C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742642393;
	bh=LqcA2071Ro1WNAHtbEPUcJhKoi5LFvYepGzIcipbdQs=;
	h=To:Subject:From:Date:From;
	b=Y8xKsFrtKtKj3q6Q5AhrWv1q50q1x/tO6T53yaLGcfie4euMqnkF8CtK+dCQhVTB0
	 2ztZ2S1pTQ0ZQ5DBolEJGktZi7a9KXi2GlQhi1uFChDE0c/H12s36OUKvym517Flgw
	 NSuXLUE15mPwmqz50SJkE5NRrO4ncQA5w+HUZfgwEzTpW3l3CXyrNno3PM5hVSlNbf
	 U1NrXNbPGrivcxJVdqdI0llY5O6ips8KevBj58QMAYrq+xPiAAcI8RHiQjZHbb6zb+
	 Xi0PmbDNHlfbyPr+yot2CSNM6Ywyczp5qT2SDyx0zXzhwMq/1+bNni4eXyeYthM980
	 8LMLVntH8226g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A547DC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264239363.26992.5226292010221798194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a6dcb5a50ed11502b96ea994c0c1bd5d846954674781586a5022f23d3c84ca
Date: Sat, 22 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742642393
