Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2EE25228D
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791787234; cv=none; b=CNp6QcgKOmRp8UyUgVZZjAlQbZKsx9dIHOOl65VEgHI6H8LdJdcDoDq50ovJnu4oqAqMdu4jS7F1KHKEStXXhKWTLajnqS1z4URHEKiP3euQ/KwvxAGqcjFhvz0hO+ldoRptIt8hnS1bmu6mhnQVZEoDLq5sH/brBLPqIGr5AaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791787234; c=relaxed/simple;
	bh=bqBGJm+twBksWqHb7P8L9m9//YX6t9Bz8BmVxMogcXc=;
	h=To:Subject:From:Message-Id:Date; b=D5nnn46X/0kXzVolqzu4VDuxri6lcDe+5oouWjHYdbMtwaJ+ouQXQ/rE/4OR+m9DoW2xQf46YSz1aSr/CeQMtz8y0rFOxQ4vPd11L3Kp3yvN9gzi0GdLAsgt9XQolDkWmX7z3Tv8IpUeTZDzRrRjQ5HzFlI0y9sy8Eoz1mfUNBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VczHRpOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VczHRpOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20C3C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791787233;
	bh=bqBGJm+twBksWqHb7P8L9m9//YX6t9Bz8BmVxMogcXc=;
	h=To:Subject:From:Date:From;
	b=VczHRpOuEocGEcT3ycta/qYtSmyL72H7mNpA7Y6nlwd1ebI14OCw4gHAMTNJHPoF+
	 jkmV2yARv8M9l1l1dycslWHuFdwcxo2VjSDb5ATTh9Lxo1GnBmwm3qf5bWZc+vzrNi
	 VJLd0/haNWBt38pe1GcHrrKe3aQxoA4oZXe4aM4rNin1f76xttCGk2y9HL2Lf59cNB
	 E76DBO8iA31wLbrWdR5/oVZzjw3KnQXlYLbMBMZbsWKED7j4itGB2WNyHCmeY+hSWU
	 92OGx64l7wVUWs9aOO9LMC41uMKo4Eyuas+4MRBe+8Iygbt+R5jFxAQ1nYFQpa/Dxf
	 POnGZ6EbLmpxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AE5CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178723371.26061.14501465735051737659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0359b40c0691197728bb450b18d6d2c0ef63c42fa5f8b824b6644f80a44ab5
Date: Mon, 12 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791787233
