Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283A847CC6B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790938234; cv=none; b=M5OuQx3R7wPNFmj+u8xbMVXZNuGxY18fxZzz19G4G31Om940PWPTHa/+enh5Zp6BkPIq1Tst+rpcMoTCVljnGuHmmhKfASyxjWKXsyyvVTtkGFgtm0hpQh9X7PTNTlqiYiVd58uSZNCUCD2FlZ4LxxzRj93soG3UPsgPErp1Cj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790938234; c=relaxed/simple;
	bh=RIdihUoM2FvcbNxJqnGd865+CqJ8BgCjcJ4DX+QbK9M=;
	h=To:Subject:From:Message-Id:Date; b=rzyG1hLO0URRAbz5TQGZt8j04SRzBR970B/+iFmsM81TOvKT+u3YCECYxKm8jRsn93ysrvHJKQIiBdB0R3Lk/jSh+hSnT2K9a9GzKmtB5qBukkitsmOeWRlW428ku0g9USzB3VJUU6dm1xlSYkB8bDZ2tyQdArIWId65U8k4kr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrLS5bSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrLS5bSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AD9C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790938233;
	bh=RIdihUoM2FvcbNxJqnGd865+CqJ8BgCjcJ4DX+QbK9M=;
	h=To:Subject:From:Date:From;
	b=LrLS5bSzX52y1y6Ecz0Z2nks2M/drU4fnJsCS9CRVIzTc8HZ3K2xUZMquLnXdx7ng
	 zJ7CjGSK6QMtcqEhv379sK/+XL2lXjtpQnPShC1J+ySiLcrhzic6CWmBk95OjO3Kec
	 YyfLUEQGQ/3mbfXxHtCIBdlnJ7obuptA3rAGqXNkfGA35lVGKlUFFNGeonSdwnogJJ
	 G5W2hQ6xjYIX0OuVtNTCSKt96qphnJmOV9tmYhe30EuOjid0UB/ae0CJ/PtKlADq1s
	 QOl7gidzGJBLAwWL5LPeZ0nA0E64fZlLyIslx5s78+HmuDzkAT6vybMn+tQZ4OHisW
	 ZfvGYt7/y37rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEACA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093823368.18619.12286940770817208177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201aade8d6812a4b2f8fe9eb302d3ec0523f658f499e4b6b434ee9ec48eb4654
Date: Fri, 02 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790938233
