Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDC2325486
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773125694; cv=none; b=op7Cs8G0p0avYinQBpC4ZyJYwmX8zpqa/nElfWq1PW7e0AKvgMPmDQ+Iuj/cqO26AX41ZerYWqOR1rHZHMfIBfnskITjdCQ1SWeMEzFSn6nHXlShMdzWjZMDQIYnktHnRi3u0x3EcgTlY3d0NjxexsDIoGzEWb5+uxyUoDKv+iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773125694; c=relaxed/simple;
	bh=4HhUQ8lmsi+MyhD5K5sUi6sqxxIv7Eui7GkVVJOg0E4=;
	h=To:Subject:From:Message-Id:Date; b=SQ99qyjrRKWnhtP/5VG/Qrp/FMXj01pVbrXHUptWVu2wOgAGm70VYmp9PsN/QISqYhg2FixncIMZh6/jcULj5q1uMsqMS/MJmayO0mR0hfv8S6Yjt1TkR3vwglBdMLPY8VXgNDgrIw1zfVqI7hrO+NdGK55XQQei03Klm4ks0p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7iG4z3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7iG4z3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1104C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773125693;
	bh=4HhUQ8lmsi+MyhD5K5sUi6sqxxIv7Eui7GkVVJOg0E4=;
	h=To:Subject:From:Date:From;
	b=p7iG4z3DClEXO1jOzruW6SlmhU9Nv9Rq8/Sq1VCzWIAlL28yiT/PVLhpSQdb4Q3Fp
	 fK7O1X1Cv1pG91oIrxADrTFiUPPZ7yyWkspEg+Fft0a/FHVHkJLzINi6hQR6fGvpJc
	 Gqr5EgspI8hbwNESQfJtBSbiJQ/3xHAK0vaPtmHwcTHk+Qk51IvHDMeQBut9XSt0TH
	 L+7P13CawCxfuMWf9X6ErsUFqWP6OwfjOXFVrj2JCjMTUJGzKDRKqB5ytwiMjEgy2J
	 0Ly6aGCOxZELlpOdmrJQ9qH488wVWmSBPK1z4bqwXaeWxqrlLx6EVWk9kCp05SyOIE
	 LPi7HfI5Z9YUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C9FCC9D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312569358.13344.9337887071511328487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f48fb0b95ba3f3495cad7d17e30cf4e1abd12e2d76f82a9985cdddd1e901a68
Date: Tue, 10 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773125693
