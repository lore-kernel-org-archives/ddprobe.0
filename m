Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D7745003
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725351954; cv=none; b=SvWNYd1YzO34PIRicQb9Gzs4yqcw7H2yWz0IKh7PNhHsldX8hZha47CBivcd8eLzTu6dZ/YRUSVN8754A6rKuWLAXnBu8YHE6foxMae9hTaC+n7Bam0Nslma/Wjr/m25F5DLTvrWpILVWyxqWo7TTUuqmJIytYZxiG/7VkXxCNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725351954; c=relaxed/simple;
	bh=CMnAPlU9hVEnOh5nZeBAx5/FY7EpMdd53+3+pcb01eQ=;
	h=To:Subject:From:Message-Id:Date; b=oIHJ3yhHI4eqTzeX66aUSZd3O0N1Sc/7KtzhM79+NaQBC/ewWXizPDtUOrYyXX5yEokrYtRNngAp94k365dFc7PDJhn+6srf2KRoYIw77ywGhm3Tltxc7EfoFDzvprUsH+t6ufyqb7u2M0VRNRp2aAPhZNTJSBsvXihwid1A79w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgNaFoyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgNaFoyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B90C4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725351953;
	bh=CMnAPlU9hVEnOh5nZeBAx5/FY7EpMdd53+3+pcb01eQ=;
	h=To:Subject:From:Date:From;
	b=JgNaFoynlFxyMUOnZcEhvbnk1njywalfKwXlmkNQcOCsepeiBMcFzdYMxqBlzvJMp
	 MZvvmAbUya7WxFbXdE2/JEt1/8PgFLyJRGDPqSVWZMCI0Wg3vOCaxR17p/PYAa8Uu4
	 gQ4ZUXKRbZt7qFMqjVq6fvOrMTAu/KXC1cTnxPOGzMAUggT6hyJGa5/au3ydEnN+Ze
	 tXvgo1/lfBLEnPtifipIRHctzzyAzCJZPxuvk8mxMjAOZrT6xceWWwwqpiu+W4gCFC
	 Dy6uqj4SAC0+hDWiyO/wqoJA3eVB0ypWYu4pnvZYE3TiyqJlIHYRqnISC05c17NsIL
	 F4ggfLCAqg7tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3ECCD13CF
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172535195361.16874.6213450448093627058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6caf910e01afa8facd0a03212b7e0648dade48b5c6b6aaa668400de8afb6d38b
Date: Tue, 03 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725351953
