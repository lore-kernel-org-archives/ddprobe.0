Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD9947A6B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768181034; cv=none; b=tB1+Tjr3XeNI5RzOLUnmVcnAR2spx65ctJzUowS1TnhH4q3vdBRRwKPC9tHcUzPBQXy+Sfjwt0QbrhNaPbRMQL8vvPqZ29nkQga1RD8+++Sw5hDiKwW1TsanbEOL300L4f1Yq+MveYPefUMi8edoXW5z3rXyzKZJep0xP0V82Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768181034; c=relaxed/simple;
	bh=3FWOirvyYus2QgoL5/Pw3Zo6pwn1d3t5hbXDrUj2rOI=;
	h=To:Subject:From:Message-Id:Date; b=ljMfl2urlh7mjRzi/7VDuc/X2Y30WaI6qDPn2ayvBrdoZqnUMDsnVSyt6z5LhzzhMX33E5ykgI/8kQb3T8hChjFGfL+6kaGdgVRTB2zTRLXBIWtJYjwQMuAGQ1WLN4jgzLbXiOnmu2nyuUYki17VrXeXRXmrmvelxRc5ry1n67k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8wPgerp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8wPgerp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9663C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768181033;
	bh=3FWOirvyYus2QgoL5/Pw3Zo6pwn1d3t5hbXDrUj2rOI=;
	h=To:Subject:From:Date:From;
	b=K8wPgerpO4/WuQSwNNWH01n/blcLMkL5Oeb1wqgotkDICenLwMOl0h/Sh/9H1+JL3
	 GnJTGdMkPeQP2NTFzdx8QDhkpBuTO4ou/ITMCkoLZz/BC1T5A+Nfxvf7d/LhqrSImR
	 svJSU38P775zaqRIq33jWU16l4Sfzaqivj3CZFJW7WdYfjXipbk/66Eh8ll4TFVHyV
	 MsUFN/d39x4tZ5CJl+lTW9cjhyE+KUWcihEJ0cUDb3OrnoXx0mLV2AfhYNmmtoBZ7W
	 fBf4nJAWJ9L1OJoz/Ulpw0du3kTEqTiKFIOsfoB3qHDTOTIPttlUfRcfqh7Z6n6nik
	 miCnXqbmWo0pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C85D2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818103358.16622.11850951931539414088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f69b480ca9f546a5540742e39d105411eee5eddf825bb25882b5944b0aab4d
Date: Mon, 12 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768181033
