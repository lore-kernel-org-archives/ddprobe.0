Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B5A2DC792
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774574094; cv=none; b=mPLxkvRQ0mdMPI0E3RWkvWiLhbXUN8lOmJnDiVS45AIHseOP9rzGyePvF7hxmbBZ+Ltu7G3miooSbC4yOL6k7l24IyY/Bl3XgfcBR2vwg9QvmrFJWhMCVU0ZUqUI9U9YJ3KjpluG4XF5KeCVVSmEmw7SZX6eb/BbXxwKaHli33c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774574094; c=relaxed/simple;
	bh=RH3I/ZLxA7Ln4TbMJvUdmZZKZUIMiRaz1VbIZ4DbF9I=;
	h=To:Subject:From:Message-Id:Date; b=jFLx826X9g0r/OYTDn4/+FLD930cUZe/k2OI8btQw1/xE3eVt3yS2QJGgo7+JBvu+t+VErmntKg2tcIwKxjlDuvXZSS3fZs0kQfMT4Gvp28IcoXq9LdkIZ7oe1xg82nCQn7Ls5NYOy2mh5TACvzpZgTS0Blly+hUGLqPUWXVW64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZ0Evf1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZ0Evf1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75DDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774574093;
	bh=RH3I/ZLxA7Ln4TbMJvUdmZZKZUIMiRaz1VbIZ4DbF9I=;
	h=To:Subject:From:Date:From;
	b=eZ0Evf1ZzF1HU+OFwp+w1UPn6AmcXKaEGavvGyWQc/RKXXs0OtxuNhH4X/WkGUNkR
	 pIusMUqvjOFmIS1aPz5tJxD+Cjf2Ys+n19b8WticsiDzpTShwO20fw47Mfp0a0kI4B
	 8t19NOaNJm76N+AxfjGxfOo2Kj1LFyhTbSOewueeJTFkgCE3Zq2b2O3eDbxOwXkcTV
	 VTDPA6tBZJLIh3lPHbiWFKwXMe+tuwro0i/UGM/oEKIQ7rCiVCSyslrPEt6wRN+tTj
	 Teu34pO9vn73COUQ27Hzl9QF8ihqyOGg79q6F1tAYfXCi0wkYCkrLq213DhX6ALS9k
	 0BEUhV7d21Wkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253910AB83A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457409358.20770.13020715861947712988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9b5e4a3cd149d5a5aec09ce4dee9771a9ad793deee7bdae84d74f9edfdf521
Date: Fri, 27 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774574093
