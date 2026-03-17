Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1344437EFE1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773771294; cv=none; b=nHZdsTw1327MAOaivhRiYQJkhHAygp8Z10m+lfcPOPEBi6otrOe8JHhwrBavw8CRYTi54mAlnysJbTB4zx/XCk64hR0YHPC8R0sIpw4su3mhpJrAvvtKc1yb0Rwp1RKF8erhDOObUjenfSagU/VzZxfwF4fLW5VWnOdvAqUllO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773771294; c=relaxed/simple;
	bh=bNTAj2x019GboCuzSMUVv7dZ3X2EV00sUrQI2eHzZRM=;
	h=To:Subject:From:Message-Id:Date; b=EzPcNzklruY1i8y7UvFlPQvgTWdSfkLLgcu7tKTRzAPXTeo23pEo/1tn1UsP26ZdLcMRmLmYvRqST0QQSeae5wVJYm/TklCRc/pHncOPbCPgZqkH4XvD6XnxduinHMT0w45EnMcAFAhr3yaMVz0F9hs6yGAvSWLK8Q/EnR9IzuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhkQFl3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhkQFl3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6565C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773771293;
	bh=bNTAj2x019GboCuzSMUVv7dZ3X2EV00sUrQI2eHzZRM=;
	h=To:Subject:From:Date:From;
	b=AhkQFl3bPCy0UY4tn11OfA9hwp57SxTw1N2WPhpiSSB4FEYF+AB75AhKQM8h6z33G
	 zBZ9/7LeEFhyn0SCIl6WVryG22TtQhjqwnqKMZdICNaHxg01J6wxG4gYtJZPfdyP63
	 01LmOKnuikfuUnFnQE4uICQswAN3ZaNYykBFYIDXCqsZWJzu7O46Ii22CrcOr5z7tg
	 utcaLEblN/wXM857IT+WB24nKoYmln2iuuqh29hmSxv0D6gh1Qll5bXa7v1tzhO9jl
	 nwGmExt2DYBNtbK+mzG4R36gZF/ddcFdxtIz1hZ4AhIEwj4yx8utXp7NxpLAI/Ty5d
	 rn9sPfqfiQzdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A6FEDA02
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377129358.26560.5620184011430060860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e945b339a4cae92eed83ff5638832473a0342eecbd03b172633dbef4b3b9e10
Date: Tue, 17 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773771293
