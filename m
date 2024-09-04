Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C0B14D2A7
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725492954; cv=none; b=HhwO23SRuJvyQXwCVmVcCR6nyPDFQKhF+UXkGRzLnq0heHvB25VtVSWQg8aCLK7EFfvQJ7F2ca7NWN3kW+7AHthPvaSH42kAUuOKGy6vn4PVHR1kmSbZZqJUNenzSSghNa97sQ3fp5GqP1bAlViNg7RwDBQKZybPwd63RWDEyZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725492954; c=relaxed/simple;
	bh=vZfZBu7c1Hl9WHgH5Ilfa7R2owRJPiW93uOFpChFRNg=;
	h=To:Subject:From:Message-Id:Date; b=NR79beT7T4SkgcYt3h6XAhEjCxI+Qj9Rcez31/2crFHeqsJroTrS4UjH24/QIot5AAWyVDRrJNEdImbKEBMpj63fiCv7M/nHERTmuPc4doCNFX3UxB2R4M5+yH9Q67TgGJYLRhBaXaXuiJnOzrHTfEDOdHoAD/KD9gNw5/y8Uao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+KTuXYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+KTuXYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A914BC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725492953;
	bh=vZfZBu7c1Hl9WHgH5Ilfa7R2owRJPiW93uOFpChFRNg=;
	h=To:Subject:From:Date:From;
	b=l+KTuXYObAHKkDg6VBfsCvczH8LLsdrgDghJ7KSFZYkBPFEOWHpuFu+UWCLF71fVN
	 9/nC0oQrrGEhz+iFASLCzi1Qal23jsPlZp8EVqxXjscxbQk7q6SWksuk6koRXbN5Fp
	 P0OeROepZZSogoKH42KPzT85GzgbGf/dcQly/ftTr4srxtxYo4sEIw0Z3quWdQOaM+
	 fP1TUF9Xw1EuQ5qeRl6l3ubP+hHz1sNfk4HdHFNATnMPUoXK83EaowKn6e/wwLie+m
	 tSOqldgiqWi9eDVcj4+onhVSjNiU3Bt6DFc8zOS32DriF1Agb2KERZZtEQ8gM9SDCo
	 enKntBc7c0YkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94498CD4F4C
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172549295359.14423.17040198674595308241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2954f693ed1b7abe6e75758c408de4daf970c40602c101f742c3f1b5e3ee648b
Date: Wed, 04 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725492953
