Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F3D1D8E07
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749023394; cv=none; b=T12H1modzDC7x0pA6CKwbnFS7xBFugZQZdxD7uD0AN92NsNh+0nQx3HeKgfnQI18XRUiJvCtHoKZpDDcgSjCVuvWjM/dmp9w2Umi7meoSeyDfDD8L1KEUH0cksu3Y8kSyv25L1naiFH464qpuWHHrgPSysrw9spOeVi/OB6hjU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749023394; c=relaxed/simple;
	bh=33rRZbFOmQU5SGLEzmsJ3rjXxSVCBoK7NAThNUswCDg=;
	h=To:Subject:From:Message-Id:Date; b=nyJ9N3R7X+y+N7wzOmQzgGqNa9KkChvrV7YRrAF2si0wPc3cmyrZ8ecafYIHDWQQxvqjf9hZsSroXVwS2sfkrMqxFc0kRWVzgZvFMNN1+/dmcrJ5Lwrg/51QweOi+6wWEwookDRIhxpiKzxecbciW3NA2NscStsc4kM+Jg0+mH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBnBhQGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBnBhQGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A094CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749023393;
	bh=33rRZbFOmQU5SGLEzmsJ3rjXxSVCBoK7NAThNUswCDg=;
	h=To:Subject:From:Date:From;
	b=MBnBhQGkWjoaOZ/NvUCzFG6Gd06yYHhHqfa9mYM6dyU1P8NcX2Zj4CEFvvh+n90dq
	 fgZVkNmVGalERNcA11n+qmmSBoxUSBUHuyH+pQvvHc2V0LJZQBCml5WXHWP7qDzjna
	 2TDgyWmjw36OiKk6T8LfKsTc7DJaNgoys4dmmi8tdZYUV8flGgrdzbq9+GZU1YXsQx
	 I13Bz2J7Yhh2aNFBk9w5A5A68otLLi3/zFvigb95iI7u7HWh+5cuep2OhBFE5TpRtQ
	 h0bYervUmOs5kNPEWrxpJTqCTWu1N4RwaorZgOkARkKerukiLWWPBGro8Cq1h9/5QP
	 Yew1Yu6rkmvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90952C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902339358.21625.1433919450693368390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56c636caafd84eb0fc17ec3ff0b1fb11de75e6c6c0d1fad64d0e714321697c3
Date: Wed, 04 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749023393
