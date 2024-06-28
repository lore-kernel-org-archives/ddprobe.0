Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3D915572B
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719578663; cv=none; b=E67jpN4Y+w6Forke2FKPklsyO18Ggbg8EiB1X/LDiZxINpX0/Xua+WzE/6WyQ+8RNW8Ubrxu1zinycCx5hSetozrekb5vVAmp/6AiKYh4UX3l2/rPo0jfnPw8LaL1kTrYOhwS1tXnmNt5B9RHeL+Wb1A046f1YUEG/m3z472xfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719578663; c=relaxed/simple;
	bh=2UnBsESehZsOvW//hDjAzVswFFFPj/wd7LUIrPcEGcI=;
	h=To:Subject:From:Message-Id:Date; b=KizTmM8X4/U2omGmIgokJyyroI4ckbUGqpZKrv9kVakrEvPt0Fk1t+v25iV0uRUUH4YA6PjFnsfm0rUwGVbSlvkXdI0APC+0jeHO43K99c/POSdqkFRYU3jYR51rzHtBxg7EolwbE2TnOP84UVP68vdauaHMjEZ4RKmdCp604+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1CRSKI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1CRSKI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC56FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719578663;
	bh=2UnBsESehZsOvW//hDjAzVswFFFPj/wd7LUIrPcEGcI=;
	h=To:Subject:From:Date:From;
	b=R1CRSKI90vOpU1v+I3ptEwPaAZaCWe6KPZ9Sb/bMwoRgyLtkVoP/iHuPR0bkVHTp6
	 C1nHysq073u3P3f6MAoee2RvXLXWEGct6f7pLefypvWFKHgNHFZ3N8xvzph7OZlF0Y
	 vbwnTxnY/RQAjAN3TEL/8lYY+hv/68XZV2qccMg6+EZtm23q+dCVLZKXgj2frYkUjB
	 BAU95B7pmRyGS+3vW+m5BQ9sLrx4XsZB4RTvfESa+Hy3jAmxuKSVoXj8G34P+1GnJ/
	 W+VpglVbtMQMe/STNyQ10dasxjRysU8B3PMK4voZvEUhK4rfDMEMBtNrPQ9LkG3Po0
	 EoSzk+4a4OGsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D716BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957866285.23436.16403512901206447184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55165452c2b1cbc0328adc2b12dde97d521450d04a32b387b67b8e25cba7def7
Date: Fri, 28 Jun 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719578662
