Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7751052CCE7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792167634; cv=none; b=UxHQi7+Vtv1KwABap6HU68nhyFQXVj1xxPAV2QlbE1DTS934PDo6mDKk3zz6d1SzyAKQTxQINy41q6y88Frvu60Cf5NQP906VHBsomwuoK3/4l6/xQ+SReaGFx7N8j9SGybtxZyOthexZXvCBWYfghyy3Z1TFHh7RucArHuwFws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792167634; c=relaxed/simple;
	bh=URvSo/vGdr3rqONxilR44NBeRNTES0Oft9IguK0bEok=;
	h=To:Subject:From:Message-Id:Date; b=MPvJG9m/mnMnXcUG/HX8SfOWLnBkDroXrz0E4ldXrMkrA6k7vYQfPSo1DH/AiwtUiZiQ/3EnX3RfyfIEWj65RsFcBz2OwsMXy/dyiOe3A+yqm27H0+85QuIZvPPb23wagUSSwSny4jF2r4XuxQCa1vBLNMUX8XbFnOj0Ejk7ZCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2+aDxGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2+aDxGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2334C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792167633;
	bh=URvSo/vGdr3rqONxilR44NBeRNTES0Oft9IguK0bEok=;
	h=To:Subject:From:Date:From;
	b=L2+aDxGLnI/zfMtjZ8gzu0KWxoWc6s0uPyglKnGHdpn5Eojbx8nHmnMLcUjXcN+vT
	 1A59Zm0uf5gKns1dbDg6/tsLELuKOBeq4nTXocL92anhlmlDdNNedI0BJRNORbpGIT
	 ctqxp5GTkXyeQcXbXi0HnemX4CV604jVaNkmxBuHR1J3/LsT+XO//1PzFNJa1f+M6q
	 jP3qv30KXcc0vU8Sql0Q+U3RXpPo5yYlmA3F8I61h7CrU6ATwA1CUiKL14ycBZzrxf
	 yDxqpiW6Z9JT15VeSposZAryQ1qCM/ye1RAxYrBZ6QaK67PbLqdc7kg0K4RkcO1vQE
	 sLbNU5AMcLirg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8D1CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216763375.16505.559006242041223704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f723980fd280e7774a72f1455ca4bc38a79b492d060104efcb1a486169b322a1
Date: Fri, 16 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792167633
