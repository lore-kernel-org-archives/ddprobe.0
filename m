Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1911B346FB3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768061634; cv=none; b=YYn7Bb/5u55Zyye0qbQjt7KpbuQKKOMjtJyT/80186f44E7xEZRzgYjYz+lWW5bhJ6X8roPp6ogvTK0f7+QH4VYBmW8kFZhdLi+ba/E8l5FzUHO0tLWBewd+0WNYk6aQa2T3O0z5yT1H81hXbo9WOQMlrsOGTZybof81yKgaRFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768061634; c=relaxed/simple;
	bh=hDCv5fwiBMHCzel64QuIzO6+gtG9nbdh6s+pb2yaph8=;
	h=To:Subject:From:Message-Id:Date; b=JZ+CUrAFttWFFBMNC7YDoBFDLqShdVhxc/C+nHqL9N6j3N91pnrTwVzV9/Xs6KsmTzfN38DKhKNInyEoY/SRXyZ+Rg9wwWwiGxjscy9HPENFqQmh0mc8FPW3MMAuaBY02QVP+dYcX3y/DrOuk4nSKa3Z1EUq75bVKoQQNneEneU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpMBi/C2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpMBi/C2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2203C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768061633;
	bh=hDCv5fwiBMHCzel64QuIzO6+gtG9nbdh6s+pb2yaph8=;
	h=To:Subject:From:Date:From;
	b=PpMBi/C2epRiTazzNsn3VD9dfCKVnNtRfusKCJkC9hWbokrx0IdVaS+VhEpo9J1ZF
	 oYcSabq2Dv6Rc+h0HXIghhcFLotn6q2xp0RqDAOpBEq7dZ7spm3O8sHPgqJHdHdMi+
	 Bcaze14ah2UB1YRSp35/nYXH9/97SH+Q8If1mywSJR15Q3mIc5T07ylWtlvjB7D5i0
	 Lqy5KEdc7JS5ieYcW4L1u+UM3Al3ceIi/Qn03pguxlYaBZDdE5sNACDrd8w8uVNF/h
	 FtriCC3kp5jx77ZSmgi3vJy1QOEMmnNIPPGvxeu37Ydi0uZjlJSeQFvqcnaH62vtz/
	 LDhc3Ybd/qYPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F78D277EE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806163358.30816.17416642228978716760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b759a9c0bf663795368336f58b37de18f77854d9160e3725dbf36848081ded0
Date: Sat, 10 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768061633
