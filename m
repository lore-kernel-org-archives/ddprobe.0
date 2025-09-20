Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0D338F80
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758347394; cv=none; b=sdrDIZ8ZCN3MspJL21CQWr6h9LL8feI/Vhbco6eHoymUdEnq5hxWLPub903hKx3ZucmKykZJji9odyo0QUQrggQjznSuY+RobO/pm//IqoezVPYSE9uRNm1mA5pWjj/6qUWqBHU6k0bHduoxpf2dBKOqtLOoFW3VjUjsfsRjsZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758347394; c=relaxed/simple;
	bh=viVl3DU6hLOZUUXs9S4HD8EPV4l0f3QF1At35vpGCPg=;
	h=To:Subject:From:Message-Id:Date; b=N4k8F3SI+QUWLGs1jfpTpdlWy7+50nQuQ+OwJHUhHhVrCBFTTuK6Na7mqoxNBBafSJxJXPERJgMp6J2KbZl9m+jxu1Ui+1h4Tol7LaB+VxCwPox8xlzQj3ZIVoBfpJJLjvmktwUyE39UpnG90yog16eoOszG7X2SrbVX6c1BL24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q22L7DvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q22L7DvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08CAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758347393;
	bh=viVl3DU6hLOZUUXs9S4HD8EPV4l0f3QF1At35vpGCPg=;
	h=To:Subject:From:Date:From;
	b=Q22L7DvLlRZcuNBeOZiQYLGQGBvA9jpUrDvI5QnDfHjj9Z+NtYmVFgJGtziJ/E2mM
	 CrtyW8yyFtetd6uSFnljfNsfixmVe0YI28uuCLPWRh5PEEcteXebfPuc/6UYoGe3IL
	 pVXB4UHQjfX4DCaz9Uw0WrM5Ca4lOJjzxONUW9pCufGv3UoRK2U21peZiPor/P2mSC
	 wZ4MGSDxKinJAcpfNRzMx2KGTMjntGDymx//m7+1Es68Ptc3uGUjqRc26VKl4UX7f9
	 qZI358BIPzldllPek/nsDGWJfFyoiaFUi6DZNyggDeDarPDS7SVacybPmVhD3YTTzl
	 m4queBsCEvZvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E636CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834739357.2513.17241660193998340254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea48272d456ccd7ce59cd7289b1a2d4679baead8397a7faeeeca9a0e27d63378
Date: Sat, 20 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758347393
