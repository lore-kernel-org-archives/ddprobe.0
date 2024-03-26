Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0953E1772F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711497497; cv=none; b=CPtVliCxnizNaCDvHOHztBrP6238ALfzKiJ1l2VpR47ohvaYvE3xcz37/7S89GrQMtNARcLxtZrnZQyNTIVRNrIbB0oG1Adua7LfQ3m9YRCzBNPmeYirPofDs70ZSQOf6Usp2IHtzuc+YgUedlnUUv7AKhYh2MIKdS6wnrtS5e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711497497; c=relaxed/simple;
	bh=/99MpRvgaZF1TncBt8OuDtGeHj6kYx9Xyhke9xLMtDM=;
	h=To:Subject:From:Message-Id:Date; b=WJzsixJ4uoAIZ7piL7yU1pR5wJgbJfuX4abzMGkHDLkSqSOGhZII2Zd6zEI8y19PG7bgOD1mtYcRtlDUZDLGzqtBXeT9JG0zVBQqK7/T+Kuwv5QRH+Y7bw0+AuNLbz0XsQnmS/iYom8M8wZ/M7AuF9Q/w0D3BXLVgeonjwUDDXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKwcj/uC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKwcj/uC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F8B9C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711497496;
	bh=/99MpRvgaZF1TncBt8OuDtGeHj6kYx9Xyhke9xLMtDM=;
	h=To:Subject:From:Date:From;
	b=uKwcj/uCD6B4kp+OKJZ5oiN8E8+yQ3BQtbj7/a8Kfk/YIy/gyEj8Loa119FfLeQKx
	 6RQzIs17cwUuJBjrSp/R7zI2Lc8dbBGYSSd4R+/PeHqQeyXlvH3czMrHQnWQ/E3UgX
	 0QLX2Ex6AOZya7c2qI2bFI+Nd7ZkUdkcT7DI+psYByii2rjNRQXJnuJ0yoOaVftP39
	 i1zYB2f4YmVaeXgU5yHVf7Kh4aRR5Z/AxhFJTVeJbGerEEvkH40HzXaCQDMjTQ8Rvb
	 JaO63M8e327zARfeqM31jPYqs5a94PNM6U0LSYDx/XXVX45/Em8lRgPniK0UgtdTOr
	 dVrXo9sRRHZmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED9DCD11DD
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171149749636.11049.10065030041569964978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918923e778c26e0dbee19b7415982cf8720301a569e4571ff5425d5347109a52
Date: Tue, 26 Mar 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711497496
