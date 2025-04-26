Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474ED1C36
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745703594; cv=none; b=E8j32i4MkS5j8M+7OaD3meegp4wdJLDpR3cS0EiE02Axd7vm+psp+n9GLp5p0+/cKZhQjBLQxwc4SnKgiXjvBtsJBnhKSj0yo8vgyPBJgoMWUd0jxFBLMs0dl7zeZzh7mXJpD8sPyemYWW9EoWXrR1hsrq4f1TicGPKAZftEQaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745703594; c=relaxed/simple;
	bh=ruMKZ5Ypej/y132P9l2DXxRBFYGpP7MwtNu9cNFT4Bk=;
	h=To:Subject:From:Message-Id:Date; b=YsPXgPsz/Aro8BEzKUMETYMHzIi0XlUmABbR73QOb+g7GEs77LL29LQMoTpNiuSxDvvia3cFEhsl9JT9z23n6pASTWlCcHofz7v2sl3Hn0jr9S/xA6UQt9mHdSc2nokJm9NWHoI+atZ6u4VfLzyX5n2BwQ8jWCaYWfIv+qiIRd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXM4Bn5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXM4Bn5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D76C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745703593;
	bh=ruMKZ5Ypej/y132P9l2DXxRBFYGpP7MwtNu9cNFT4Bk=;
	h=To:Subject:From:Date:From;
	b=IXM4Bn5rfkbV/TcDXTo/GsSY8S6xhEX5pyNY4YlDuRcLrXmsWH46ieIOVguGRviJV
	 BlVG30kke06sCqY8jD43ws66eYTDiK5jlcE5EsnHuMg64G8KqkVEb5AQNU0OX5F3fD
	 +RiqYl3FDs5W5XrxdU6rFfVg2RwLW0S1/fawXTfPrx0q63UIt7iIVPW63kXugT6LVg
	 M1TDZIjN+Ra7MF4lfg3DSrAo5tThTuSzomAzH2gq0cU+1xhXUd5IRMRct0GzHV2D4e
	 rQBq1BT0xTz7HnhkdGUFW4Jf39e3+Kyks1/aEsfeVkZtm6UFJVgZ0N6x6XTkxfHcXS
	 YZoy0wt3uuqdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941AAC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570359357.8188.5716709178967937775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfd9140ec229a6707a78d7c9253836ec19dbd239479d76be40a5e6faf786f19
Date: Sat, 26 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745703593
