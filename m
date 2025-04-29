Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C8E2BEC5D
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745926194; cv=none; b=B9vj4cwjkRfHuAi7hcpiWTEz+ROviLUcifw0J+TNgn3Toc6KF2UrGQnWtqlvmqnvmsmjhZNxhGbH4vFsKbgF2tQdiFnEaZMHCwhsOTPrvwMUCe31EthiBszrhVj5BB22MPPqHaAwd2mGQ3PRCe/oEdBl3ingZ7eutQjVaAJmEms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745926194; c=relaxed/simple;
	bh=Za46iu9YgLlHeFEyXTZzW8nanfshCOYZprjagRc/UFE=;
	h=To:Subject:From:Message-Id:Date; b=S1PDVamxYPYByVfEcUNvING47s9fFfDdim57RI/R26lIa7z7cfYaaDLZaeqXws5VNzGwROhdVBhH9Oo14O2hDbMOdjkC/HlfXylmUOsEXD2Uwhr2ljuYGaGLVoIBp9FVnB3pRbXXcSiewEMuFyuo8uPnu/tTbirZydUAqQplRVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3RxoTpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3RxoTpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFE9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745926193;
	bh=Za46iu9YgLlHeFEyXTZzW8nanfshCOYZprjagRc/UFE=;
	h=To:Subject:From:Date:From;
	b=n3RxoTpDe9HpcaVo9TQgJDtrmcd7R10qsoQyuUCbaToiUwVQoR72hn9uVW/vtkx4n
	 49xjlc4NT62mmvfWDbFJqz4Kg6LjfnzczGqZaWzvXr4A2Bd3+KvpBxpKfCCCcYEP8D
	 tVYm9X8lJneVx3gQtzrfijhjLtC9dP8EMd8w+91HP0tS9CgqG2qf1b3dGRFVYZVek3
	 eOhZs8f5TII+9zBRBg3k0ph4ILU6DXFLYW14uHVvXdWyGD3tBZW5RN/kkhF74a8wKB
	 xj/EzY1opCkPbbgDptF9+vCxtvLNr/6uaYDfdfdF8IrDCpO84vU4ztLDHGI9ydPRLT
	 ztPb1MpPlQdZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91684C3ABA9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592619358.21627.3548775516153672779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644110e8019f311202101d76df63a958ee47443e44d3832a5fb7737cc12e51eb
Date: Tue, 29 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745926193
