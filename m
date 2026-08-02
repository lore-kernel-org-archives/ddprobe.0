Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2633C3F48
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785683434; cv=none; b=Jqzw7syY2G2IgOYYRxqReLe1JJbzOSs+UlSA0evHksBA65GQ0PeRFjVcgau/FXDKU6hvIV/gCl5VC52RiUNXPmIa8UJaALYO74gkaVnHkJ9/qXqOh/fIa+DVoBC1IA+QL2GKbXCoITWlPHqRkiEEoWdzfytx561Ehbt11mr7hQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785683434; c=relaxed/simple;
	bh=v4GqDFtmzV433ZqxDZVcu5RZBNlyfniJo+vJhI+OW7o=;
	h=To:Subject:From:Message-Id:Date; b=SBCtzu7tit7/UISB9jJX1L96KtwEgVIBKKHvgnVu01izdVj1lZsOmFhFWZHKscdmaH9GN3mrFI3HokJJgfSttvQjdaPM8a6Z1F+9s9yg40kHKZW/Rjh4HBIKDEGh3EoNm3n9RgtUoe9+ZveLPWkt04stoNDLnRlIQtVdSsIPTzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeJ2OnQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeJ2OnQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9481C2BCFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785683433;
	bh=v4GqDFtmzV433ZqxDZVcu5RZBNlyfniJo+vJhI+OW7o=;
	h=To:Subject:From:Date:From;
	b=qeJ2OnQ7wisv73T1oMEONf9iGNh1qbLzd5DkAienXJA3UB5rXCsg4XgCEUvVEX6eu
	 ElyONoB670cN0D3IkUTTI4UYuTN3x+gtyZQbx3hwjnGkpxeoPhLj2qScvRozN1pVgo
	 hiwMdlv8WjqMG59R2F6f27hqaNF5TlSx+wsg8Yg+bOVJSXDznFwijN0sGRt0xA0s5C
	 61IS5v/0qVJUNTa4l29Ggper5tm/xMvlI3Hk3TqtD2LX90m3Op6MjV63ncVvmNS9KV
	 IqJ9heAnUtdBvIDh2o1KYJThpvsh78GNXPOlhHQp/ENkMPP3fSg+jUd7WKLsr9eOPA
	 qE30X0SdDxf/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A870FC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568343368.7700.7071075852636217213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce1545129949b659f6755eef00a4f30fe78700964cc2162bdaccc280e70989a
Date: Sun, 02 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785683433
