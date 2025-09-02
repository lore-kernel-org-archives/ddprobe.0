Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141923090FD
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756823394; cv=none; b=INwEqm77wC9uPI3kWjkPvynyuYjvOr+Man1gUbTYYJ9fsjZuPVaSZsePzEIYYOGltpnv4gaVEron7bDdkhgJd9iE34E0HFVHwtMpi6nMFGe60gYdjNW4LfzS2lZ9zCBxp6spPL0Ni31u4Lb8QqzIBx5evz4DvMSN5IBOriJbX1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756823394; c=relaxed/simple;
	bh=7TDgvG96mmoVxMqXC+pmgq+nBFe9Uh4j5G9ap7EDmow=;
	h=To:Subject:From:Message-Id:Date; b=pEemGRd/n0tbhJjvnBW6pXcNPaq6DCQsxZKuRyeaYF9jHB8B8lVXRCP8xaCTBAK6EzB1I/02U7qar00DTx/h7iNlbUs6TW1ISuinR/D+1iFJC+rpU9A4jp2uO5ZD3EOVF9JInhRCcOqBhzN35H+4eRe63QCnrS8O9JrjIbYo9Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvyWqmv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvyWqmv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2567C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756823393;
	bh=7TDgvG96mmoVxMqXC+pmgq+nBFe9Uh4j5G9ap7EDmow=;
	h=To:Subject:From:Date:From;
	b=IvyWqmv7DJj8IILHC4XCAuwjMhOm4+p3YqTw277a3liqzwTzv1w3A9tt4w1DYoK0f
	 ppUEYOUox5UoRlb9t9yg7544BYYcFp70ouKa9bzdmGgC0SNCcWt2G0lOsLdcHzJKup
	 J59MyHtXMD5VLo9IytCIWO7UCroAF25kejpctaj32eazBTthYVzEjvm2/snBR3FItT
	 11HgHSNCuA1q8qh+Xs1Kea+flrrjout/dJVEETc+mlViUmCTkLKChhyGQ8U44WgSWY
	 ijZAj02y0zkCAP6TXleQcffJ/PYRZhVTlF22gQpooPHW04ke1GJWx6TGb7qkm5O34d
	 cRL7uWKkAjmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90249CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682339358.26563.4597904403605755608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330b0dfd44e87a51c203ed381a2538834a13134296f196d1aaf990ccb2bca2b9
Date: Tue, 02 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756823393
