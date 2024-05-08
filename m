Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438A4446C8
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715155343; cv=none; b=kL/tvmwUD4lBIo8otgi0IE26U325vrPo50UjDxaLRB7jkmXDev0x5kd2PLBoLSlONrpkZ/vl1kkQiiREKbu7NUVPXlrMa5EbGAwOCZSleyWGgDd+Mp3+YwGdgKMx/XjFH7l8pZUWPEYKe3Vyr+VDrGKgSnig8F6XyXweaNEOJzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715155343; c=relaxed/simple;
	bh=2CcvHWYo2MXPWZ0NRsfcJb2shjbvei+S8ImkXdmTXiw=;
	h=To:Subject:From:Message-Id:Date; b=ZJ938EN/CmJ3j3OqjGO3EE8X3tJfQB5ueTgTD3C3QgW0yM/27DBeHgBV38iapchSn73vsKdNURxeGhT7+KGXKYOr1VLo0fk7gqX+JzU0iU4pXNFpotam7d3pHa1cXb0cj2gvr5QmM+xJcYp5WimnYxTldsiuEMFBEIxR8W0oQRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igpsbLHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igpsbLHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D691BC4AF17
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715155342;
	bh=2CcvHWYo2MXPWZ0NRsfcJb2shjbvei+S8ImkXdmTXiw=;
	h=To:Subject:From:Date:From;
	b=igpsbLHRqT5AMCGBxga+4qTIyoDxIxWhH8BFCzXjKzIR7AmfA4ckjd9YQO43pGtmW
	 OY0O98CJWYTU5IrxSc67wx7JJdtW9ocF5TyfQaThN98tnNL0k/DaFB4UCEkhy2alwg
	 WpUfazGnhpp0b68LrCWxBzZ+weClN7sS5qkXg7tN0Tpob6MGgWc2KfVYwfb0ykqbSg
	 CwXPVs4LaCABGgHOKqONP+r5GH2+g9uVst7L7BZbTnnr+lFCckLmLuB79O6gc6b/8g
	 l4FLPQqcFikrUTyWAIJAB2I6K4WUWpEj8b2iFoLPiWH7VwB5kAqDeFKDFpQHRP/Wp8
	 Syq0VuvELoojg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C346DC25B74
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515534279.956.7687730534696778660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9adcd9a9ee0201fb4586b5e4a2c4516581b74aec557d028d28b0f513a842127
Date: Wed, 08 May 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715155342
