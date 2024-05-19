Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC52335C7
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716162143; cv=none; b=RWL3KbIEOP8c17nx0xGeaDbyuhs6zUAIxJgl9C7/7a+2tgxLHb3dVfeRtZLMAT0CRcLuP4mQ6pOekpgFq17yVGmn+V6XVfzbG8z3c5GYghlAAp1Ra3QxF/Bj/ECwpHBJ/6ijydPtadfxoMO6PLv6eu3Sd7oQsGqCyKJ2RX2L4EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716162143; c=relaxed/simple;
	bh=/ELW5RGBiAKT+nGjcfb1o58sIwAjWMY1jLCvgxbiT38=;
	h=To:Subject:From:Message-Id:Date; b=IcjHE0mCQXMd8uidS/556Ih4bf5KiI0HziOQOuhr6mlXnAzmX1DhZdC1J9+aT0BQehWLJakAEIS8hH3yPwR/v+3HWFXvI8WzHPz8C0HPpeZYz2kBaLphBiGuTLd+cyZRB1165gXvBwIPtn+b54Ls1Fo2KZ+sliIQPQiWeJdzHgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olY68iPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olY68iPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE90CC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716162142;
	bh=/ELW5RGBiAKT+nGjcfb1o58sIwAjWMY1jLCvgxbiT38=;
	h=To:Subject:From:Date:From;
	b=olY68iPipD/scKJkHMEEcqR5GF2V9+7sfFhOJXG1iTBTb5G4/qMTgtv5KXRtE02zt
	 etBcP48arV+Vj+BHrVEyPNUTZA0NSzWOC96V+grZFESft4ndzrDCCf22VnAGsgTdjP
	 CyTlFGTlTnMGBvf6qzmfp9XNF8F9PFO7UecQoQ8WWrZNo7In5pFyBWs46ldeyMdSqC
	 LkspcbZzM0k52lprnu5BqSZk2VYstLmovwnzPKXr+P5rhzlNfa4kqC0EUrZjBVfXN5
	 n3G7xw28swl/WU80uMhhehsFhRnlqib48sKGzMfoYcFACwH6htaXn+gFbC/v1jwRAc
	 d2JC/ondZXHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB70CC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171616214279.15334.9249856623641042585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01d12c8af1d3a8b67e3e4d4355d22518ed94b5046dbd8840a8c5c1b5c36f5c1
Date: Sun, 19 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716162142
