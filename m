Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FA22D97AB
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768504434; cv=none; b=k2WBL6QHrOxZY1hKN2mbPqtKbkT1eGUEqfcFnPon3S9YtuoD3um+hbveYCLI6h0VrIeVFQsatA8BHxc+oOb1WYCwZIQoDoAfy/YYkdECZN/oKa1/YAWmV44qi6rLbM4THKg+lwap/pUvumkOMupdtXWaN/ZnNXmQiUxfTCygIOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768504434; c=relaxed/simple;
	bh=KQkHBXe1r/Sdm7sbWt9JxNK+ePmQgga4gIY4S5m7Hq8=;
	h=To:Subject:From:Message-Id:Date; b=ogMCifL209qzSxmOCNYyAA11AdMt3MXT2CF7LnOYetduVxnBRvLILYDkH6B287UUUtl44ESYFKvPDFcCT5HBL0Rjr3thBrj05P3C6smo9xsTViHD/IJMRS1PI+QeWmslAGqZ+mxAGWtQn4vp4NWQVwtNSD51jQyElFhkZR5qbkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUHV/dT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUHV/dT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDE4C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768504433;
	bh=KQkHBXe1r/Sdm7sbWt9JxNK+ePmQgga4gIY4S5m7Hq8=;
	h=To:Subject:From:Date:From;
	b=lUHV/dT62xOMjPc3PHxFEtfmjTKFFh3OOrTSPXCik5EoUTI6fOR80DK2DUPcKbe0n
	 YoNpzJV2TtABy+xlejxkGaDSgjtr9X1550Fz1p9Q60+rJAAIprsyeS6fEKkN4lFUtb
	 MYBtUfBEPVB02OIGx9yFCDBCCNcnhMwB2FqtCMjlSEEluHfW4Yb3huIybtrGWJ+Y26
	 CNGV7IetyNlSPiwJ4ktgtvpbxesDN6KHuPXGSdKahfeRovIGZ08xKKPzp0++9HRNGB
	 B6HF8VsYzHxaUhJztAE+/gYQNctv084/G7c6hdIS6Ghd1l0WXMZ+J6Z+8Fo/O4HCr2
	 8yP1qBD8+kBAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55AD4661A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850443357.24048.11564571423462330435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2277beba89f3c3f8138b8cd66a36462ee837eb227aa5bd3d04c3f16de58349c0
Date: Thu, 15 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768504433
