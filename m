Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0BB3090E4
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762420794; cv=none; b=OemZwK9yPYnaOoPVr+KVUbwsOEFjMrEZv+37M7a8Quzcb76JG5Ttkw9y8UcSHLj4oBgikOABpGgOAoWuw3SFTJwMeHwFNXZCHRwmJWk6HhYi/6HEDcie9iiNe5D5r8z7Fm4IRS9EYNdnTdOZ8A8iIsgxeizJoFbpUkp39FF1PPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762420794; c=relaxed/simple;
	bh=W5BPqta70C/dkCFYHGQqufk2CnYt2H8nq/KtMm+0b0o=;
	h=To:Subject:From:Message-Id:Date; b=Tzfx6kw76urv2fXym28sa0eFV6Lhm07gHKs6cXXxchgVCyu+i+X+sxTrnBn6FUwW6IPm/T4N7aM5KW4Az7YZaCjcbcsgH+yWnRB5boikXJvh29pcH+/OhuhZGvApeLqGG+J/M33XwwhUOt0aWSqtOuDMc3H6zkfGACsotsCrloA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFzS+WPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFzS+WPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A248BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762420793;
	bh=W5BPqta70C/dkCFYHGQqufk2CnYt2H8nq/KtMm+0b0o=;
	h=To:Subject:From:Date:From;
	b=BFzS+WPSStXMiAF3ilG9QLetBBMUb/t0+6XT5/963m5rMKQLp5Ke7La7E5c9l3TJ8
	 UAMMcHT1BTYEU+eVOP9A+u7/NIirUlVof180Zlso3yMC+v/SAmENw+Xrb8yPrucTna
	 f7B0ARNgDFsy6JXZThITaDRS8BpqG9R+HSA48HJDe8N0Bl47/JWDcY0C1hqDcaZuBB
	 OPnhg/GVvPLdJENifLJ6H5hesrQIA54A5QU6214agFOsqKllxaH34kifQKu8ph8+gV
	 /7a8TYL4JnEg8+XBS9AkG+RY3FEKQqtwOjtzp7KnCWDhyYROo43i83uOg+PJSlmLj+
	 Zf8qDsq6PThjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410ACCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242079359.21102.13548936190166061115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1477a3d84b73b1ba8330b5f2f50c98e9c2867712dba152b9e61910f59a8cb58
Date: Thu, 06 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762420793
