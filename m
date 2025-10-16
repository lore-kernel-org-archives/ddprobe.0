Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227024C9D
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760582994; cv=none; b=mnkvw3vH5hObktUQQsv4xHAlxv/DKeV/tMXjFjPNJvYhhb4SZ05EuLUVgk7nYyTsfLbSl747x0a5dk8o1Z3yhfPAyG+e9NnsZXXhT3TRiOPZeGSMvPZ8hi0rYbwfHG/wOsvnJIpsfRIklFsA3fpU+luw/GHHqTjymBPWm9Xl+Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760582994; c=relaxed/simple;
	bh=Jk0XQNdwwM3zuMGqiTvy52uYxcLyIJNwldGvtH5GM04=;
	h=To:Subject:From:Message-Id:Date; b=gzUGebdtnm9VWpsddDCM6ZFCYOK4owuX4q+cAC37+aBpmrZuE4slFdI038Q+QixORlKtH4YAIRek13Djh7ZIDjnu7t7DSvWzIbtOVfzeegMFtFkVHASJZN08yirHQPjs6G98taeEJkTfOlBa4yPpRtUD0qLHZtCiQVCKB4g8NFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmT13s1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmT13s1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2119C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760582993;
	bh=Jk0XQNdwwM3zuMGqiTvy52uYxcLyIJNwldGvtH5GM04=;
	h=To:Subject:From:Date:From;
	b=pmT13s1EJtvrEBoySqx51Pwb1BFJeya2r8sRuQuvbCfWq0ktSzp/ROfZoarX4Bzwd
	 iPF1B29ZyuEuT3wTbhtE6N9kUyit9Dh1TZ9Noe7m5h2j4vgbHtwFhm+Hy/coXW7555
	 cGkrR5J0bw/VIgefKe1rqMS/Yu84XGXuDHXj3yGHPasmbRZ/YBtH+Af+j9B40+Lngt
	 l4Hcv50VPQw7gncyLipVey2JMFmytWE67X576jl7j3C+80PzXOEtoatLVJ2qfz2v7V
	 gOElEqrBMYCcMiM/zh737mWrN+jJdA+KHSax7KajveUhbF1o3opl8xRJ/rU/OrLzFB
	 ixuT+FJHd+MHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90490CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058299358.29737.9859763993434778580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376b7523204c08c3c21efe579fd160beb5f3a5642d591595d27230e6136e1a79
Date: Thu, 16 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760582993
