Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2804218FDBA
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732617354; cv=none; b=A0bT8dUOVJPTa7PDrEy/QkWcwSEh1sHRtUSR/mxzl9xIu6VMgbdSSjyhhDeWb9TI0ngBSw9whF4ZoSftAlQBU5tE94U28ZuEjW1/Hbq0KQqP/3W16SsQm+fCkQ4gn4w+IjuvM+bSiBHpN8u1JftpqCZBsg9s6MiemVxy7FEh5ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732617354; c=relaxed/simple;
	bh=VCfW/1g/YUusBW+7vKT7oUIyFMSbAVKRbc8XIiuCrow=;
	h=To:Subject:From:Message-Id:Date; b=M0CdzSRDw1j982DYCy3Y/Dhi9kLoHDs4Dsjr3cAdyrB+ZcyDBlOh6XiMWdVDAqKC5uhiO94P0goRgee4jlYZnkJWPslfc3UfHAB4R2vNRNiOe54bBri5iGiF/t05bZVk12qhzTBPF8Q8Q8KRHmh/rC6nXLD1RLFoAcdFhO9f5DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9ZbRMsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9ZbRMsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03EAC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732617353;
	bh=VCfW/1g/YUusBW+7vKT7oUIyFMSbAVKRbc8XIiuCrow=;
	h=To:Subject:From:Date:From;
	b=d9ZbRMsJPyOnFlqFIpHhYPRU+acqBK541zqLe2OSDLKrCBm59UgWCJJi6opggrZFu
	 0NqR+/XMA2dxd54Ye4nwE+RnZJHraRqOQls6d4W2DyPw7rp160n4+vFn0fhfI9sH8z
	 BHC8CrejCSBO3yYlLyIEfGC7DjR81dFwPMzO7glK5BIRzNQZ38irFMdhAuH1LI5nza
	 LaAJ4BOp8iY80UXDqI6tqOisD6v6R1+2lz8tLjXUN8uAOvY2Ys55CUIogd7ijtYyRs
	 TPyr59V8mf2oWvxp5rjQHp9TuTpPob8Kyi1mK2dcmGt0DD3J1CvUS1fOzo0Rd2Kx5e
	 RK5p76Tssh79w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D71D59D94
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261735359.18125.15622611216606761513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0340648d39f337a2aa7b211dffb42e359854aae98d7618371d6d45fcec06fdeb
Date: Tue, 26 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732617353
