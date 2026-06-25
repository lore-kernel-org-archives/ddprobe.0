Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1CB3AF65C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782385654; cv=none; b=LADqeRzE/RnWCF6CdTGK9xs8msqbinhd60+haK5hXxmLqz1WQUEpqNOiAovgE9CJJ/jvWZgf+sVSpvgAnklmB9NuCk7p94A6Qw0be6ktsO4cem1Alu+irbz4S3lgg4mjOlNcaRoyCDWrVIQnctuYGm4y7ixrYqGOCiRJ9ZvE4fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782385654; c=relaxed/simple;
	bh=Tib7+DK3Ya1I8DS8BgAczplhPgfvCl1kOyG7e70Sl1Q=;
	h=To:Subject:From:Message-Id:Date; b=NMjW14/85vyBL4ldv1/dRpe3agRMK8VcuBj4is9pa87FhLj60lK+4ei/cWcbk/HOvwZtNSU6u6BWHYQiTh+Gp8dzGerLgNv2CBQoiuVObmFDlnhAmwbwxXU7gLmBF4TszySlOfvZdYtotgl1TnW0XEeB2KaKvQil0nuX0ttS2iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gC8E9ER2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gC8E9ER2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC14C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782385653;
	bh=Tib7+DK3Ya1I8DS8BgAczplhPgfvCl1kOyG7e70Sl1Q=;
	h=To:Subject:From:Date:From;
	b=gC8E9ER2GQzD5QH7YNCQuP3Nz/FLN2P6/wV8rmodm+JEDd+ht8WM15yLpMNJtVG4U
	 OQ0wY5Mehp++6ajYC5NuVbwbzy7QLqkw5rJeSZMN7LxpwMmb731sAq1DNbxBiuO+z3
	 BKI6GvWJbb/g39p1i6i2t9b2v/c9nI4nvNIaDkIPI97A1rpmQ8tzGdPvh4UVdwsXqj
	 DIFnSxtSVpJHOZTdaXuUMFTR3FhO3JCjOJOLjeffCmbcy2HirR4ZdVKR2DuPVKmfFO
	 rUIvGWHAvo0qN3oaSr+BeHdMn201mcZVSlas2xuK4syx1/B4eKW8+fCX5p5NZWwqu3
	 a4iaTl5y3lxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0429CDE008
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238565371.5688.16964885903250224795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7d52f55ee1d8d3d858045702d72136df2169a9fb2d582d6e9543d2c22a29a0
Date: Thu, 25 Jun 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782385653
