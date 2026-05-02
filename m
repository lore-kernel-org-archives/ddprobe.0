Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC8724E4A1
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777734454; cv=none; b=QFU1mMppYev+3benBSCEBUkr48uOtwnfhBakuipZRL/PqjixecxV7vgOgK3FpSArUfwCUvmZyREHrgX2yiIwG5+BxKzU6hOyEWyCTBxjJI2w2KwUxPdzLkcaTBgaqlff4Z+7EI748s9tzIitvdldCAT7WrLPw3m5l8Q2V6FWxV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777734454; c=relaxed/simple;
	bh=3QBE3mZ8CBdy00+JQholwMNlcPAE2rgNJYEdmT1jLE4=;
	h=To:Subject:From:Message-Id:Date; b=mh8kWpkFDtHmYkdETLaQDfPxs9ZPq1DxSDAzYL48mYaxUihrtAsZWMJgnD2KJAGcPQLmQncrik7CIB5FLlTlYYwH62vRnIYybWAhquBVM/vcybYFeHRD775UZdAbvkBsQzCx0tKKfqbS7RgDyrtbFn21OV+7hnn+RGSB76YeuRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGdXLmCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGdXLmCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC22EC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777734453;
	bh=3QBE3mZ8CBdy00+JQholwMNlcPAE2rgNJYEdmT1jLE4=;
	h=To:Subject:From:Date:From;
	b=kGdXLmCZfApPy+K3NlyQuSLbh5UnWVeGyEbH9/6/DnnGeRpthuQYNwu1Qdy5DEj15
	 N6zZ7EVYbk275ad/2b81K7Biy6UTaLLao7MqbfXyOVK8FLO1Q8NT0tuNIjCLTxSM3E
	 LI6iZSI+1vVB6hMBZOmAHjtMA5hiNpWgk0hQnsYwKaJyBlbeBAuBWxX8rPSf79EcKL
	 BAk3TcRyx62xBXqQrPYe3qTPb540/Hg8nPKiEwViP48Py/l5cT0zGq6z+OYSa83fzf
	 MpQEwAlO5RE9L+apQVGkbJ1FQVgAxo8D/SxbkZyGPNCIn5Ai75XD3O57f3JbOFCQB8
	 d3s24DVmWV1bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1F2CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773445368.25095.11830420669869815676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38373a2a29c2dec962df0ab13522518d09ae34f02d5c8e74abb6942940ad3df
Date: Sat, 02 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777734453
