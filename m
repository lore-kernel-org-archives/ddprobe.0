Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4DC368276
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789402234; cv=none; b=IPrKctFCTbWFjb378SNllM3Z8F6XZ8zaWbs8m9l8oKyjzk9aOfu3s3/OxjxZ5ofocnVF0wh6rY24nZeRVZsUVo0NUDOc8eE61aYFGTNMiTyn49GMSU1WNy7LHRgbM9S48Yet3G/dK/Z4LIz7jaxiUpQYpZ9fh/2prEAaZvvMv6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789402234; c=relaxed/simple;
	bh=n7fBikdXz9iB57iju7fM158Q3oJF/rhl0t2Dnw4MwtM=;
	h=To:Subject:From:Message-Id:Date; b=s7l9LF7yCx8pq1q0A4t2BaiUO1pYpdRYn8rDjI8K0MSSKwzACbOmgN9jYAKZy+QjgmOQ3DRas881wUOGLKbfxObpgAqczA4zwlvr4ROVj+YBAqaFIV5j6Pw5hrm9rxgHhdIUcZRFMpdNtK113U+qSzj//hQor7HvFCrXR8QkDVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIrqzmL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIrqzmL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E87C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789402233;
	bh=n7fBikdXz9iB57iju7fM158Q3oJF/rhl0t2Dnw4MwtM=;
	h=To:Subject:From:Date:From;
	b=pIrqzmL/M02SkOisvr/Bo070t/hEauUiWP2viymNXW+htZZ/RfLGADujh3JAr5eaS
	 rWSWckMt8ftooWpD+t2ueYq05j3j3GTIEgcZuso13RQ+J4zXTu6WFiPccUk3WydjZ3
	 ICWi7nTkXn0vgDcsbI+ExXYbbN+vEETZXg5ERdVwMUvtDj4406lFWpF/Odo/5slqy0
	 PCVWb0JnoOIIYcCvN44WEF3UTNuraheAqHPJhyju8hd95NqIzAV9yc4R6nWFKo1wdJ
	 lOGEoLP5St7xvCR6doqqBM+TvnXc74Y460K+uhuOkzU8Y6FArUcmFIlub9y6Ws0SXY
	 MKr0F7o+WrpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC970C88E6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940223369.29165.12231081576850781763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f7baca09bab5c74d8f7b4132c4e8f52afb3a7d835f3cf23af81c17d5234c4d
Date: Mon, 14 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789402233
