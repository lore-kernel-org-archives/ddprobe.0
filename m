Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3896A1A9F9D
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764292374; cv=none; b=gin+BJu881I1CNjCus7tck165sJ3ceWLoPyXRfoV/JTPoQbBe27VohUawHxXju3xWuvewvm740VcKTLPH5g/F1DT5Ekf00huDb2CcugCfhO9H25c3MKjAt5oHU0X6ibGQ8XadkbO0ON/+e9hkgTii2UFEY8nHzXQj8i3RDaNXEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764292374; c=relaxed/simple;
	bh=OrapoXf7CCoBAU8ZF1C3a+OLhsSyI+QwDipFmNKcZnU=;
	h=To:Subject:From:Message-Id:Date; b=YvH0koxBXOMghHTS8hzQeKUSwb32ldI0Bi54O/W5KzGpw85032uCBMMiNdh5/v28VqaeP0VhG96YkUJFATy8Dk8qGL5ZAqiJQxCRJehOH566tv3UUIWJD3iFuOut1pWpD43xs0BX4gNSSq7K1dgyVlv/kTt0b/9EncfxweDIs/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4t9H8OQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4t9H8OQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE69CC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764292373;
	bh=OrapoXf7CCoBAU8ZF1C3a+OLhsSyI+QwDipFmNKcZnU=;
	h=To:Subject:From:Date:From;
	b=W4t9H8OQIH5+e/oaW+s92x1lNICzmAfw4H76gSIpPkH1abkg4NiKe3LEHRIH71lAL
	 We6kBQnn+exV6YZOB416Ox4OWC+WynVdjvD9lL1ZvapxXRmPBu4o1KY8G29sBcIENg
	 NhIm74luvH5CAoIZtaqVnflWUK7nRvqD1kZZnpJKGhTuf7L8SdyWYyA2l4xlgVJ9Kr
	 s6U/sYQoDZQUWqK3LJ4SpTuPV78aSM1d0ZQaYGBymBci9ZGAsY8gdpicPt/+6jzeFy
	 AbyjFp3ukMR8l5ZzdT6EJm+SheyEH39mIHYOlCB5mu1Q6GDE5Z05d9gAyHZonHj9o0
	 uqMOdTVe61VjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D8D111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429237361.18038.2089158859978295405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548dd15b65695f4e8361608ac77610c90bcdcaa95eb95d046c37a78a95154678
Date: Fri, 28 Nov 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764292373
