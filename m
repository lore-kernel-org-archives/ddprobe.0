Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E285F1854
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735725354; cv=none; b=KGGAArbJjeMcadYaekc6zxXM1jE01S7ptqgHbJ5WEOxHaCIY8a8llrcIBiEAmY0B+TkOxePs1VoyZeWwJgsHyDhLpz7MSebCW1Nvg/oz0jpxJZa7TbCjaB+5xS3t63e3l8uZDFiTwWHVqOmx6HyxShwDfZ2kOkqFJos5DsaQ9Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735725354; c=relaxed/simple;
	bh=5Nyytrb1v0VDiiSEwmotF5CmjfaxFsXWlVSEoU9bcD8=;
	h=To:Subject:From:Message-Id:Date; b=QYOM8aT6eFPgu+gvEgPHN8Tu7MKi2Dy/w34b3kTG82Uv0JW1L3hGkY+i/m88iwRtCtNzkk+3StxJONZ2mWKsXTNJZoT0BzIb6g0y7wkJfZmjgzg0buYvuMBsylXrLGINIxGQwB+C/wogNzqDwSPTfN8MdfSL1SQo9bBLV7IXmLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKR7YPEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKR7YPEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46A3C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735725353;
	bh=5Nyytrb1v0VDiiSEwmotF5CmjfaxFsXWlVSEoU9bcD8=;
	h=To:Subject:From:Date:From;
	b=PKR7YPEiqDgMDmcRGl6ijeh0EhxtoC5c8DNFu9ePIJgUg48FZTiUBXB77oVwpn03V
	 5iZ/Ghhir0fBbf1NPaP1Y5OA/dPfHfAs8XvLUDlqv92hM8L0Wwnkz3YeTqggN+5G85
	 krt4ds2DT088XtDQrosWKIAVP6FqHn0W8xaKcmC0/vCYLJ/04MxsIlNGuFqA0guDez
	 wil7S/XGnVMkt/OWSHRToQUgtnvo6gHuuT4UmP7q+i0hRhy2WdU7uk4tq7mpfMmaDM
	 ANaE2UQYrk0ZXsO40IuDtoxP2qVV9NsRN7mrQvX+pHjKBHdQLHPEX0kGWgXcwLPmp6
	 8NFpAcpEKz5hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA1E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572535358.7664.14596448986708387172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee26ce33d0eb1531cffc6574f0e9079755d6c0fbaffc2e331ac85d67aa075c8
Date: Wed, 01 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735725353
