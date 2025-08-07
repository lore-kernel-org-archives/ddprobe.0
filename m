Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4B55475E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754609994; cv=none; b=pJEQ5mBp47Z+dj/NA2I27guqb8rED2KY5f/og09HkusMoL28ebO8JLDF9NxxlsC3+k32KPQLsKrSEaSZ/LUfw35fFvhB/Cz3hrzmx/dEdNddNO0hyFuHrJwKAh4elYI+gv5JseCedYDjG9YT0S0vOET/OQBloNxVsxNxtUZ5ToU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754609994; c=relaxed/simple;
	bh=o4QBzDK9+zmjiYQDh6cRj+i4j6SXbUxUc6TZoPxROJY=;
	h=To:Subject:From:Message-Id:Date; b=DBQWf60nSo65Hzhknnq1EaOoDy+nNNnFsv5ra1DFQyGsnS/XJO7xRuya7K9o8DxZygaR2Zje64FsCzxA5IVoTY+dDaLTKxp+baiok6XNvGiIPJu4as1oAefccG0GugFsr6po5VdypWqLhlBStL/AOxspYbS6eCLGXCy9Oc0yaHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQD/Slf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQD/Slf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EF2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754609993;
	bh=o4QBzDK9+zmjiYQDh6cRj+i4j6SXbUxUc6TZoPxROJY=;
	h=To:Subject:From:Date:From;
	b=bQD/Slf6YRISaaQs+sjqDKkJAtepSp47rJSTJINxdXRR7Y6E0+eeT+oorC1DmAWq3
	 nHo9WCw+4f+eU7R/ksbMOdiXbVVdMyplV3FtuKUTM23R7eLdGVpEFDrUiGtJIl7wy4
	 K9BUS1h0ss7GLsb1ZJwhZdIn8t+wWPdXw1hI7X3v3RDb0C+nE3XbOlGqfv/xXZEY/4
	 ac3HUHRKCTsYJF7WkwH+Kz/JKlfnArv1Mvdvc6v2C5lK7e6baRBdk7YyvXkH/qE1aW
	 BqGtoU+mKuOvXWfWoToGbCo0HvQJ2twCiBcOTdwWGvXRRT5cxdoV47FeVguC4yu3FO
	 hu/Q3r3Gj/MGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9558EC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460999359.11479.9618120420034901658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7abb9466041698c382cad6c1a9f7e9a7ab93e4afedfa0b80890e236bbe7e708
Date: Thu, 07 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754609993
