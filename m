Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2063729BDBB
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775766454; cv=none; b=fHJ3BNmRYjQC9uV8LT+tZ7ByKuIZDHdgp4WPVpwKQkukynxd551Lj17PSMmuw6G+RAYIdiX0xfhgAVWdeH6kyRImcpzrP86ymJTEDfTCiT8ISE7FSIPH/SmnVgOMh5EhUPl9554BywuW1kB0Divq0JI8X6pu54XG/8DLHadkgTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775766454; c=relaxed/simple;
	bh=LQ2F5pE/YZPPoO2pHPPhljTiPEE95PPYBMOgKOAGQWM=;
	h=To:Subject:From:Message-Id:Date; b=aHokOAwPvPa8Rj5KnbIV15ukjM/8Xgss5t0IydcgCprl4b1UfNfuxVsknb17rx8LXs1sJgNxkwxMh9G4jQJTzsiYXBNOYMaTN//lbXiQkGv26TOuVbG8TAdnvc1I8LN3S8C+wRmhIwBJVFYlQYEVM2EFEjc4PqsBczOeARj5k20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YilYc7Hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YilYc7Hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA7DC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775766453;
	bh=LQ2F5pE/YZPPoO2pHPPhljTiPEE95PPYBMOgKOAGQWM=;
	h=To:Subject:From:Date:From;
	b=YilYc7Hr2HhfD7EsNZ/+rwOeSFin52GpsUk84l1MgbT+W9Hc3TKtuyLvw+iaFtG8I
	 jAgm7FMsz+z541hX3iNWdqAcj9PEVc9cIismHoZ5+iyNdwvs9btFdTHL5LQKtwJbIb
	 j4v0amAQI5sk6s13YjdWsGYIRLkgWCfU/bMzxvAGLo9d1hXARqwc3o0WsPGGC6B+t9
	 jxEbVn8faYGw/n15W+qtWIkyJ8LKFjf2NHGLhZ/FIwbcd/dkfSCVEvH94XzLDbtQLV
	 sr1ApeGG4khsbnWFMpVEzHlK6w+UOP603dbqtmwUzMYOMTXg6++n2l9tjijP0SG1r4
	 rwW35FMytLbfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5DCF364B8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576645369.14321.3765137448977961394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cd2c134734734ea66658f4551895aaedbeebbe924ee39b47fd4ceca7b5ae5d
Date: Thu, 09 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775766453
