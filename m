Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDE44C81
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760169594; cv=none; b=SUMSou7+dUNV2BED+VRzSmH6D/sF4n0rTmo0AkIt/Y4ZTXel5+z2O07ivyhK6Rk3F9AQh6PIUFU1JdBjBW8kj19Jx3sodq1jHEQ80SOd7HG/AR4nxKRHE6Isltbl7j/oLklKxAZKogOASlqk4xOHHZ/7FszcJzGMKZcAVU6A3Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760169594; c=relaxed/simple;
	bh=qlTZFtIG+Z+DI+s51t46/A+oXxsEfW0nHrM3FRH0kQU=;
	h=To:Subject:From:Message-Id:Date; b=DpHjHzCbiLd6qNq6BOAcfTEQlUsh7wVen/okaFYigh9eFpocqymjaZT0RQjxzUA2XXjdL+zW3OygGeoIhdl2rV+rKPVsQwO0izTtDzoYVSQ5j823SzzWKbBvZXHSELRjMR7NS1fw7XySGybczUhbil4N7v6eAzJSPJdDiyLEBbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uh440DkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uh440DkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9963C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760169593;
	bh=qlTZFtIG+Z+DI+s51t46/A+oXxsEfW0nHrM3FRH0kQU=;
	h=To:Subject:From:Date:From;
	b=Uh440DkXkli/l0n3zmfBxA8qHDGhZIo9ESsgHLKgNRmwZSbJCcQXTtRsCmFBpqNjp
	 aSpTKLIx8HtapFOjSjDb2VUUTrvzxtMSGWI3QUnZymawXkcA8PgVLuHkx5Kr/dLhcf
	 igNpJd5xntHLeXTAONJe7NARwbUaf6UlvwTE+ArlKdbd9SKzG1YbXgp8GU6j0DmiN8
	 X5681cveVlAib/kTeCmQBtICNj3nswFuyc3l6WmXDVThw99tdhR+/DtXXE0SJ1hpvR
	 5U+/6uILaQIEgcy3KNO59D/yf0Vo9k1QdRiR7NC7NbKFHSnV1PZMVVXE2gN74vIh1d
	 vJ5It/Yn+hWgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A645ACCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016959364.20527.6515466334046100884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9793f54d0ff21e9c1775c8882d7a6d3488e8692b6e352258fa8d3b38a022c54a
Date: Sat, 11 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760169593
