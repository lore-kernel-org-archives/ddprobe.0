Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E093ECBDA
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788501634; cv=none; b=teEG8lPSfqzO9hH43bl5ijJo+cME4fwp37vddv1TugMh3YGf/NDsfv2Lxa8vFA+2BRk07H9j4PjaB27MbdhmBGOAt3V2lBAC5UlESAvr5HAMQYoGaETt2nVl7e7wtwXq7tWb2pzx+Teio3ZGaKM869PCmbTffKP4/KPmsRPeGoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788501634; c=relaxed/simple;
	bh=JkWPPyxg6fNj4rQSOLO6LPPmZJFlUS3AqFPkDhxR6WI=;
	h=To:Subject:From:Message-Id:Date; b=LiVZthueT4F/xMZra/hoJnmNaLRI1tSlmfN5bwe36veip43/Pk2MPNsN9COFHXXjpvClLP5q8xam1H7wrQGxEHgvzICeQ+5ELZKxllKn4uF1lqWpC3EV8W7olDhns80klaiCuYhGxElqN1uppPf8RXQnC5DUYFIha/cOO9+Y/M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DScF7E7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DScF7E7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EC6C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788501633;
	bh=JkWPPyxg6fNj4rQSOLO6LPPmZJFlUS3AqFPkDhxR6WI=;
	h=To:Subject:From:Date:From;
	b=DScF7E7R+AmbFMqH4X81LQ/pCG0jQhYkNMofMZz/CuYzp0eOXYRS5D/Sc+nLE5Lgc
	 N1+6grL+XdIxnuu9f3XUr5HnKgvVL6UflLi3KCRuWRD1/2vXWCwldplnpg7p/SXmRx
	 0KQmHVAH87AUtAsPPu2PIAAwK4LE68l0KzXFMIkk2lIsQ8Q6u2QJ+Qr5ltJTXFInnY
	 aiObRxynDU85DLHxONNo8ZqVEUqThjmeYF876WIbEDMAeHC7QH16ILkW11ZS7RA28L
	 4lIq715TlfVx1r2Zmrl4PuJo+QI2tipiXK+KwUCpM7AV/pR+KHCbLzuhxZQJDHPXmV
	 9OS+tEDSXeU8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6D0C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850163370.15766.6177981603998588949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40445eec2f8af60168d05625444db7eaab7eb5adaeecbc0c9243cc0592589aac
Date: Fri, 04 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788501633
