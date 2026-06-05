Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8BC2D0C98
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780621474; cv=none; b=ZyI0gkeDFhytSgBZv7MRywsBhqoRajRRJoAadHtqPEyaZ9h2Q7hoxofnmVsoRt/z9BiMfH4EYXR9vV5D77FnbD/NszpJB3g38BJCEDlraa6gMgECAG52OiNVO2QbK4wsx15nh25OXfw2XIoT6+H58vk91918VNWWELyoEgui/Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780621474; c=relaxed/simple;
	bh=MTVfAip/uCUfesZenr0TAuUSymMOSYaGZRXyRY0hGv8=;
	h=To:Subject:From:Message-Id:Date; b=pIXtaTFnbRMIBVJefKIFTIMrOhDRcOVeooJzDImDZGX3rzlZ/crohkxWARs9kCkCWIEg6sEiR6cuN2pywJYWOpIsXtosUHrIO6qqjX0H6JYpul/OXQAeM+fI/gdFNoULcod7qXGnwdbDyER78CwTk6HHe7gKQ4tL+0vnJXlJN60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdZRLDzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdZRLDzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5425C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780621473;
	bh=MTVfAip/uCUfesZenr0TAuUSymMOSYaGZRXyRY0hGv8=;
	h=To:Subject:From:Date:From;
	b=cdZRLDzUAknjH98/InP/H/SxAuVxoh+WkHOTrm1NjCbQEkF0VSFdtYlckuE+nRrjD
	 YXV1nsmW5pSxc0DOviEX7XVQkqihTOll7zfwIVQumO4FIe5Y7wY/+WZ+S88glcaAYw
	 Tzf5qU1lHB4BQJCUqSMJDVwHWkmQqUpvxyU0Bp44xAifOkjfaHOIoxHbffBhTSptSw
	 U/8fYzf5fkunhERg9AL/+ZHmqoM6qscHsDFeUFJSbErIN0p0RdanZz/VZ9kOJbwZiC
	 scIe05nVmxUUXWO0AbrEKoLeRPbEOOFROrk4eU1zPfGGlXnphHjvKVWTQOqiedX8vu
	 qT0ljPMGVusuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CDCD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062147368.19307.17813284190993825722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c8eacb7c534dd39265e3b20f7e545b214933d19eb9500804e0f8372c141b2d
Date: Fri, 05 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780621473
