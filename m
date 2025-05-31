Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4896C19C569
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748723394; cv=none; b=jli1vSZj2FB8SOmb4xKqfEMuLSfEIMVQwmr/WU+eL6q2JFCTFpRmrgA4RVZOLdhdh2eE4rAh0asENZwRpguqh31Xwxkcwa53rH+3njJ+Il5dv+K7Sw6h13anc4khuAlzwinG/tkweVEOmCUkhx0cN6aRQDg2hUYY4nmsHDcNL98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748723394; c=relaxed/simple;
	bh=MSkWbvEHhH3IZ0wkp5XaJpBjLrTVHf7xODgnIZh22Is=;
	h=To:Subject:From:Message-Id:Date; b=IuH+hOz47pb8+OLJiuFDiZzG1SPKruMoHq0SD00x7fzX2xEbNT4G7WqGPS8/9sRXg4+DUlKaVFs8x0kFEG0aEgsIuv7KQLJsPlM3B+YYR5qM47TAZc/f1gI2ziBxv0Nt4LGlhIIsh6chMYvSasw8IaVy6bya6jnSld0TKk4vM4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc3d0S1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc3d0S1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A720CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748723393;
	bh=MSkWbvEHhH3IZ0wkp5XaJpBjLrTVHf7xODgnIZh22Is=;
	h=To:Subject:From:Date:From;
	b=Lc3d0S1kgpY4CC8USWWHi9n0UgdYKv6MHdnqF2FtjF4X6KHvtA3dFI1SXMIbeHn50
	 ZYuF4++uIYbHKMI01t8KY1KK+N1zAirBn1+ydjC07ulCrwKLu+oyVqlT0VtaaeuEUe
	 BTjapSQfQcKgsnIF0MoNKLl42n1pM4zsX6ktm6uwBnfEkZP97XLFt9k2a/KvhIpkg0
	 hBrx3B/zakfq3DlZRI8VCVo0whvHqcIjMVgeAi9I4z7H4WZYtL51ayU5JwGcQVZv3j
	 PoKbKl+UzbMMZc+fcD8djf2rJ5EBaQ0sp3sMEwV7CMkhr4NCpcrw0FNWiMBuFi0J2m
	 wqu95t0jKFjfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9516DC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872339357.1626.4072671507194849703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf9ed14420faf2811cc5a585e15ee601aed765aa7769cca02e5435e1a94d4e3
Date: Sat, 31 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748723393
