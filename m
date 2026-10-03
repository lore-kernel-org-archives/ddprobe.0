Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E346306767
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791033634; cv=none; b=EerhxLnRe4HjEhFpdautgnBuqxvTnu+Y/mDG2dDteo//4DdIANQUM6hFFEgPfPmCdkrJ9OHv2f05DM2oblFGPE2TPe9m30lP/g8EZtY/8SrN0RdMV/zyeEmpoN/g48vU1oAaTDwjrOzSKbBkkt9gqvrPiv0FvQK5Er6+K5iDA9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791033634; c=relaxed/simple;
	bh=+mfswpw+TunX6iM5QX1LreRGt9vHHbSijMFqBgf3K3Q=;
	h=To:Subject:From:Message-Id:Date; b=BmeIfq6icxB/0WTJAsilNlFXgu/vI+4Of8NU0KhMHyLtT377nn9dq96XrPdcQDQ+gZiTcK6IU9piV0ocrsj657rhL2QZW4UgjBA4RVWBXkStOEief59y+Dj+NLQzMwDP2ZcMLHDECrplcUnuhNQUtb4xz7CpGaatRpMDXkc8x/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY/LqdeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY/LqdeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC006C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791033633;
	bh=+mfswpw+TunX6iM5QX1LreRGt9vHHbSijMFqBgf3K3Q=;
	h=To:Subject:From:Date:From;
	b=MY/LqdeUT+UaZCLsb4mVGLO+JJWm5Mgh5lpLnf1rvPcMCes8KvHO/HjD5BkAVhQ+r
	 po5kZpmrIeBez686s6nWU8uO+UyPa6w8+XPfd1cukBGsznVx6oOQnOvcndCFN1K43p
	 aY64j1BY3IqsNOjRzZAqmlXGeRBqHFhN61kNsiWQWlGfSd8FlsrS/TZLNWS3qXZM0t
	 OwwD5Jyrws4mFW3Z04VHTyIgRplblfsFMiD2MzpFLCkAhOebshF7U3n1YhnscqaUGD
	 xcNnZ8yOAzY0bRAxGY460lb0lf5jWkTJMBrgAjmr8DzX7mDZyIU8LOUn/hONx+g371
	 0xMR/HFU15qFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BADCA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103363368.23704.11854246286737016547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abec8caf7a676cde54c8bf6b40a2f77b7d3ebf9c7197e18f3a716dee43dea8e5
Date: Sat, 03 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791033633
