Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D37B19CD0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773573894; cv=none; b=hTUHjSGK1m4gQCyIj57FxH9R0CwTspfIvKgaim1Vdapuw+0gws2kQbDKE3y4YaD75NWVbxJvgc8aGKX+HZdlVFfCoJ/VAWT7U83P20W3exSei9XDnVH/o4LmeP9lZcqElgnYqNY6QkIEA8s/f5dQAfvF4mzpp5VCZ+p8FV4fPQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773573894; c=relaxed/simple;
	bh=y40v9aNSdSVuDGK5rjAgXA9IP7MeRskGE2/EPrX8DdE=;
	h=To:Subject:From:Message-Id:Date; b=iCIL/Y1Bzy+I436soh2FfgT7Skt+00IHMR7QhGWdNo2d80BUs2tj6TO59qonwsF1yEubfIXvvfSmjw+5FIDeqtXTs/3LPMKywbYlewT3Bl9talxga0j5IZ/1nKVIK/vrf2bXgudUp4vI97a5YzMmzlqh57qH0sbcZTDSD83vDho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChS1kGxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChS1kGxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7849C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773573893;
	bh=y40v9aNSdSVuDGK5rjAgXA9IP7MeRskGE2/EPrX8DdE=;
	h=To:Subject:From:Date:From;
	b=ChS1kGxAYv/9cJekEBZ2j3kYuLwV9czS6VqVcpY5FQ9q+j5pdAusei7QcUYPf8Q1D
	 1WnuFtGFdTluqN6RXa8thW/XWYn7QyRgJ3EoWMregkhgLVDIoYsoyFG6dEc4hYqkkm
	 Tkozoce3K1uyQBfquWw2oBKAf5B2JHZQoH9EUYEu1oFrXp1b8JjO7Ru83BIjiJ/9Lz
	 W/XNSzXYYFpoLkxa0+dbygp1FZxjIS9pdVwTmr8QtZJ6zA3xAKeOq/F2aw0ZY+9hMW
	 jHwB/pWuTxsRa/xrhkpcKYslNjQCZcGtngal39DqROTDRHcHknfVKlLXYZQnS2uus1
	 nL4F8GT/mvE/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95391D58B17
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357389358.20243.1503457023305264047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934d2ec10213cb643ceae790dc86b0d1ce498174613e540fc905a22aa87baeac
Date: Sun, 15 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773573893
