Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDF01EB9F4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743773394; cv=none; b=KSFMH7A18cXvtTNdEM7lUz2SK09HkRdQIfOyqc76gFj7CwnkomxqHfkPR+KQ0fr72q6FuROUuF/eXDam+kaDyo70rZh6JBzNLcbbxa+xmW2N4h8f4tmyZyIGR/b8vjdUqEV7NGxsbfg2ZRI4gAUmvrElFa9E+o0ftB+O2Oy6d/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743773394; c=relaxed/simple;
	bh=V42Tyz2fbsPmeEHvOTuvT1Mkh1dtMU4J40qUGYVXAbg=;
	h=To:Subject:From:Message-Id:Date; b=WwEObURF23ES5j3EsP9sDXd2/j7tRhEu4siKYUqjPjkarnNXhqCwzz3uPr1XdcIpwAvxckVMuS7e89tUnBbBLlRxoyDkxvO1ANSTkVw7TlBfgC6XqgsbIV1FhTp6WptzBVXUwFlRk1DxkHW2IgWFkImqYsM9IA6h8CQWPO0/TzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emkVmvuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emkVmvuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4BBC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743773393;
	bh=V42Tyz2fbsPmeEHvOTuvT1Mkh1dtMU4J40qUGYVXAbg=;
	h=To:Subject:From:Date:From;
	b=emkVmvuQZcQ1k6OhkhlFgpKCch/Z9k6FLzdI/G+na/fKoINNVbsGFmOUSy0uVpCnd
	 7BVgwA0tYyUo7nSabzsl1GuIpY+lz3CGFi8Y898TxVy7xtOFbUiajiWvtVOeudUsRQ
	 N33dXcNuInYLxxsjahbmIerD5m0vowZ03xk86gPKpzyGxZzAxWha8H7yYmkLhMfbH5
	 VnfqEosft3Uf8izjN074nM/4PHHNasJDSMPtDOWHwF8KZ/V/sYeoAjyzpmPUpWkcHm
	 3Al4gbxs7VqEDcOQc4UmpYlYmGmoBCnjnSBhh+9krDznay/FgS6Yl9g2I18jO3akd3
	 DvlesLI8XRBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F6BC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377339361.29896.7652061306881947938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0504d4818b5d3783002fa2d22df47725a59c4343b05283e8c66c389445a25ac
Date: Fri, 04 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743773393
