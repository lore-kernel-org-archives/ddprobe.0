Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A811232441
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736909754; cv=none; b=GPQL0FR01sXHP0sYTzrDbCBUaxSn4HbSqGHZsw6nCxujYU7GCllSJZetGQSuNfV8kq5EyquwZy3HdDnYcMgHXvZlQeTvbk7z0FxQuhNCHefvp2VLj1rSgS3BY/Abu38cAERN5xHnqYKYvN1Cr8SZSFWUyYM5N4wWzgfC331Otok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736909754; c=relaxed/simple;
	bh=8IyytyKP6ZGODUJnEb6jlQVySKWnb+0ItiRC91B+uVI=;
	h=To:Subject:From:Message-Id:Date; b=HYoeglD5+2dEkYzbzwrjrgL6bpuDl3p5ORj5wzOVp6f51IwLKKyUNa/aKkCPFHa2GGtYkm6gJx71NryOpKS8vo7XPKMH2ocNYctTCV0qQp0gY0HaQJuSP4G2sTpP2l8QpOdCokqJWvCIW6/PcM+eUgRHRR6Luj2cjG8TSEhMia4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcIseYxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcIseYxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF408C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736909753;
	bh=8IyytyKP6ZGODUJnEb6jlQVySKWnb+0ItiRC91B+uVI=;
	h=To:Subject:From:Date:From;
	b=EcIseYxeFxdQ4tR2gCEGT8fsNNnelRalfFzvGkiXpdDMj9Xiv6G7QGdFb9IcqYK/5
	 fliyuWJTJJlcWbbxUeqtwz6ApqG0pCoZ53sdpRq4CiJTd+NbJjYkDr3KqVmHe0zsjf
	 t2ScMg1ZFgyECKfJ6LD/fR3uP+eV+muYYytrlMVwmXocsE2SdYxymunEFS2HI6Hous
	 EKi265lJaHoH+eBHY5c07c1ptAuq7rdKzdDrijK1OjosRAm3O5j2Bd70giuT0fWZwx
	 8wpD+90ak8CxC3knSV4kEOoQvkiXahRwERxyhiihPYQgvD1tOZifO8DJtRs1zsLPhx
	 sCWtw/vl3FJUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E8E77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690975360.5342.14191160419954258509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092e2c31980386f086f62cff9ef309e98ab02f20a65fb64043a3ac3fb5f36249
Date: Wed, 15 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736909753
