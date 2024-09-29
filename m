Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9C6566A
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727608554; cv=none; b=eYqXqGYQc1u2QRGp/wPYlXjYkgh/3Xml9TRhm5JRd5W/IpGsCOXiWJxl0A8l2YFx3eu3jjOo55SvOdqVYY2lTBkDtManH8LQE0TiyTc5ZsUsD82KB3RmGlAwDznHsRnz6kdw9GUpwES3XE26ObHN8H8q16DCuS4mzVun9iMphRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727608554; c=relaxed/simple;
	bh=oSyBQJGa+Km5fUx43Qmhnb9sY4qkRBOOXZWUc8Qut2E=;
	h=To:Subject:From:Message-Id:Date; b=R+sMCfWbc30Zs2AfJIaXDiy4k/70SeHVEzvWU6bfQ0JUpdrVxsJLt+8CxrUultRWC1SqlkSI4R6+Uqxxom3QAfFouYSa64iORkPSNZF8SJAUqIz1KxHAMGNaKv47eJA1B7UergG3pB83YQRONpD7p2XENfSuYIzOorgFGQujULk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhUOa9ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhUOa9ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A710AC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727608553;
	bh=oSyBQJGa+Km5fUx43Qmhnb9sY4qkRBOOXZWUc8Qut2E=;
	h=To:Subject:From:Date:From;
	b=dhUOa9ZJ0xnWaAFe62gTFtI2TO0AINlGGTBAQ5VeuQ7JOQjJCGNyQdljXfXsdEQpz
	 sE/ZMTXNGCfz2ipoI5UPkCM+HcB0BNzq1V5UTG0Az1IqlDR4sm1anbmJwwcFPQE4/3
	 V7Ecy21oZIKK9GIZzDayb2jrW1VaBRQt2JZWZcVt1qohLQhrRO5GuYbQaNM2tQQUJI
	 JM1ZA2sdAYqqBnN2bX+eT8/+tGOGlAWIY0W0IFSOLbnAUSwIvuolO62eWB7uiBTQ1j
	 iPXfvvzsXd8rFVdWSJ63HI70yryUKG09lZ4aL+VXdbtLXH6OYvFgVHoOaTZx4q6Om3
	 WneSyalEvIsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A30CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760855358.30059.12906942389327584567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4204b35f8f684e2ccdd91f80863c1c391921757a1d643af1cb13915cafc5cb1
Date: Sun, 29 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727608553
