Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B463FC2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732940754; cv=none; b=TthIVIFsNVBa5KXhSk3ZNrGmCMa5KTvLKNukh9kpYSasF+Ljpln1vxkM97cyawVN2ldNXCcFpwHdBIz5ZOzSxGSzJ/KdwYfYOotKFPo4tJ1FXZ1ulyVwH+sed6Bu8Ci4xm+kS8F2rEuSF4K5znUsR4HrnZXUpE+PGJQnMmS2fnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732940754; c=relaxed/simple;
	bh=n2/O85po1SGEvyC50mXPxYIpiLYRcDkVVLOAeuL9Owc=;
	h=To:Subject:From:Message-Id:Date; b=sGvLSMLWHsrUqy4NB+mfgeepRR6NPh0+Ewis47TPAHJd5WvPTmsO8Z3uwYX/WttkwwOic9lBx9eylZ7OAosmjf79is8OUEy9q3eySpjF2+edeQmzw9Z92jzoSXQ5ebk/VAE+0tdYr7YBTQ91JOgo3bRexuKP1vEA5wYJCB8R9TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+EMi0oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+EMi0oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8CFC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732940753;
	bh=n2/O85po1SGEvyC50mXPxYIpiLYRcDkVVLOAeuL9Owc=;
	h=To:Subject:From:Date:From;
	b=g+EMi0ocJFBLGkasLnOluIrc8KBrp5kEmqw9TClb3jn8sb14VsF1H4urlawkkCGGy
	 xYhazD6c4BQaajTZxOHxIEepu0HcMGCEUqq5pgiEDiQ/BUkzIaotew/8H7+jWnIong
	 862l6cXNZgHeEi99lhp1lBIb6SLCx1KaDHVj7li2zwZ61/P4V3ASG/EaF8hP3ZZ/ml
	 rtCe4v+DQ9/76L8mQz44L7yvQlnQibx+suhgn7sYSERk4kbMmTOvIIl/wifOEzwcLq
	 cizp7sMfsSqCc1pQ19HK964Pt1nmg6a9QO3TTJlVwNita4ldKXzZMuz/Zdd6YRyvpV
	 dne3wcw2G8O4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575CD735F6
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294075360.16669.5835679948392305894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe87047ac4d971365f901145892d88b5cccfae7459e95decd8322a894c05b300
Date: Sat, 30 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732940753
