Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E304594A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782096394; cv=none; b=gyLvhig32fLwcynGPb+DQEubusw+iC24bv5KApbKNTHobFcQ7R40RyPF0rr7nm3q9ujH/AcsEwbvBlPThpO4rSuIhr3vwVwF6f026ZCZZllHPK+l9eIwSXDcRIhjVQKoNPuGvZLD0EcEsg8uh0Dfx/vW3nWE9lkvTDPON4suIvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782096394; c=relaxed/simple;
	bh=AwFe5ObLVDMpUgDDSX4Tu22aPb/RRQpiiiwBpE99IaE=;
	h=To:Subject:From:Message-Id:Date; b=CnQDJN/0g3CT8fiZ0L0VnV8TiyX4ui+jnCs+9I2QmoOV3JPXLZN2P+ykKweUwB+mDWdATMAzheeR2/4WJkeIe5WkXCwwlTtbq9xrn+6GL+59waccFSDPHhMvDAzvWCH/0KptlGKOmJdGLd2wmlfXP/azanK6aPaBItPVGU9pLw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcGeIZI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcGeIZI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEC1C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782096393;
	bh=AwFe5ObLVDMpUgDDSX4Tu22aPb/RRQpiiiwBpE99IaE=;
	h=To:Subject:From:Date:From;
	b=DcGeIZI3s7oT9akGVe4ZoJ/uNteY79MunZupUH0mgpOUCZFuplt9Ez0F5Vpt43ipe
	 JeVPdJSQGZYfnTSbXc46RgBwbZuMiVSr7DGXE17qrjDWJViqHSo1pE+Ukz1yOC662Z
	 guZ/eAyCd5vafKVFZAJdUkhS+dd/AVGKjOeAKXKn6mTWLyDFaj8uCTR9U02UT9K3YR
	 ErHXKgRbQNjMpzA+B14wVJ0hJTWpSXMCeUhfRa4z4zCIg0ov8kP+rJap2vnpPIf4Cl
	 qSoCpttMCMhg1U4A5jUTvMybY+OAJy6TvfWmiKM6SGkmhMiqR4sq/Vjil9l0FX/MTR
	 WfOfsNez+ovEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5352CD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209639373.12733.3445831429294538999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50453b51883eeffc30eede434efb52ae76d3c5a06556380e8861a3472b35aa8
Date: Mon, 22 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782096393
