Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FEB13D283
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723319154; cv=none; b=WaV3nXftdsGb4T6Fby4ZYQEg0SAMT661NESLZEXNCuvVelYh/8v3MYICcqfOCNv2HVRRT15KrWeZR1VvmPxwoPrhMe9pThwYMirXFA2t7OxkLAv8ud5erF6TwZapO/+Xu/cYCnFnOB8wARhKAulSZnRYKXF35d0vTMr+Vkq17OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723319154; c=relaxed/simple;
	bh=egA6thb/GII3TtVbiiIsjKU/ClG9odW6HfCJA5Te49A=;
	h=To:Subject:From:Message-Id:Date; b=IrHNSYVXgon14loCQje64r0HVimpjHYOQCRQY9PMa+grSTIhpXsPyQ7LrW74W5qXnkeckzvmmMP/cH8NLi8FcWoHySm00OkYrsSb8PoQw3P3qPXXcQyP3UBOaNHclRCzL/2GIWgp32VSw6Sz/m7LpP7oiRylJu0ps90MwZQ9gQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS8jvx7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS8jvx7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A598EC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723319153;
	bh=egA6thb/GII3TtVbiiIsjKU/ClG9odW6HfCJA5Te49A=;
	h=To:Subject:From:Date:From;
	b=BS8jvx7Yeqkr8ZdmifUA3jN/jzY4cbEhuOQ2syZ/va0nVxN6Djmtdc9A6m4ErwB2E
	 VY2DE8hhi6hNZfo/AWLsFDUb4f9jgvSvFNIZSiJYfujJzuaJScjtCXurdDiZKA6rXo
	 rjE1IpIY//IeLTO8a66v8//mKa9JAOVSNRyXL9IZXk4jn5xbwwImbCwOC6QE0PdO7s
	 V0UPOz6UpPcke4VFbIY0KUE8nSWcjzpJBHvHHbywRpkOtDScV9LV/GAzPqIC6cCYgD
	 s8EAuVCqtXde2VIE0I4GsggAqXt47woTT6E1I4SHSVROEOsIuRXhieWt+5GuO2IUYo
	 4XXl2j4r1KyAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93131C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172331915359.21680.8357983671433447888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38499d8a8cf09e7ca3b38d9a745ce0d855fa37122d788899e95c11a9516ae1f1
Date: Sat, 10 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723319153
