Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E4D364D6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726557354; cv=none; b=qk5uEmAO8DJwOA2JCgCKBf9G0e6LkLOC9II5AvnlGAKH24AdIzQqtnhmXjMZA+BghwOMNyRacAuajgYZmq/R56HR2OTAb9Fl3z7M2wWE2+OeqTueix6TYjFfSZLX7bxFc1DfcrX86kWskbd7WmQGo4aNT66KT35jaRuCqpvR9x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726557354; c=relaxed/simple;
	bh=EeygasIgXybJ9SA0TU0wj/aN2irByk7zjjequk0p6wU=;
	h=To:Subject:From:Message-Id:Date; b=abOFlqEczd8NSlQOo8iJ6oM1obPs12oqNQssE562jTwJITYZnL5VGn3r2MzZ1rSrKrNvuY+35vnMtY2PdOeti5POfdnkRB/OowXARirYOxbRmAqqlGta5irI2M6UyxqGLRicfo56CAHWNQcvbz9aJ1gO3t8MpbFgA8JZ3duKWZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhsDrV+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhsDrV+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE418C4CECE
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726557353;
	bh=EeygasIgXybJ9SA0TU0wj/aN2irByk7zjjequk0p6wU=;
	h=To:Subject:From:Date:From;
	b=XhsDrV+73uNa/EnTryL8iCjRijGrnfrepGmEJ14rTnch2VixE9KETc4MYHZh+N9IE
	 K7n4fY0PCg3D2ap/gAN4Z+YShOWGto2jrgnFBu0FbYfk6UR5Mj7JS1Z7ROU76bTiDO
	 JC3w/EAkIqoyfy0J58mofa1l5X7ouRUYicGdH5QMifivo/Mb17D2ZP1RtJcGtNVEy7
	 0DLbHbIR+Dc6vdbuz1r0Bk/4QqfKNDZ2v39XNgtAstbr6nkdb6z/KbJq22+g8P/Ug2
	 oiHwVFYzqU9QP2DdXV7fDMFfyG9ql/WivJmfIO/OPrrKuJ2fJ5uu1bpqUErnIxD037
	 eXbaWGFflwNvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1FDC35FEB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655735363.21264.8894396504176180151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e77f5cefac2c77c50bfa029513351e1ffad03c40b19035c892adb74f1ad5c7
Date: Tue, 17 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726557353
