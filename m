Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FB13EBF3F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770272634; cv=none; b=hcDSRMQnNvjC60Av2iXe8/OxUt4lrJvvAxxU2Z9+EmTFmg6hP/BR/z/zP6GsGFTPmlNLJO0iuC3Nzsj44MdtzyVT2c0/NP1GceRDp/TP/gM0nnWPJw3fmQxcH9odrUWTxruD2K0WMWPfAR5YaZHySxb23K2r+Xfgy+Gmqsj3EgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770272634; c=relaxed/simple;
	bh=M+q+0i1SADPaZiXCCX5WKVb9Ut8rHOwpb03iRgcwvK0=;
	h=To:Subject:From:Message-Id:Date; b=AOG9RJr14ymRbM0t64oLG639OUR0kNguC5Uzw1LMRsVpI90r8QBdDGm8i2xvM0GfE6X/WDyCHM5JfnseKneO+4g9A2VuNVv02k73V3PS7Shpf3UWXZecYNz7xd6xfPnn8XVxwr9BlhMiiVwkKkJ2N3ng5IAjny7Rk+ywH2BA5QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzQZrFhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzQZrFhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10A2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770272633;
	bh=M+q+0i1SADPaZiXCCX5WKVb9Ut8rHOwpb03iRgcwvK0=;
	h=To:Subject:From:Date:From;
	b=DzQZrFhsqY2M68rNw4/xks7mAvpdiFnWFlciW+Bi7PYsad3nGLBmFTd3jxMiUL0ah
	 I4t29ijHdSQHyynVqOy18jigMwgRrYIw8pzgPgCiQKVVp2W3ca/tzWYa5WSFRuz1ps
	 DJg/8/1DcqiQ0G7roJpDfcVYuus6njIieayAhAedrXlreqT8bl6JkFNiQpF42dg1Bx
	 jZ2sRL6FnQqVwA0UIX4Jq3r6VwIL/yZ9qROZEFiA90/AzVtygIgEw+dl8xQsmSLMfR
	 PYSwmdL2UjGvEPx1MTPm5Jh6n25JqJAvEVmRk34NyDU7gLEDqX6rL36MW752CVFF6t
	 Wav7J/KGoZpWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1CEE91260
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027263361.5291.13022343661226343601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c4f60c3169259c0402eff8aa12f93d9e4a75cb6d0c27cd5de15b34dc60b891
Date: Thu, 05 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770272633
