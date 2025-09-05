Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D90019343B
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757105394; cv=none; b=s5pKpSjvyq1ygu8lXCGLQQ/FHo+6vgl+xx+Kq1PKvF4gf4jk5UVUaRMBgK1mfnS2gstm8XIeUCjC2X2xVkGI/RtUQfZ0FzbuCiLnMdT1uIz0QmvlIc3wwNDvlAuoahdfhcuAa8y1CfohjgHqJk2uvlP/uQXteDt2D+IoCP9Db8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757105394; c=relaxed/simple;
	bh=PhcZ+qYI0Gbmeox6CuAwrN/FgTawthCmkaju5SgwB5A=;
	h=To:Subject:From:Message-Id:Date; b=bysCmSLTz1dRNKe4ldUXEhYDEuXxYYU6Nvq7z5oV2UGtktSnXPNNri2wYUtoVm6syWFtfzpWTD4+yyfW6OOMlqegkuuVt38z4sr8A43yDGYmsY1iEc6v33f2ZidGsjio73CA1v1kCRgAp39Kt6WtIkt/aL4TPRpdPhCRvos0DwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzM4WhGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzM4WhGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F33EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757105393;
	bh=PhcZ+qYI0Gbmeox6CuAwrN/FgTawthCmkaju5SgwB5A=;
	h=To:Subject:From:Date:From;
	b=qzM4WhGHMobASoxrnXLcA7yjLt2xHuWwL/5a4VN8CoVwoYfogzNw0ERz93d7o3KGN
	 pnR9bwlK3gUS9oa6dN5jgQOKp2eXJdP2G9IaltH3D+fDP5nit5vuB6ya4yapsJhLUe
	 wqiBE3vwhE3fNVjvdNHeveguhoT5IQgmbiZa4n3CYsdVj0BcvimL4y+Polrpw/nNpu
	 DV3dQlQ2ttioFJ+lQdQEbcXMNLwOVqDtMHIoxBHePwfV4iLAzKWo8FSGyS9PLDba1o
	 KG1KJSLAXLzHirO28MjxYDYtPNpU4Mg7ygsfxjagMzQODN/9YGx0tta/lBP12sULQY
	 G88o83vbbI3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74BCA1017
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710539357.14327.10407502429227103115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f444ed8529a59cddabf5e13d1a0d5a01b64ab99208fd072f2ed318942ee0674
Date: Fri, 05 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757105393
