Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C91A86341
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772669694; cv=none; b=crhQTDvd8jc+ZcMUkvwZUJoNzSEddrRoCRUK9kboF/66scWFD5a7O0/32uc2D68CO1N01CVSm3QeotAV6m3Lh8WxVa3U7zD91Nk8OeZQI0sBkDAuIwAHtF7xIbXLGMjQQYeuC+tgPHv6qcn7bAqjGDc1fRiD71G0dxCOI2/K4PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772669694; c=relaxed/simple;
	bh=9SUaqUafEMuVAd9W8/h4ouGIg2TYwFYQ4Avs0FsVqoo=;
	h=To:Subject:From:Message-Id:Date; b=Ffu0drfbnZ1zcYX0wE0ndKqbFXuou0qdYPEtdQuJAZuCYbM874gtUT6Wr2rwMIrqHaFzAFX/KeZPz2bX+P2SOpNOZGbMPF0iGXou+9sAXQWjeJioFh+xz2R2XGiSFVvwdkUz2cbYi5zEcHzjgKTj9IdmMY3hG2hoWXV55vvDG18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkvwY5vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkvwY5vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6149C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772669693;
	bh=9SUaqUafEMuVAd9W8/h4ouGIg2TYwFYQ4Avs0FsVqoo=;
	h=To:Subject:From:Date:From;
	b=VkvwY5vM9IM45QZ2ug8OD5kRD3Gf2cAe3HTFNpU9obk6ImfJ1WG789Rb8Ba5O9fzg
	 6r+BIOwB6FNwSZ07huaxYU0Lgm83rhUWJ4ak8tOpCpYGzaUr6zD2GDGokWIDYdm7iB
	 Gwj3tlORwHdAFUuFytLEXrUjemL/kARX4Ibwl59K93g1Tl+unwcBfk9IEqDEo0m3MJ
	 FrgzHjErCM6iWDFJBXksnn8/A2+uY1mQfkF/GR0LUWaPzfrz7IVyXW13An5UtOOeyn
	 G7hlIKik2LUZFRjxu9/upp2gCdIHdkwYvdS1y3hOSTrhSgpfMhXsKyZUULs/NhmvKP
	 We3w57ZNmIL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95751EFCE4D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266969358.32132.16513210775761958307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e323a5261fb632e44c2f99eca9a05ba21c87251350e6822f8b51ea3ad8e9973
Date: Thu, 05 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772669693
