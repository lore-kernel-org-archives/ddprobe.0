Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F13314A65
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775022294; cv=none; b=nm5X+tgeCon+TTsumrZynuSVNcY2O50tc/or1xJ0H/vbnitox76OyKWNF1gQMQyzT9quskgWsQMmyxAWWM5J59bAird2l7b7ZrOqipoCyVp4vzmsvMsczeQWfO5BZ5jy14t/uYAGV+3NhEakLtQPOJ+gfjZ6d5yj8gSEEjaD4IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775022294; c=relaxed/simple;
	bh=99ppaFzTcG36pxGYMRoROTEyNJ1tWfqiWl4XKyxFzCg=;
	h=To:Subject:From:Message-Id:Date; b=rM4ECvLw0Gcdw2K1AkotrUb0fDvPcmt2R8uVkotkMD9SBoAJg1ddbDA0t7BaLzkdjYteOtMRUZQHAhm25PDC5xte5IueIGKedInd6wfXYw/SekI8pkS4WHpCtPq82ZSwsUdz50P+lf58i5poUSgfN+kWQeqbRqOsqEdFS09dww8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmVIFCfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmVIFCfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6259C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775022293;
	bh=99ppaFzTcG36pxGYMRoROTEyNJ1tWfqiWl4XKyxFzCg=;
	h=To:Subject:From:Date:From;
	b=tmVIFCfy+DSIvbI4LxQv82og0ikFb3Gx2yHpp08S0mrg9ki1oXbEyCnRBQ5RC5KFE
	 bPpanTqXsi+i8SUWnCdCoF9t761GbEsyFmnKTEpt1IqF4megQK9USQX9aLOPhuJJI1
	 QukNmsDoVnyRoEaFph0uwtqAfw1a64JUNHHVmeTmSeRshNcA0RlqS5A1uqJDWpgAbl
	 lwol/PvfiX0N4lmMJYljHG1ZwH8p4DSy+nS3TuJZ89olQZF0hc3uo4QAWOzJRIJZp0
	 8OaD8XnXN3Iczr+cVQyKm7uisx2xMPMXZZ88gkRMFWnmgXtLbEv5K8hvpCB9BAARO/
	 VPPwUoAiJshdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A3E1076370
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502229359.6949.17695221350660203758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969ed91424b26d697c6d06ec71e5c7eb21222eea678db55828a50b291f85332e
Date: Wed, 01 Apr 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775022293
