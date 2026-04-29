Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1732E3A5E87
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777450054; cv=none; b=jShlpOdiPpYaaPKJRUvifXihXSTWMB3Auv3Sutd6wsb+0ACMn9PjeM5Mvucnd5zGa0h2ucr+buDzEoN4CCLDYctJcikRb67hXbVO+MmQp69SnzRbPwL4z4moYPIUE9UH83i459VpyDjUM6qNOTlQrqRA+DfBDcKShiAJN7nVVsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777450054; c=relaxed/simple;
	bh=8pxD/CwT5+Pcpslk+O3+FP/84IGfDN8iVVPNOEKu4As=;
	h=To:Subject:From:Message-Id:Date; b=TTv+P5/bl94u/go25Thrw8AAQAE0+FHeXjDhIxPrIq2ssNiCZ8bUkNx6PWM5lUVFsNqODxT5mdo0v6bH2Ui53BnftqQYyKCD3PEl1ZsDJHx79PhlCmlJr5zxrjyvgIOEE/kYY8FL5bpwVnhmVL6uDVxLHpb1lUVTMDJ1dsomWyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL0J6Vm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL0J6Vm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD820C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777450053;
	bh=8pxD/CwT5+Pcpslk+O3+FP/84IGfDN8iVVPNOEKu4As=;
	h=To:Subject:From:Date:From;
	b=XL0J6Vm8TSpmikTjqUng3O+PK1OVIOKXzS53ta6RtObaCqI/pLxWlvbFvvNX3yH93
	 G2dk4znJ9pqUURk3+el55S4NcgnVcY1gKJOZqIPjghj2ILzECtU3IKoz4tu7RYlgvf
	 W9m95GuvDevvsn91cLWrmGjTTbEAH0/uRrUvyO1+OWxZgiPiNZpRIXe5jvs01Ifjba
	 wygUvsgT50dWsepbUMr59JSWPKCThVB/i9ZtsIk85wuvC4aEN+kiaDX4hXhhkGmKVt
	 +THfg9WYTuMYmTWcGisfBjMpk0L/PZglOuxJrQZEbAQDldcqUUJHU8RjoDOuG0RsFf
	 Qjq4s4RQ6fd+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F2FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745005368.17013.4731291530500554462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed185cc2a7e7a9283410368a7c13ee46a834c550d7b9bec3d4ca2c2c15d54dba
Date: Wed, 29 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777450053
