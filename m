Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD7D29405
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759576194; cv=none; b=ncKCH7ZpJlv9LIR5K/Fw/YmBMI1/q4HhXBjXDCfINLtPA7w9yKqDiM+sX7red00A6NzZsZz5ojSxWHEjVzFX5yX62Tz2QP5TExUnJiBdGcfsIk8xey6h5ahU+22OTGq9dqIs4Wnv7BkBBUsupwt5lueuDadaAGA4rbTjBRWl56w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759576194; c=relaxed/simple;
	bh=DLhSZrY4wgyZ2W3aHPvujUZwQIsU5vZQJrM6Sftiq5E=;
	h=To:Subject:From:Message-Id:Date; b=mNzuTlKXLRMagdT29WZ+36ICWrfR25trmgm1cD1Xck3RVfI32ieoq6KN+lDnLQeMDbf47fJ7E3pPSICdLKzHGT9IWPB8OxlYDaOnD9V3dfiw5hAKPAYsvapj/rS+qyd5ivtjZer2dILX3zvVdyICQyMPzkKR07+bmTud6vjdNAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKPxvq7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKPxvq7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5062C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759576193;
	bh=DLhSZrY4wgyZ2W3aHPvujUZwQIsU5vZQJrM6Sftiq5E=;
	h=To:Subject:From:Date:From;
	b=JKPxvq7SsIhMWJE0iWM66jYOQ7z/HxserbY0yWqDmxRJDionOjzBTt61iNkjXJ9CO
	 xZ7q+Q7IDIA3uRwhRvPXerV8phcZwPJVa/keN5fcfm9W+VsSSUdhiJsE4rJQCSOLP/
	 jwLoWsb65rKyL2lycNno02vthckGb4SxG/pLNQNLjeKU5qPnWIOsQfMahDHttiYDrN
	 g+OZx2sa1es47B5h/i/+QQ63TC8MRTEcl1GpxIvDK5kJe5vya4KejaUBdWkQr0AB2c
	 96bnfrNhxENN7mbZwCc2zUHi9M9QFV9aCC4vz+lznF+9ppaJe2qIYnyVUa+1b3yy1G
	 GsUDoLialHmgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9ECAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957619357.6993.3018918809975751794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63a5ba2d509e97660c1e8caf04901e5306449b0ce77966e3a34f8d22865b539
Date: Sat, 04 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759576193
