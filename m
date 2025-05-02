Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29533266F04
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746173394; cv=none; b=PsC94W+JAX/t4of0eE/DRkTA73qxIYthW3S8ARD1NZ0HOhXzZRlkDHkdTfKT9/FPk47CE7xFLjlYoXzDxcPfzRyXg0zk0aK5ev2+20SP41dTO1aOI6EIh6YQfgajIFkvFblVmhi8aiIiBmCUatK1RHqxcXGbrs/5UtYdpNgxNrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746173394; c=relaxed/simple;
	bh=blCQhnRIgNIQopjjC04Aj1/fBsHrWbS8hdHdT2yO4uQ=;
	h=To:Subject:From:Message-Id:Date; b=DsauBoSlQEDnzvRF4hXj9QVZZiRzyKkxoPcoFyOo1xdyxW7SAz8P7N8JYRv2HuJ7RsyhlkP/h9Kep3kom9p4Z91acoT2+JCmjVw2hCnr4j1iwD6s4v/eHqMMv8qoYl2Ku6axsjrd7jhx1rD4noiI7y5+rbQN0g5Ty/jENnwl32w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+o8GTJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+o8GTJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 981B3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746173393;
	bh=blCQhnRIgNIQopjjC04Aj1/fBsHrWbS8hdHdT2yO4uQ=;
	h=To:Subject:From:Date:From;
	b=s+o8GTJC6OGgBTPwtXeo7SCnNL/LTfd5lgGg/mUfax7UbJfvNUVTgH3a2UYBwUNL6
	 6h5shRoymsGgLskz98iKqPnJ8Vqs08bM96ig1nslHbeKnSgEIxyr0MsQZN7eEkXZPF
	 u0yjfoKB2lhYg+4tNq5iNCjWgfs1/lCKjVY0YXoHpwfCzcqC1jSPAwD5DtsjGObRrY
	 qeDosE2FmyplQxWUwsUdBOIXQz4ni9uuGNHzaTmyd19dDo26fExpBQcBnNlHTDrveA
	 UGGio6VQmm4T69rnywhxykfTIWB7wIg5pOHKYZRMY4rxw1PhP7UasZQIJYGlnMSlpl
	 L/POEcLDi+K2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A6C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617339357.2955.15424000442682209410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fa0c20f7e7165f7136bb5960fb3ac1e3ad728abe7987a16bd0a38ee3317425
Date: Fri, 02 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746173393
