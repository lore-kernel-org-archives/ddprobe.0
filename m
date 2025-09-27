Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3743F19D087
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759012194; cv=none; b=u9hQPZTlVFhxfnh1JT0j1wO1PTZhucCnjup9ZKW+b2pT627UeYiN1slZr8HqCHpHjIT1htLlbUDar5mvmXLjTttgcj7efLf/E3fp3L8a3HVlMRr3VdAdbW42AE1iBa2mcy4TGZdUXr3l9VoQKKw318xELN5sKvMWU8vxTOPleEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759012194; c=relaxed/simple;
	bh=/IZ3JodWLIh7g5k+wDaGXHlxTOjA8rnudkyTtTTOC9E=;
	h=To:Subject:From:Message-Id:Date; b=cRxuofZf4RnOX/IRg9DwTL9Ag/W+LIsUnncOTlRXSqCi8yCbnvlFnGxqN8MdzN/TtAUPPt7wQ2sJ6DdsR4oxm+vxTMtYBGuX/1kVUBSExUvE7wpBbjVCB/hdmPyh1ovNS6oHa0X3R5SAcRCEcZ6U3GyDWEqfMy7eJodJXjQY1yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2nFUw2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2nFUw2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23DAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759012193;
	bh=/IZ3JodWLIh7g5k+wDaGXHlxTOjA8rnudkyTtTTOC9E=;
	h=To:Subject:From:Date:From;
	b=F2nFUw2O/CKXVNOlZiEtLcsBKcGn5NbR6DQxL8D4LSnYrMrr5m3yvxrpKIj3uJGAE
	 73hW+PA2gyHiHic5pTCYRfppwbcTnvBtIInx6tLWQ2r8/Or58nG0iGrgKIYM05zHL5
	 LDDsQoBBLfbuBJOEzjzaUhGGADK5ELVpby/52Lp3CDAbb53MSyebMI5ujvUQlgOZvu
	 ZoJVQmHUizD+F0cpNfZhxuy+kqvT5LMsQOYbWAj5y7Dd16xocwCKj4lD8mY57XS9Zc
	 zfY1CKsB5uMV0Omun4bhllXcMWNtkrQfLGD2o7ekxjMOZjks6XpdEFJhnEuBwP/9lx
	 4hasXxmwXGHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EECAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901219357.18053.11671731472248318652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7634ef65fafdf6ea312c10120247b107ef5361ddb89e5f4be65b8596b5f38dbc
Date: Sat, 27 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759012193
