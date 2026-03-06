Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EBE2F290B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772762694; cv=none; b=mlrN5wMdiA6A56itN+dSq4Htr8hwPALHxhACRZBIykg+C56d3U9N+R5XkiQkTT+UJ4qSicD6Lbjk8yZxlJenpu/EsJxKcDwFcsGhkGm3d+5gzhdj9R9YQOMMi7lc+miOUFNCH6d70yAwlGwAcs361XDcF/OIqONbXwLNz2nIV40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772762694; c=relaxed/simple;
	bh=db3EKJNXjjBNkoCl+T+YAe+1diyPL3N1byLDE+1y4hg=;
	h=To:Subject:From:Message-Id:Date; b=KNBeYESIwRkeH6AbQMjUl/B0PIPib8UpPfc0UETwd1etcjGceKlf5OKe1IXJczOAY8AK/Cl48G4hkp9lLBpq6cS7ubit4KdEC8HwOaNtnWJtndbGKYuPUVj7hSGZg51NL44CaWxYjPdbMIBZuCGVPdnJs7GgYWpfObLiFCqzQY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atExzpIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atExzpIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFFDC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772762693;
	bh=db3EKJNXjjBNkoCl+T+YAe+1diyPL3N1byLDE+1y4hg=;
	h=To:Subject:From:Date:From;
	b=atExzpIGYT16oPmYez9Jb4X3UB8E8zdhXjBK3UO5wubYlITlYy4c8GC9+Achv50/8
	 +R2dzZYZkYogsw34hrGhe2VaIEIPTw4dWb9oI3rWXJSBIProxZCz3X7yZpUkjaa4d2
	 I+3JnJwZJdse06SH4eDFHeMvY18l0llZSTXCi4g/OBP26Lx4jpoPDsk2nLvnEgCgKF
	 BDbIWZOglHGQqCYZB0o31abIniXm+dO2tTuDK2aZUa2Br4LDOj0Kpnz7gJVRkB+LQ4
	 ARDL/0vOInzLb4mkHN3r2I9NsduFIUW8lUKnfc/DNxR3BUcXS1MRq1UPvs/Upoi+rf
	 j5j1/0sk2cIbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C56F513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276269358.16542.11942385707240455005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420d0de804c6222acfb3bffc15263ad81404861ab5a331f84f5d1d12a7390328
Date: Fri, 06 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772762693
