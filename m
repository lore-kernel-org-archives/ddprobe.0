Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B246BA53
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732341954; cv=none; b=f96Y75qMpdhnIh5KBm8P6KgDu/Jq7L0OuZ/G1RC5PYuFfM3pSjc9CI2fEgpIKTraDNmjsuvkwlM733nQ1FQDqOvHZK4MzC5HsvsYKS6p+AdcuaBwHvZMqHsgCqlINqTK298jIn2sqbfNfPELbZHLvYCanRN4ve5xvbHpTsfUwyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732341954; c=relaxed/simple;
	bh=0qN521UsdYczJyYpz/uRCdWf+CYePUe/7oAFa8Pzb1o=;
	h=To:Subject:From:Message-Id:Date; b=Miu4y7phRQvyJiKpBr/bnVf2TD8dxI3W5tXMhVz40UabxBtGYc+atVtQBfAwNgQNSMnZnHaIaRDp0HSJJDYXbjGYfMeOwoggzDYxLAAGrLw8n/Ydgus/3whx4zfTECyxQIXjNbPLb+ORYUuxKS+TaehlslF2X9lmFHSKtFebEH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkE3ia8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkE3ia8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8971C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732341953;
	bh=0qN521UsdYczJyYpz/uRCdWf+CYePUe/7oAFa8Pzb1o=;
	h=To:Subject:From:Date:From;
	b=YkE3ia8dkgiOyqy8d8AcNdyJ945Md26mOFu+/cMJPSyxTFjxKyXjuhAQd4N9WZK/3
	 1ZADely+Gc56zJFI4zAeuOX0zptRI7mC+CnPKwwOwAfuxcq1E4qu21/f2oU9dvxWQt
	 VtGMPA3afeUqQAJX4uWgNe+focv++Y+SO7YXDicWQLM0ZjY+oiPG9UkE6ht+sqJYL4
	 tUgH+RlXqqHcZLCNCpepJ8oeqfvbwmnxitvg5h3GgM+KYATtm2PRRpac9HkfOpBZHQ
	 SIFAr8RsmBVRSh6/0J9hlr88xVQju5YseHb/13kQcjqpgn4KwC3wdxIm+P6wvJGl6y
	 uheEMTAHBTaNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FABFE6ADE2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234195362.3692.15040844979694762690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248e7378d294b5ad3cbf2952243ee7047d3a8d43ec23f1a7ed93c34964262530
Date: Sat, 23 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732341953
