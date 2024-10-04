Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E0A15535B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728042953; cv=none; b=NfO9/+algQmFYhbMZayaS4HsURsxV/mwpjsdQDupkgnoCsWCnFh9BBeNkLrQbHR4efvg1Z6GDd8GQdpeuEEaU+siC0IY3SuwOGNPs8sBTYIEu/fa570LRioau2MN4N/qvKlKbC284kgrcX3CcJ9GKEHaVrUio0YZilixPFL5O2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728042953; c=relaxed/simple;
	bh=U+u3sdLrHzaeWzdKRfPjxZFAxtnmjj7exxF5H4zA8BM=;
	h=To:Subject:From:Message-Id:Date; b=DqHisB/I7s1SnIobQ7COvoOYrmt/yeOBVrnPnGMSiPHGdEvItacJcybxEk+aYnNR7eViWP7vtuhOYgurLVfdecZ/RpCAyndOyS/k6s2torhDNKchlh1rwblyRcN/qBB2Y61sT1VKAfT2eQ1iYHXx1kQXQ4bvGIvofhODkiy/v6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAUmzJhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAUmzJhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD091C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728042953;
	bh=U+u3sdLrHzaeWzdKRfPjxZFAxtnmjj7exxF5H4zA8BM=;
	h=To:Subject:From:Date:From;
	b=QAUmzJhQ2Z2pg8gff2wpjdSBJqhMqDCkvnBvvuTSjHV+18d3yHbopMBFlG3mpaJIa
	 zRxxxDNu9fsTuCbXVJwya4shYAlUIlIkGkwna891RJVhkqb79uWejvO8GYYKbI/4Y0
	 3X0stizZGdZETNAvh7XBZS+VzZtj9KYRiv4puemfE0FUEiwSJtIznd35HAlED9bqfK
	 2GqUvI8eEl3bEuTLO0Deo3x7+cSnz7SHHyN1btUZ2D1CBq9fr6IBP9wjdur49bcBbd
	 J1pLFfypWWbS7bBeQd+Ir6ifcsouZSVGSkHgJfw0QLU6f9T3f7kj7V3g4U2HnhGSEz
	 wEGo/xQQLSbFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98823CFA76F
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804295360.18577.13019403715702714162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67ceda6c6278ff5c9adc4ba0484b467bce0a42fa123396914c9dbcb3cb30d7f
Date: Fri, 04 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728042953
