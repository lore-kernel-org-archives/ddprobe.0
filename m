Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFDD492188
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789075834; cv=none; b=PI8MaUe4lhew0pQDU6aabN8WC1fTetmHhPaYD+21UegnCSKR3CvYaB0c/ibGtZV+1tX28bzFy7ssGtahQ8QA3OkVRKTHI9VTNVGN0yFq4hHA3u8r8WI+gNM6Drf2brj/EDRJWlZKE088n2X4gvckQWQPgfn2ls55TxrMT05l8y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789075834; c=relaxed/simple;
	bh=m9beOaPsnSReHFiWomlQ7K8y+chuP0WKNUeItb0ZctM=;
	h=To:Subject:From:Message-Id:Date; b=JnxbOFmBQXv3ihUbvy0BYrIndSJ9/kdFmXDv2RZtpVnhzkQI0JU0dbLLDVJrkH+v2EOeX9BKy1G8pmYFS0Jl/RXHhweonqq7qnmpWcEj7ccqbjuIMAQoAr945yX8Kh8pcA7Q9FWZVBMavwFCQsr1cjfhi7+5INpIgp/boy/6YS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hco438b9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hco438b9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67E1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789075833;
	bh=m9beOaPsnSReHFiWomlQ7K8y+chuP0WKNUeItb0ZctM=;
	h=To:Subject:From:Date:From;
	b=hco438b9h0fWx5xzx4D7sj2uaK8DZy+K78zkhZIxtIaRku6bc30bV1n/1UgLtxtht
	 vBojV/vG33hcm3/+35Timl0a0jtvbb/PgBYao9EklonLXAJzZEHUYe6k+fokgp6QLE
	 +EZf36l01OL71X//OdJIuHM48II81aZc6A4T9e0TNGFt1Fpg8uBnihSLvnpHp5FtRf
	 ojFXcS/il9GZ2bA9O/Zgo+/CzHzIzlyQPVAhBX64xjsNlQ0aeVwdGUcAkJ9Q0YnhRN
	 F70d1Yco9gV0l4PXK4yw5KKexyF7v/uxVMR8JXQeJEY0lmOzpMUJTje9soNrJ65dO3
	 TTaNPDDKY0PgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED5BC88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907583369.6977.5906263833203460545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e94d8361ee9b8ade8a7c14a79a9af75ba8cb9d595f55795268161dbc4e88ee0
Date: Thu, 10 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789075833
