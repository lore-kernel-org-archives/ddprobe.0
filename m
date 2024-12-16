Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443D41B87F9
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734387354; cv=none; b=VKsxZtwSTuqtPAUWKMT/Wz1VoTEvxLxmaEz2H+zaOp+RTlqZakuF1QaZ9x/7VzQ0ohv89ARkto2US19baSjBaEZ08k+FCo8DYv2d8+uDv7CutqDjUiSAkYRDWCQVNnvsqTiDgEpEOKbJKElWoCjph++ZWzFOnO13oPvQeL8ns7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734387354; c=relaxed/simple;
	bh=RJnZtk8D0RSwbdPX/kEQfXsgp6qVfdkZZabdq38EMss=;
	h=To:Subject:From:Message-Id:Date; b=JpW+xHBKxBGc2KDiU4vQAXuq2QMdRTVegqXATPD+pH+XyAF6DuCsm6Vw+YeZI4eQqTaryXeXs3IziK0MdvAH9rmGVJHZ7LOGMSb4uIxRhcSaHSsmF6q6CRs+oHvK6ukUFS3LAnCxuaoq9T3TN/RwjEDmm5/x5qt7pZLpMbkmVts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYI+IGvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYI+IGvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D4BC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734387353;
	bh=RJnZtk8D0RSwbdPX/kEQfXsgp6qVfdkZZabdq38EMss=;
	h=To:Subject:From:Date:From;
	b=gYI+IGvpRJJtg4uHOO5R/b/kjDEDcHvBwt92lgDspY662HCih047Ma7oBf9oKaqy6
	 cMaTOm9mGpEVJJ8Dme07wucoOHMK/uGd38xakfUSfe/RLv+Npfkna1fOg5u9og/wgY
	 gOz2+oSt32W0gq1lD7wJElXljqOMimIzm1w7v1rKTUsqUKC0u8qLC/QtMbLFOpiM2l
	 A9FMpHC3ZDt13ep8u23fuPfrw67QOkA4avgak8ziBPx5DEYdlLlLV0ubxMvvgT160L
	 4pT2vfG8w2rfthCkB1xfhj5OtcnmrhPZ7jpp4m6sI3FyYYg8MM2uAU3UcPwaJTYFpl
	 /gvzwB8Kif6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E895E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438735364.28766.4549691956562364248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509eb6a45222eeb9ba70be915228aa3667300836a021e1d01895006fa5411fd7
Date: Mon, 16 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734387353
