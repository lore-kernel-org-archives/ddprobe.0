Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE3940245A
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779979970; cv=none; b=hDdaO9tzrm7ALLGek5HypNU78TVgUus5FXCVHXEg7qcJ1WABoPR3dyK4pNTlvw9N/1JV3w3FG0g8abcl8oGNlwIGs3wJRyZ2IUuRnp+x7vokHK2/rmSykV/Nm/7VG0jui5z7jYDKh7ZsOIO/QoJL8uZZ7dI1Xufo2yRtjxccI+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779979970; c=relaxed/simple;
	bh=wm3bCJlAj76Fa6pt/HVhQsmRBvkphiEtqQYxOQ4WoQo=;
	h=To:Subject:From:Message-Id:Date; b=IqHiaqYbp/G5GwZy7vrL/6W8HOs+Sh1DQ4cGhijGDxbqxVKrTlmR5LtiKsoQiz+iCQNtt675RHAnGtMGirmvmyxqlXAcGV4kYFTDZ4xCsc/TMemz0BIbtySEOpPRh5MQ2ZTez5PbZE8YKNVaXLUEovpH8OduEToPA/vgIFgUAgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mq0wBULM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mq0wBULM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C6DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779979953;
	bh=wm3bCJlAj76Fa6pt/HVhQsmRBvkphiEtqQYxOQ4WoQo=;
	h=To:Subject:From:Date:From;
	b=Mq0wBULMicWmM3DXGVWB+bsSxlUNjgpD9ZAcBB47pbubZLKVfwsHwb+8wNAhkqAln
	 J+0IZNAeLK+Vtjl3D0Yf0vNNwmKRzJcqzGiWFZOejqQsoXUMqP9Z3z3OAHw/LxugRT
	 o10J9nkMf7gc/PmnButMcF3dEEPImHrjS81b7jVpU5KTjZXuJxCkf20FH6b00OtlZe
	 skzOhUPyFRV8OYDbumMA6Us9rPqn+6dEFOPyJjRo6hikTuYCnDrUrgg07ImS4HoryN
	 ySnkXo8VGPWq3Hw36Oy/es4srp3khD/g4oV5w6rZPYYiAZaedxS9jmktxe2GvFD/Sv
	 kIILDxxa1we0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB557CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997995369.29190.8548086903245805206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f917e090f80d691df7bddc6091b1b119759aa6426c330c2f31cc6177bc5b4d
Date: Thu, 28 May 2026 14:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779979953
