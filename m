Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5E03033EC
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791639034; cv=none; b=os2tlXqYSqzrq4dPYqYYZjQ7hMAyhpL3Dzr9JWnPRBtA+eHMM8uo6nn6OZ7cxTTSExnUHjhXGzrDouy8WJaBQ1QYHLu26pQQwaO0Al2uCWHr0zxCuRNAmxqnmKdC3B5HpqppCg9joi9XgwHEYmivb/n3F3CM9S3zr+0AQ1AdGbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791639034; c=relaxed/simple;
	bh=8WCGAAntE9FGg8c7RmqMWiNvtuTL40EAq+lzJKF4fpk=;
	h=To:Subject:From:Message-Id:Date; b=YU5OoNNnGZGLr9wX6PGb1u57EDCtQjrYX05rbKG73IGmaAz1asGaLWmbCihCR4nXQZSj/UgeQFP2Gce1BQ9ChfDBNM+VBF0jBnYcnEJUJ/7s+Y1Co8413tO3yg7ECgWwR+LNA9WgPsxKy3VloZnYsC2QZysmfjwF0XLcZy1S0vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3leDrqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3leDrqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEEEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791639033;
	bh=8WCGAAntE9FGg8c7RmqMWiNvtuTL40EAq+lzJKF4fpk=;
	h=To:Subject:From:Date:From;
	b=s3leDrqVEg9iY4Ayp70SKgxgwacbJSAbwbc8MN7ymYmhHmQSYZXVt3zh3IYYtkkuI
	 681zPzsk1wgWbkcyDhH3ta1Ocn0T6ThrnnPuYToepw71bbZITC9p4FfSwctEVGdzGc
	 WnIajMPaTuHaF2pilmDedh0vQb2z2/U0ixq9Mysf6R8KAHeK9QiLzhqyeTpIS82GYN
	 2qXEn3LT5b+2WKPqHW43mm4PZO2KxM8TmDQN37Xg5APaWfddU1E+650zY+eCFgpPl4
	 yZlLFInc+VHy1vOVUFrYOEaVFOy6EOPZ0TSxfb55/+M27M/SdYOfw/ExDLU709Zghq
	 +fMQsdaIYfEwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9610CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163903368.25085.1568681988551752354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91447cadd581fe2165b8aba3cc97b309407a4ab48aebb1233f33ead6377048cc
Date: Sat, 10 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791639033
