Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAAF1F78E6
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751351394; cv=none; b=i/3aOLYeUtZ5ngoeu3rgMzwfR3R/yCcesUOQwyAzbXEetQCy2AUEEdy2lJT3GDaohxMsggAyhO2NVUowg4Hlx+J8jorYGMqt/rIhK1LEWV5SwvZNMliie6VW8NkjjbKTOE5/JZR4b9mZet8llyT7oTGM7xr38sgOxa5vzL6OhA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751351394; c=relaxed/simple;
	bh=+e9G/tHf8MimtlKubvVu43iuLR/bnadv055Pujl05ik=;
	h=To:Subject:From:Message-Id:Date; b=RmHonbGPzqFgBlDiaynBGWUJO4nm0VvGO978hpMb2vbRc/0rDm4suWA/0FGjIk76MkWjRcSVs1AEZr1B4S0HYEXSW/MgJNXhpsvtAIfbm3Qwr73zMG7IZOg+hLlQCWUaqAhEKyWDgPr/XK+/Hew67Ba2oyQde8ibABMVnjaezNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+nJVxeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+nJVxeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EECAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751351393;
	bh=+e9G/tHf8MimtlKubvVu43iuLR/bnadv055Pujl05ik=;
	h=To:Subject:From:Date:From;
	b=G+nJVxeO8kgelxhOxfGJPk7BV4pzYMO5MmkIQQbExaYvA7dFqq1lM6NsGea2r+N4W
	 AvBfwC3jcIFDmA3zNm8hI8dNaDAUJ187/D7bLeyTL59/yTidJMfJU4A9k32+GrI9Js
	 Px7sCofepSzKph833yThYgCO48KsQGmqb6sIDPe7w+QBtthBLnYPOUtPwPqNF3TPA8
	 O1xdoYKIbR5v9no2KaZutK9bYqvuLD/G6IsSH4Em+5TcjwR2F6+cvhpUcYWEHnbWyV
	 8kawD3oDXqBrY72Q3AqhmNy5jFo9QBY9oC8ofoaAOSC49l4wqzzsBYQEQtlD+HtOdj
	 0PFNp4zDCpu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135139358.17501.2337432929527190479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ae019a216e8739692ec9efe961512b4a7f4f7c1fbe9506c1249d4a21f9d440
Date: Tue, 01 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751351393
