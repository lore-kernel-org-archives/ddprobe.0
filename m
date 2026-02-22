Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6BB3EBF17
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771776294; cv=none; b=oG9ma3mkFeBviW7zfiGjtByr6u2r2+oEbautfIgd7OPCDn34joStPpncwjLmAiFrSasWR6uyQ34aXoJpr//0JYq/0D8ZXMxSdcZEDqcBEGNG2wXClj9rMGGUbxHHZgsP3a5F4e3jWPj4VMdHga+rmQwG1hhATn4doMyUT6wje7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771776294; c=relaxed/simple;
	bh=71yi/JDgjgt9/nEJc2voyemXxArbBHELm2HeLWMixYs=;
	h=To:Subject:From:Message-Id:Date; b=ratZaCEUI9tGPohyXfWjxYCL39Mo6tOARi883pNq68N1if7iGXizHJx/XLDj+IIi3rHvfAWEKgkzopHBKjUvIASWZPiokrBvy2z1VGw/QuWS7p2QHa6Gcy7T5geXwIyMg4Zecf3kOPLQ+L9Qdbh86PGypTTkkY55IP7mJWTdjiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShgYCvG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShgYCvG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771776293;
	bh=71yi/JDgjgt9/nEJc2voyemXxArbBHELm2HeLWMixYs=;
	h=To:Subject:From:Date:From;
	b=ShgYCvG1O461woGTPYNrHJtue1Dzt6ZhC1zuLwjJ8z68EDovuaHB4dd8mlStlkoW/
	 dSSymzdcvZWBS611BLpowQFB5guyAS04W3CcEWxgahvEW6/gIGhJJ3I0OQe9Q5ywbx
	 c1Q96LvFkqhOsfYN0wQSeD/qlnKzXfERcNqZJ+bcFGQTRsMyWP2TLNhk++dTHJzNWd
	 x0WKPLkUkW2IGXFrn18ZcDMXULuLYbjkOwkGInviz8rq1EZNEy5yhfZgXiCQbW0EJA
	 X5vRozn5RWgOeFn76p0NO2TaMRzHcKjJMxTuiUGEzlDPoDiaucIgXmkLxmhB5birKV
	 +orIdRKh09vog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BF7C61DF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177629359.3131.17072563329754661832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47e4596ab026370bcc488c4846534c289bce7c77687cc55a35bd830b145f106
Date: Sun, 22 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771776293
