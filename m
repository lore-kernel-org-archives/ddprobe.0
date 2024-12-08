Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8E5139566
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733664954; cv=none; b=AbCROT8y/Gs2nQ0z31iVoF9N1gBdBKB/ijkRKwawEpdhWoAX+35hRXp4loGtWCLJYE4Y/MiLNh0zjwEmDtZCAnSYLIpyxKRuSlgMbqQziR4NrTL9oP8g2DiUa/vf4RtD85N/x0syfr01Tca5K0OFldo9sUe0K9q2HNLW+XOHbzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733664954; c=relaxed/simple;
	bh=/+mXSomO9wzYfKltrFG5z6wDVGVV25kyp/E7LxBXuqw=;
	h=To:Subject:From:Message-Id:Date; b=PPD70Py2Dacp4SkNhSDDqh6EN60JX0lbMu4r42Q0P+4D6r/zIpx/+Il/F5pMjY75oPim0KxoOQlwWAr/0wvUYz4o2Y7qHnrHsSFz1KiLYuci7Zy+bIkxWwFBCdffKnf/2Uhu7Nc8IWnnuYDe05hn3ZvkrDMNJLRbW0YPQCW/NNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alvv0/77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alvv0/77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF13C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733664953;
	bh=/+mXSomO9wzYfKltrFG5z6wDVGVV25kyp/E7LxBXuqw=;
	h=To:Subject:From:Date:From;
	b=alvv0/77UtwtFWEP29xNrXDpmCLQaWYBhdZ/MXHf+ujwtYej0E87hoXF6se62WubV
	 1KQNEp6Fwq7JsZq2meoDniIc21AFXBrf4ORc2ELzEG0ZuAhoSJMjs18IgrODz26xOG
	 xfo8bS/QkBl2UIFsM2FzcTX6OPBIBgbOvnq0rrM4RTl8PGeicEbLYNCmegQKttEDdt
	 52jqv1dJg9ENQm2gPf0HVNQF2pZhpJRUDPiEtSSfyb8xq2iJIZ7Wq/Ac8e0q+6iCwo
	 HLOSKCblhkoDrL/9oYXQUAaNEO2yV1+A606VouIVhVlEB4udiTHVU52QWJKc7m6vKV
	 LNDNoU38il0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A856AE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173366495363.14711.11063673177044179652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a281f580f04cb01344089acb739c60ac81cafe552a3d2e43aebe7357b3550b0f
Date: Sun, 08 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733664953
