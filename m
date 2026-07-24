Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4650936923F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784925634; cv=none; b=B5lz0j6tK1HqdRuB6OtTGzV+CBf/vIMCdz1tY8z20RwR1uOlBnsJ7TOIRcs0HTjUo1MtyGmkHV+GM0/yXhzss0fgqjQJiKhMJPVYowiR7Jj8qhPVMsUwiz9ohipKZg9R1jj9dJP9qhkgNpVCm2flRBqNmz9CV1EMpcmdHH+bb3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784925634; c=relaxed/simple;
	bh=pFj3/8MynZhSfE36EBzpuRtVVNC5eCaomtokQfd6x3E=;
	h=To:Subject:From:Message-Id:Date; b=f769v8OxzmgbXDokqsFimuNKLjkRL93NDqRur4u+kKvE8DRLQbIAJImcJ7Zn9nQxFwMafdPZKh6H1682HA5cO7Qzo6TL6/owIn+icwezTOk+t6SWXgJsfDbOfOEsu4G5S3l01fBNZe9FJ9iJE6CSshZASeum7VV2SIa2uQZYECg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1fpaZ2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1fpaZ2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3711C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784925633;
	bh=pFj3/8MynZhSfE36EBzpuRtVVNC5eCaomtokQfd6x3E=;
	h=To:Subject:From:Date:From;
	b=B1fpaZ2xA+/LeA3seOMFEzAWhoxO4ED3lEXGcWMAKUWwxBapLW1D0xa3Afb0wMOm+
	 Ttk2OVHpPGM6jo2x0rfKHbQ67tm71iN2sHsWr7ddCokFvoiY7JqaDp3cuKdgRPU/TO
	 1IdoPktt4YQUOp0iA8OYcWe1E05Z4T21GLfaEN0fxugjb71Kcktm7A8xrNQA9e0EKq
	 TE4Gcs0UzdXk3S9K8OPt5bgwEHrg+j9WpcYotkeb8ZvGBxVSKNOf/lmGwx7I3uT+Ki
	 25UVIcFevCCljsvL2UlglsepT+Zlyws873Fp27V1Dqqc4ljblDYAHL4FbIF5f+pTT5
	 pfUOxTcaEE/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6E7C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492563368.3579.17453860630591498218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f72a60b3adc6c9d8c4eb6add7c980fb07abf61f22bcadf16bd188a8ec498985
Date: Fri, 24 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784925633
