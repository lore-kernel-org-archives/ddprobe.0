Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382A92206BB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749541194; cv=none; b=fsdHZqx+PyJmeixzp0x+wV6yLhIXqjACBJf6T0JJGutS5Gq6ka4XRXBwJDsPtrsxQ20HvreX9jomDblOwJXqIQyEPeo/LAFBK0ETXTobZKxUuXBJ/UT+3JtV+o5WabsdpGerd7Nd68mC03ZmlHoRVAAZiZvLb0ZiPCCgXIJMLCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749541194; c=relaxed/simple;
	bh=VhSV/9qiWF8zUvfLkS5yzp4m3CgSuVxmoCrQx3OT+9M=;
	h=To:Subject:From:Message-Id:Date; b=rf+HX7bXu+N2pRcWT/sDRF0SUINnA/xHPZf/0XBdX/xr3KZqgBLG/7JLBdamb93MV9QAly+9iRIBxTf1WwDpMhLXutxMTTcEiwHEUX+A13dkRBlPIUm4UP75OQvr7sPE81jMSqO7OnjLyn9ICixks11OQpYlwP66PmdKf88UF0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOBEpRuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOBEpRuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6114C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749541193;
	bh=VhSV/9qiWF8zUvfLkS5yzp4m3CgSuVxmoCrQx3OT+9M=;
	h=To:Subject:From:Date:From;
	b=LOBEpRuwx1GbGOgxytvWoF/LaBDn0JhlFWbGg4U6EDPETEGqaeYPo8fXsoxeheppf
	 a/z4w/+JBD656uEwQNQ7d2GAURmiDamfu/IihQJeVs/PgiE5Uu2oPvtCLCjcPdAwgl
	 hJCArmFIvNkvUWVC/4eBRYakuQvaFzlk8K0oC5dVPDqPtNSS1uJrYvTrLgXxldXFxg
	 Khvq6rn10RsJlK0yqwLqqCPL8rb6oxEV670ptF3rkruev+ztLH+HyqEy1QVoL+JxqN
	 CHTw43vsCDqk/TieSMvNrXslf1xVkGZCOmxxScpMOzVLB5Eop9HAKIjYj448+e5iau
	 9WufrbGNtreoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C52FC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954119362.30980.13554699475838329419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2606d1013294609103df5c535fc3abd783f6a3529312375f590e24b67afbed59
Date: Tue, 10 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749541193
