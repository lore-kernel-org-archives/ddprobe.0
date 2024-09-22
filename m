Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E2F632
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727018754; cv=none; b=bRIFwHJYV8YRStN3qTGjoKk6nNpBZTBMPMe6au1e8YLzxEJ8x26SQPkRFr39cdZtsYLwkGMNXwl/UJG7m6JqcCgtdBA6WwcKmHgAsGGGwT7YRMTL5HDIoeQdWuzxHItUCNMbHM00gBt1GaYXvKhc/Jo7JdrPgrfRRQDpBaE38WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727018754; c=relaxed/simple;
	bh=qsULaZSh4dSYpIGUlWkVErxmftuShcZ1EtWNX+GJFDw=;
	h=To:Subject:From:Message-Id:Date; b=VqKAeQGX4KwbU78BtyFkkQTdlg7KcJzMDgrmBTHnm4tii9YSdSIPDX+u2qj/qVrszNxAmNj/Gi3eyylALpuXB/TOHWttU6eE06P7xlHbjrKhW8f0q7SBbsT6chPEQv5P4j8zjjW+uuoBpYfpnFYtcYPRh7Y7sluB/iUX+LkSLOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6sGv/3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6sGv/3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6A4C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727018753;
	bh=qsULaZSh4dSYpIGUlWkVErxmftuShcZ1EtWNX+GJFDw=;
	h=To:Subject:From:Date:From;
	b=f6sGv/3GcYOn/a3miV0gEfDJfgrUjSoQfgvCia1kqybmZe/DeWDAj78riNQbjVAG2
	 lQYtKlbjinc8yre+8a/RZJ58CQ9Q9UfOUp3Ot6aNKFXfutsvuoO+7lA8+BjN+zf/+s
	 tOCIYR+v7lGYXu8XKOR4oGIcpWOVfZJ9+B9sNPoucPnAZ+BjWbyDmwM0GHJclcjc64
	 SIMbhbuoqTw/fMrsJ2drZy694YgDOTomqID93AIiyORDFGk57/ulqUNqXXy2WfvKPS
	 jw6HW202y1w0/pg3/CiTXCvNbSgs6EcaINoYKoSJtFN5YftIF84ToV4ENrTkxZUYDk
	 +FjPtBKkN/B1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943A6CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701875358.25556.7641918204083196663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910f2a055b782913a1d044f4a4df48a46a616401ddc94d426496dae347ef9ec2
Date: Sun, 22 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727018753
