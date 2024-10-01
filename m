Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1718C1BD03F
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727765154; cv=none; b=ZngAIpxL/YNJfWohm2fX/zU6+r1popj2utX9TpB3Zn+4SaJkeCDo6L8rhqY2+TlgxcZjJCq9tBdG4mFZISFLmWOoRBnBNMZ7cBix8m7aZfdpqpPITn2MuQsMJKXufkZwV6Mt1C9koKzKIeIAPQuhvv3RR0jZJS62KD2GEYwM+OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727765154; c=relaxed/simple;
	bh=5RnYtlI5A8IlTYUqg15GXQedUlIGv+y3HfmTnSdT2bM=;
	h=To:Subject:From:Message-Id:Date; b=eYeT6N58KcjUrY7X9lTI4/6Da2z4EjZls0jKDX9c7cOeNNbpmMVTfi6TxPkK2k9a3PQPbTMAylRUJh029J3Im/dKW3+JNuMPScFB4DcpA6JEzL8UQlY7QXd1XjQMn7HDzWYvTvgORATO32Q5CVdXaUq0jvxLMQSJj46asdwv6UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6cgAAhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6cgAAhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B0C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727765153;
	bh=5RnYtlI5A8IlTYUqg15GXQedUlIGv+y3HfmTnSdT2bM=;
	h=To:Subject:From:Date:From;
	b=l6cgAAhUi8TuIMqrtZYHAavy2R8WLiK3SL6jEn/xpwtg5az8CnLfyvlgDDH41JZ0p
	 qNoC9tRqX8dU0f2U4AMftpFdMrdWwp7mJSb5GOvpTpCXm5vbpP5FD1x0R7LuvV86oX
	 KMD00XgI6oCXSEGp+YxEJ03AzgdGqS7H8c5XKXdUFqlwI1NqUa5/qDrtRO/tcOvfqB
	 NPDVew3Irt45yrcX9/82wiMjKuUrZRvsl8zp6loCumWKvocMQd/gafx/porMCA3K9h
	 oFL3e1xGc7xGgFsbCApMa6SSXe9vdUlilqzdZpP65ApDMkL3Vf7U6REh7V8H4ptFEb
	 lN3AVmcd/YAWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A8CE837A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776515359.12622.15723519741365438685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef044b64b17c142390a36a4cb3bb7d3986b7350f49c0b535e595fc164eb80afb
Date: Tue, 01 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727765153
