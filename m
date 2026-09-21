Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459CC486419
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789996834; cv=none; b=kBu1p5HOZZbsqbe1z8ziOz1iXo8Cx6nDW27xA7HOOSyHdUTJKwRo79B6w7nlvbGmck6xsB0XBjDT/V8BGWV4bzVnXMK4PgB+deWlZdkTTlY0TuaJXQoDIylfsFYC7Qg2qKWfhQVaQazBMRywmlKA13M945ekypiUSPEbRCAMiNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789996834; c=relaxed/simple;
	bh=yRGZDDq3JQIraScJykUdjR7iompEAGpF8l4EwisPkv0=;
	h=To:Subject:From:Message-Id:Date; b=cORuz3uyh75uwK7ElTA+11c35tDe9F0to914g3EJOV/608eeXUoUFkiK+UhFU4YWHdogQ8gwazQTg6+LZ6d4sh5F9D8lbKo8I3xTkfPqhfZyUXUHb05DwEiPEVHbtgKkeBqpKMXPznVLCQTY9sNM3Wx8Ww1yexKXvm3lB0EI/Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKrTv8qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKrTv8qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEA8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789996833;
	bh=yRGZDDq3JQIraScJykUdjR7iompEAGpF8l4EwisPkv0=;
	h=To:Subject:From:Date:From;
	b=NKrTv8quJNeq0V2cQg4I/O5MzvtnAla/KB3A/Trw9vwKumABiTkvYe1SbWlxaJOBP
	 4BfvUkD+ww3Et2X3ys5CR9aGthEZJy+ql2PSrrS02wh46n0iRNxmyeEmiiGO5HDBXv
	 gS3nlrYv3a056DVwZtK2ulvwmskm99YZoXlZt0nZt6f6aUg9aL+TNC6LMhfjKAesZR
	 51A4zIQkd1ZxwUZQm0HACLp+YZYAGS8M/ciYkTu8n4lPpS+7DkXFulUJW9Hx91KQNy
	 /lf5DxbepnNPGLmWglROqEBDXjvuF9+0kVAepdSy2lw4h+0NPDle9aSraw4Sstc/ON
	 sjEcH1UMD3UAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E60C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999683374.7426.4734507380435858350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44cf5d71c25d3aba2b660100bf1004db635f8068e62d49924e000a545c6af37
Date: Mon, 21 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789996833
