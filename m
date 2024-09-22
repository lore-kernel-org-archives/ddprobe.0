Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2548B3D64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726989954; cv=none; b=fPrMvnaksQI7B/bOrpTIl3C2Y24BJUpbpUxCnUHildszEP9l76+v6PfT7Wv96zaFat/WrvgcPfrdDxCOAEWMGRhCKhNLTBAs6xRpX/GLRTfIGWNSUKlCGtlVPkiHGTHvkTYB5gduDsNfRVIas6GFH+jlUOJpsxSLl9CyVDxmPew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726989954; c=relaxed/simple;
	bh=p9IUp2mR4BNuectRGQodG+m3EjWD/qua4zZgwsKvS6A=;
	h=To:Subject:From:Message-Id:Date; b=uZR2X+/nM8APP0v2Os+AR+9+XOAJsThAn8bXO5QDPdbjv+LlsNTewSu2xiMkV5U0/8K8fMJ9CrC5HjD7GiPMudB25pOpyQKgs7kq90uFyqLcbEW3IruLtlkLXjf8tu57EO2avuZrMvBbn/aC0++O7Qh0iOahbnNuQRK7mtap944=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VugiaFfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VugiaFfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD4C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726989953;
	bh=p9IUp2mR4BNuectRGQodG+m3EjWD/qua4zZgwsKvS6A=;
	h=To:Subject:From:Date:From;
	b=VugiaFfmEXugEqlk+571MPL/8qbclyXrhwFtjFNpMVpi3cvNAjarkW35RcPKK3IWl
	 jJsdODe0ksNrW9NUUBiwmIDa6k3zCY6H/7AqJSzy7HvBI2mzA2cVG8M6pL/UPJr4aV
	 kgxwktjfBv1+Qvku5Q0A6CcBXPFr+XSXPJqT/xzR5jUxqrRMHt2ql9fnnoobFFSa8e
	 OZmOyUXD4OOe/J3e2+GfCoqsJa6DtPIoUSlNmlnJZxSBAB0YPdeb6b4i+hPxtc3sjW
	 jatljU6PD2oD+b80u3Y4ThtrMudMfHBhc+48/ISYVD8HbNjO6E5c1eR9arTw6DsABD
	 8mi1wFUHfZonQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F40CF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172698995358.12598.1823798252542491181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd3c50523aed04ced8dc80e407fd5f5e5a3abfaf14f16199eab796cbf4792cc
Date: Sun, 22 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726989953
