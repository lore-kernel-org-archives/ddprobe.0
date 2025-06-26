Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805BC2E7648
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750946395; cv=none; b=d8txngNANO7+juV9uSzxLUmR2rF0KU6cTn0BJgIojYmmr6xbgPTmGLsuCLuX8iXScgAAEz5hxk80jJLcTnBGjycEt9PhZ7CL/9APCQ+aXnJZrBs6ZNxHJnQATMIgfaM9sET0MwotrupPCYcSeutjxKr9lZY3OsfjgTZpWDWAwls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750946395; c=relaxed/simple;
	bh=2yI86/R17NVKK5rQOkaErVaRVaeV6G/rxeFC7AvjAA8=;
	h=To:Subject:From:Message-Id:Date; b=NeLm7mlivJPGy+ky7dwWWPAIRzVF+RW9SIHS/+v3MqDZGYG0gjpqQINgfZA/wRdDCBdUX63/9rNZCyx/uyWph2bzhbuSJ/tYkflRFwtev8oeCYQqnDSN2SkoYHuh7ipbxFCx42caCpNyYGTwzKh2xxmTl7eWsl5JkdfJ/E0q3UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0uzlMam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0uzlMam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33AFC4CEF2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750946393;
	bh=2yI86/R17NVKK5rQOkaErVaRVaeV6G/rxeFC7AvjAA8=;
	h=To:Subject:From:Date:From;
	b=Z0uzlMamj+Z1oaAs/r6fY+ZBzJdhVEDBxi+9dfSbLHPeQvjlNnskzNz/LosC/LKBD
	 f2kMIiOLimuY6Na9BZfCwKgmisn2gP7szwfMcXGjmEBwcAw9fgHhO1cKSlWK2V9TkV
	 TxSu3zgJ88pwlUi+bxmBdfNxBke//iJSCeXZuazFnhFhtSlenrkT+hMISFpn31voRE
	 66q9Z2NLiwqtyS2Dl55mj8XjVL8n6od0CBYEqKQK6HCEirvmx69aVJYGT0WhS/cjsF
	 2OajmgofSVBFeu7bP4PFJQ6C2wMgGtobIahD/ea/yjIEKBOQU8YrTBv+rg2DG5BbIr
	 /7ziCaB1ofuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6EC7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094639358.8014.9134326785348193285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33ac74f3d315b7db10bc70047f3426c3494eb03194ba966f707f79e091f0aaa
Date: Thu, 26 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750946393
