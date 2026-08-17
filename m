Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923E025B09E
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786934434; cv=none; b=hXTeu+XrCtusgZzRtMc/Zv//Sn6nhLBPPXEG2shgiXkWWxRNvBaDuKu2wKD6rTW9YsMSo5xoWBlxjrP8YZCXgV3mKo6sJ1Z5i6kd05PsGQZ03Ep7L7Kf//d3PYsNPQRpmuw0o93zpmIHA4YGEgOkKWmlJjweK7H6+GvnMet7IJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786934434; c=relaxed/simple;
	bh=Y7TMxcZl9ENvlzD6f4FyrsNk+6zzboxezCjjBLV0g/U=;
	h=To:Subject:From:Message-Id:Date; b=eWo77j/3UsWJEmXP7pNO/uV5UBox8axO2cHwIo8TfgoWmba+PCwykQbgVJyyuvn68EmL3CagLEvzsuLwLhUBKgsQcaD4NwtSRRVIdnVMITu7m9xxPGOxR2NY0mZ2RYq58ahj3m59pZ102ozlwIXiTbRWqowKyH9wQ30H63m/wEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnU+tJXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnU+tJXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9785C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786934433;
	bh=Y7TMxcZl9ENvlzD6f4FyrsNk+6zzboxezCjjBLV0g/U=;
	h=To:Subject:From:Date:From;
	b=TnU+tJXUryE/l8lyfGQdJmbdxSpDxkDRF41xDpY2M1rAqs6EuVgRVxDHb/b584x5L
	 17XAKIQxTmGEv5xXIhOKl/t7fgu11VoiTiGatoj6L78s3vuknfS9txftc46CBYEvIx
	 Czvv/TxOAaULvZAx5u20FYIufh9DwTNa5zokMhQu6YAS5P57VKS08tClDXZCdEYmBR
	 tW+fivK+KG0nIKQU6ch/8HuShtymP9hwumwz5l9W3Jt3CB/h56PK7sxP9xLym6Jo3P
	 V10KpiK24sC6YcyO0xfh4rwOvpvLgn9mpLwOvTgikBmgNck81bOmRnDV1958uzs3km
	 DZJJ9PR5znwkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1769C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693443371.26339.200672399742535854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57657ea262e07f1511005195dd6ddbe7126c8f2a66f5d4669329589f4ec02b12
Date: Mon, 17 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786934433
