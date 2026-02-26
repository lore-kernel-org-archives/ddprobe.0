Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176071946C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772102694; cv=none; b=YPmnTTjOu9sfRpoCdCwkoBg504BO+2EGc2oE4SRjXUIN3CvvxvDGEHi0hff0vI2F4jSatIPr3Oi8ZoUoUj4oKUN4f9N8OWbuvqN4wMJGEeMc022/T5GRz9FRexJRfbSN5jWMnki9uf4ba0ZXVUSgDTFIH7wJNIfObSvgr+enNdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772102694; c=relaxed/simple;
	bh=ynVTZ4AsOhR930uaYZVIjHn6Vq4naxEksJEbQy4235Y=;
	h=To:Subject:From:Message-Id:Date; b=BHJF7xGlVPyDqkmRl9Wp09THDQNnmSlBR/zpmrHlGFKhzgaux7vvDTnYLk9jmvWhWKghUAS60HC9uNUi9QTyFbIIQqH3e8WAD0h76n+H+fI51hSzUfM0CPLTVtUbANM26XUVVm9qvEOM0tizErjG3ftl8dYc62HbqL59ZTV/CFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRQ9dcWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRQ9dcWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B224DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772102693;
	bh=ynVTZ4AsOhR930uaYZVIjHn6Vq4naxEksJEbQy4235Y=;
	h=To:Subject:From:Date:From;
	b=iRQ9dcWmjh2Mg5uzNL/uMgt+DLO/nGZv6+wE8hObLSIWUn5yozzlD89tW9+RVKM72
	 mHlJuHWm/znzqzvCwx0t8v6jJynyCtlco9X4/ANk0apgaPCGyp+qH7RytyAtKKfr6Z
	 cAt/eGxTrAnfuYlldjIg6Nc4i3osoKAAtpMTcr1UT2HyrphoNOqbhMmXkBS3CdQ66H
	 nrrcOjMjewbeJDG3HnJ7uo4Nj9/9LXZSYo/kLK899zvMa1s/uTa1kAIF6g8oSXhebT
	 TlPvm0nOcWiKDknWSo8XCf9Qpi+pKN1v/LkhaRBFucDOLfnghTJKa6Isqv7TD4kdUC
	 w0fJPlEcYrP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AB8FC5927
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210269361.27212.5889902127679779457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547704efaa744da82fb3739d63bb77e9898add88b312b9fde4a666a21df91c3e
Date: Thu, 26 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772102693
