Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26557236454
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759664394; cv=none; b=eH1FDUJsXgrlFlXL+PkC3AwYnfQkH3RkKdRuq9USt67P/tnmLlmnRBfCITJKyPJLczRwdC1TvWjZNxh4up5YMIflaycmCmR4YBo6SHbyeAdnsnuW7/+exa4mwHcoescuB+9WTEIbNFB2V37H5XJJMsYhMDBVl++3sb762PgGqlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759664394; c=relaxed/simple;
	bh=9li7Vcy2Z9NLxtUo0CTNbCIOzFReb6Bjyj1rCqRZkWs=;
	h=To:Subject:From:Message-Id:Date; b=KuYjolPLGyhLkAr2pC+gjP8D4tifhUHDOxnaCSW8MeZ1aRSbEiq5rvx8pI4tJTwxZFvfUcUca2lyTm8CuKAWXTv6gIxIHHmvBa9OvyrT1dP4OBiveSQdspRQIT0pqJ6gPhJjSqZyWm9LzGRXhSy4InUcNU4d/ZGgR8air8qBzqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+pvZf97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+pvZf97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D68C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759664393;
	bh=9li7Vcy2Z9NLxtUo0CTNbCIOzFReb6Bjyj1rCqRZkWs=;
	h=To:Subject:From:Date:From;
	b=u+pvZf97Q/BxxNOVpowSMbllit4ZT/axA4nIHjpi9WpW2B4vkeVEleN1scGZ/BzUV
	 bhkhX5hK1MuNiO8dA0H4N1x0JUQZF53LB4lEEpF2Rc2jWNrjN5/VEUB8Iy9e11isfF
	 8TZj9S2ZQe4fI9SR3vAcLZ73/qWEQ/O4my7/z7ns/s3MrfrrVdUUmQpdeWzf/seC+l
	 f32HgIy3NHOFVS3khphQRZzxcb6xvTXRMR7OehGp0kTAT7L4AFTKEum0R3F/sf2Jym
	 vt7BXKXcWCIge1skHaZUXhqft+PFjp8vWm/JDTuJ5PZqe8TOjZoA5KovoqE8+a0d3N
	 PulvNMUaGo97g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBACAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966439357.32675.11303397618654708852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de6be1077812bcbfc089573892adb9b118a08d3131a2ba8e9ffcd37d1bf8d60
Date: Sun, 05 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759664393
