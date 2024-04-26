Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2816F1170F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714158743; cv=none; b=KNzsrDQs/zaqqxqKsV0BK+/2x3eiJeicpeBVHlm9/yovjqRkAmhJVAg/EewF40wfEFkX1/LrKt/hmYBcHp9ESzyuV/+YYc5vmyzl2dk2iLIwLlTSHMp9zXxtkUStBwEwJpDjgnf57MkA8n5mwHIpi0gKAvEl2x3zo5N2iPr1onM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714158743; c=relaxed/simple;
	bh=0nOd+LDp4culA9/DlC315Wb61H7qKeekVtSCyG9jE94=;
	h=To:Subject:From:Message-Id:Date; b=LpuI3kUNlYO387/Vxcbvz2oSI8f1F9XVzppS3evy6lpAHONfDtzWi2+sw82x777jSPBYQSMPZFEAeZIAXcvKlDk2Njw0ZMdWoO7JVpqf/uxcDryiez2Fb5REYYaHieqSqofjd99fRAq9GA10bVK9PZ1PEg/vlKJeX1dFHoVcstY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ+Bxfjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ+Bxfjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F10C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714158742;
	bh=0nOd+LDp4culA9/DlC315Wb61H7qKeekVtSCyG9jE94=;
	h=To:Subject:From:Date:From;
	b=VJ+BxfjmUD/DfUa8xSEPEsljP96CY5mn7oHi4UCcLqAf73vWjD9Y3XygUbaJYK5lL
	 T0AWYpzK8cZJ+u03wsToJPr1hxZDnvwUTQKBlsLx2zNJSYDvRwVqvtJP2O/nE2UF2S
	 eX6I6/2MjQp3nxMY7iKdM8SVm44S1zDYAjPcgnU5QpMvXs/uxGK6UNSLvO5Nv20WkR
	 cXqgDeJFKJ/l0HmZXTIdBTDfZslnuJabhps/9YJL+1SOVCWlDbjvWbUEqhvhBVbS+Y
	 6IqVz/HkaWAUMTlEWxNdW5ndQj+2FJ33nSd4mKH8KSn9VshPZSXKenjiE27GzJOBAG
	 owm1yTUuu8ffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FECC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171415874279.3015.10457427437108381539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d579f8ffbee4f3d4eaf59bcd1c669a6be3d3a4eb6a4575e4ebc7e1eba98a630
Date: Fri, 26 Apr 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714158742
