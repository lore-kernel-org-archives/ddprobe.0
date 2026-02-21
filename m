Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DF027AC54
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771649094; cv=none; b=iZ5sjiWeTu2GCi9nP0L6KqC1GhcG8C0KKvSn1As7erlh5RgqT4JGDlMEz4Q40qp3zwS0GHgiw3cUq2ROyaRgfHy+9MbptZwpwyAPfkn6XT6J6k5nPHtZMCLh6XyEtqeb/4fsjwTqt6yQpm8m7fXAyUIwRECv0YUyY9Ld/s5HG7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771649094; c=relaxed/simple;
	bh=vBpkrfEY+otwf8NBXXkd4qTkJVtFYayCs7T9oc5HaE8=;
	h=To:Subject:From:Message-Id:Date; b=nE+zVe3fwATd1aNLABBEkxZcMLWTOCpxcAHV+V+wn50gdITICk1KNJxfm1NL++NHisEO7dFMDdI+jgnLG3WNDR7jmR/bnqSVYcEdLTDqaFOieCNzMjbTsodC73/Uk92XUWxvtRuYUnQozH9qko825EgYFoeu8o8x6veqtBnH3yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxNgokat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxNgokat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1713C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771649093;
	bh=vBpkrfEY+otwf8NBXXkd4qTkJVtFYayCs7T9oc5HaE8=;
	h=To:Subject:From:Date:From;
	b=gxNgokatoAT8rhmZoFS/5sIbjRLE6U8JYdFiw0iY204p5xGt1pUi+GKxDZHyfG9Iv
	 1iayBp6NwpUZwEHpvvMttPB6qrxjRReOHRO0753WomkLqVYGhSxn3BsFxeEMQo1Cq9
	 UWyg3AUn1d3o2Gv98yywH4YwlMKaVrCD7Y4spg7oWxXHQ7VJ0J5s9rVzmq2lSuFWU+
	 9m/8efACC4V+3xSHLPArEG1YD1cl1pxUFDtMwi4qhSWw0Wx51IPuKg1N71kR8oHEyj
	 NyZUX0O5xeosYp9vT9SEv+Yv0veJgh9zJJqmTvCV7RrXOeVgV7TafR7GOdEzXDgBDL
	 Z8DPmooWRT0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B35BC5CFED
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164909359.22780.5520344132865328606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda03fb4ffe02c572f1e58089d89050055ad819b6254180839570b12ad31577e
Date: Sat, 21 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771649093
