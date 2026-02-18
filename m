Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD112848BB
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771458894; cv=none; b=pcRSx9LXlUdEeO9b/ck2XP7Fqv/fy1aH6sQRMckOCBhosPIbZV8cZSkGpTcJo7VqvAl9k5P2waeJgJ6fkEEWfl1rt3Jd8LUHrpjqbIcoyVOqU0SKyZoynI8sPZOnL6qihGPV5PgN6MslC2Jrsw8j3mmDq05UpLgOPT7wC64wdFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771458894; c=relaxed/simple;
	bh=SA8Fz4cIoQYadV8UvHA1ZILRFXf0ylipP4O+e1REROo=;
	h=To:Subject:From:Message-Id:Date; b=bja9vD3/xWJdg+tqD8oTIADx0TpzC01VTOW+gx7EOQOKK7iKrYCNwAQcFKkKEK0wNcy2FJYyIOQ5YN8hMJZlYuh6JsaIa0LpPkY3JVlfpFGz/JyRyOa6kYsd1cU9vCIRLwSt9zgduOa/cowPJ5OUA5KqJ3SosgxTvL+e5OC2Vok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BM7Vrj+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BM7Vrj+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC564C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771458893;
	bh=SA8Fz4cIoQYadV8UvHA1ZILRFXf0ylipP4O+e1REROo=;
	h=To:Subject:From:Date:From;
	b=BM7Vrj+gsBf082hIwCtWKKR2P+SPJLgeLS/c0k5GIUkqyCMzUEuQKGvJNecvXNt4g
	 Jgs5Nsdby7LQmRvmCLB5P0Lc6QGXLo20FLjVrZE9okU+M2+UEIFXzV2ZFa4y/d2WHf
	 +SVl3r+wzeRvK/9RgKmbCYA6zsImf+9/RQ0m1v2k+VLUhO/prAlsHRjDkBPF6yAe/o
	 E1zCGx3ZYKdgZbV1ygHuo8VIx9qbb0WfomfV3rG9s4lS5m9R1RL1wR+dp7zPZDiHFA
	 Av++oHz21Wwo+BOc3JCc7otduuZKRpyh0MlLz6uy+bi3p+VStM6aDdz/mOdxLZRhpl
	 vXF5Ws8mfXz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FE0E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145889364.27646.11158555811868963143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5484212910332aac94698f7f0fff2dde313b8c6dd7544210c558a5a1c2d96010
Date: Wed, 18 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771458893
