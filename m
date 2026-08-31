Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711CE3D88EC
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788166834; cv=none; b=cDeIqb+JkQJDV/RPM4zIMlhBGryO1e+POm8QXT97RH+EWjl3JhNgvDljsvKn6ElLBmaMloU1Kzcf1ghPNL4gzdr7MxzRQRSk8d4+5JcirQRWfbm7T9DDdJUygjtACYoZkY5ubEINJLriL8Yp90fLPgEfIMOZ91QZDERpgtUuDHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788166834; c=relaxed/simple;
	bh=XiIUz2zTKnRDOp28qdb8S0sbXT83ftRYWKnnzyYxgnw=;
	h=To:Subject:From:Message-Id:Date; b=YTr1EqEllbYeR+fKBEFJ1PwjhPPMnlkpMXzgZOcOHch3sZyCLgwdN55dKq9RmBkVO+sCp9pICc/xEqnrVxv7/YULwBfJKrajKfrmcXWt4sINy1CebcCjNuJ2IlbPYY9gyh84Fo6jvh5WC2KiCML/6mkYODQqHKKxz0MYsXGThTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Je1Uvv8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Je1Uvv8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0965C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788166833;
	bh=XiIUz2zTKnRDOp28qdb8S0sbXT83ftRYWKnnzyYxgnw=;
	h=To:Subject:From:Date:From;
	b=Je1Uvv8UrdnflhzfQFnP5V6RjVFaQ8eoyJbFVKBPcVrE6cNnx/Gw6IMWGekmfC618
	 Rbm6CaO1pYw+vQuttbQ5BjcetrHQ4U2O/EYmjbXcVebW6HV4+VCIxN5/dTlmBJXoGi
	 Un6riu3rBlO/Ry/7cMIyg9GPKZ+pyu+qVg9SWy5dUkW88Y3BrfLilEMIQ2bE7ql0Ro
	 QCeeLE1onbsVIaEZHZzwmlIZE6ZmG0TbZv91T20E8eA6Ig4oKoiZuu0T27EjNowQps
	 Je5GZTJLKkbmCvdL9q1kX/UWFwJgT1oDPUD/rJsltVd6Q+mQwwNuwMSafBvnl5fgR6
	 Nwqj7zOXB+QBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8185C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816683374.3397.4764717871901365956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b8f28c22f715a8c2c0e0cade04d64e4880135a9d15cfcfdb98e2fdfc7adfbe
Date: Mon, 31 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788166833
