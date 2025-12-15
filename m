Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307C729C33F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765770174; cv=none; b=cWQ+cykPH9sAmWXZYywCiuJA8cQspB0j7vxo4CB+UheZnqgodBq1joOo2RiWR5so1ps2dl/owRIZQpvZfPwYPt6tpPDKwdoN+aiJQl1zcSq6ayA8Fli3MjPNej3rUmUs4JU6q5tFwX16Owu+YpcnTp54SqT0yUeJY+m4amX/m1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765770174; c=relaxed/simple;
	bh=nADy6/kXGnxTXFaAtIir6ZWiwGvTsp2SCq1jAKpUIPk=;
	h=To:Subject:From:Message-Id:Date; b=Vtq/HODi83nYwccHKjPqsTl134YLLcqnvfKJSeYWp62Vj4dYJTaSClZ40Ld6Kd0ZZuyJ1TuLjSC+sH80EU6uzRojORXdGjDLKOyB/6I99SmobfxpiTDn8tMG2RF9VaJn3fEHi+WrLkxo7V1EXVTqoB5yhIMLP8DllTwAftILWts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZMZCA0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZMZCA0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38A0C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765770173;
	bh=nADy6/kXGnxTXFaAtIir6ZWiwGvTsp2SCq1jAKpUIPk=;
	h=To:Subject:From:Date:From;
	b=NZMZCA0oh1ZWQISjUwU4LyvJzr9yIfIeGnv2n/y2w45By6JACLnh7PsP19LD9z/dX
	 0FiAl4fE1lRmGR24QNuFtCrGnx6CXZw9q/PnO1hvWNH6nV9SSBwEi3YLVbZZFO64Zz
	 wcrGd5c+3AzDFOd8OHmZxbiA8BwUhgG7Z7ymBKxsqXILPQOhckwCk9G6XrNl+5/EiD
	 4ANQlrOqD/b1e4/jq2hUlWTK4UjEpvCCQce4xg1kP95Jp4liguP6kFFILUYyn2civ2
	 FG4dwh+30ljYWG/B6SPun3NYW1Kufs4eOZ6/zkTuw7YXX2cJfyXYFiYxT9gXHMEPvL
	 y/YFGSOMY87IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F58D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577017365.24877.12315818275230752321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fea38bbb8100d7cb0ed16205861fb81ef22b4c5edc638aca0dc9c40be10958
Date: Mon, 15 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765770173
