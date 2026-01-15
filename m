Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0379730BB89
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768460634; cv=none; b=uQYD2CXWwsNQwT4gMNe6WtyUKAH9LlkgpDQw4D300UrWGck5OocAG0GlqGtnjRvqMfIurKzWZXF2VmbiJkZG/DRZOltpftKbpKy+ehw2BM5Wa+1E4FtEmwGfmsu3P0HblH1jhx+ehbJNkHG465jZ6yHJRq89a2HFufFY7BpxfQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768460634; c=relaxed/simple;
	bh=lNiDyzqy88tRt/x8qdVlh+tAnJjdcZRaUhabh4z9m9w=;
	h=To:Subject:From:Message-Id:Date; b=oMY9b9ir0dHAev18WZ4kUz4jq9vkr22VR/VGs+WrQtJYpST+7k2oDux1oq16wjxdnDchs9wssK3RxNhwdegZKQj6P0GDH7iQj9XlVtYQWs0f/+hNgeNiwAi6opOmnL52wOrhGidM+gH6pZW35u2p/YtAdKRc8Fw2x0hZNoRQfNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUCk+1fV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUCk+1fV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE90C19421
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768460633;
	bh=lNiDyzqy88tRt/x8qdVlh+tAnJjdcZRaUhabh4z9m9w=;
	h=To:Subject:From:Date:From;
	b=ZUCk+1fVVmxM94SRkG0ASaADafoykkmfGdK1wcOKMc06yVD460BZldYD1mashCY0u
	 YRWPfsZMlzB1TZfIo2Nrt6huYfvH3CEtZtiu2ThD8E57JF+durle5TuGew81rtPYdv
	 /qX1lZM3XJhfG5ShbTT6xRglmcdf5+jtTtKQ7KOHnuSJhr/uTFZEnlqlBdVYgH3L/t
	 lPp/acR1oWAjzv3MmFNHyxq+nMqmWTcEU/8BhaRy/fScxZ+fySUoWl7JStp3S47E+u
	 wX/xKLS4nSx0Xm77hQMyGZcbrQqpVyLAedxur7aaduwDEX8Pp7cSKL4+txjiQTNm1s
	 c6dB/q2k7L9hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4AFD3CCAF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846063357.14467.8804344580739148144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b1edc1485f5858893657e31d48acb1c7309777b6b77a98ce88bdc67f0c1f8f
Date: Thu, 15 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768460633
