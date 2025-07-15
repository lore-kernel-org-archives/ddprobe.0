Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BC08634C
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752577794; cv=none; b=fMJkOFEi64WjvDfZNxFPbLHi6/kfDuvd1W8IomHt/u1oQwUA37JPlaREv+RmyVvYeFATI3sibc+mU8y7w84QB4poRs9TSPgE6BRUbXkdRWXjeOAeumHOb5i4ZSirPnmZTNS1AzJr3etGWPzku4AxWbomejpod63Om0O/WU0a87E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752577794; c=relaxed/simple;
	bh=ryPFLrTqkqTo63F8DyUX2LL8nBUtam/WN9D2cPB9iJ8=;
	h=To:Subject:From:Message-Id:Date; b=u8CigYRut6mGuyPNJFbeWsUhDezQnYt/xdRl7OZnGOCxn0zMBwI8ILgql7ZCPYVJiquzO42kM9K11a25XDqXHMfIb+ppHizRID05sR4cBXEL4l6KQnBpKEKbwQOpkoh3OwddM2vITo4IIRwKzKYLwDbodNb0esYGKOqEup7OJqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm84wcju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm84wcju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D0C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752577793;
	bh=ryPFLrTqkqTo63F8DyUX2LL8nBUtam/WN9D2cPB9iJ8=;
	h=To:Subject:From:Date:From;
	b=Dm84wcjuceQjNjcAaNTn3m7TwJCocFe5K03ZsoZD3i2WMYKVhh+04CjH4sFgEzCIK
	 9PtvZESU29GnDIZULTNwWXvy0oSkR+TsGUDNlIac85ULONTMe9f1zZ3mpGw7AvZvt5
	 hqUOoH8QLQDzt1ttFQUf96cw/nF6k1erNcEYvjJPyge//OApK+VtQ82SJe1AV+XiKU
	 vqvhQAEAaQyFXHOFVBhriMTUhQczF1XtQ1fkBCPU5ZYAr7vWZGu3L8mu0EIgwcOvs3
	 RL3Iwb9Le/r1dl9IkQ14+da3vTaYXxF8Jy/PaXJ+VB50XgOR404xgxOQbJX1jPGCKW
	 VcQlrjXz3fWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4AAC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257779357.18456.5182597988031077331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02cad9e529138e590e3d51e55725186cf49b9790df5f782fef75e8074bf090e
Date: Tue, 15 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752577793
