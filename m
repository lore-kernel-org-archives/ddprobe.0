Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391A41DFDE
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750645194; cv=none; b=Po7ApG38PefRIRDHq7xhdXUpNbNEgtMlWDf9t2z/vDqPiR5yODOdUkcTPu+pNwAP+MI13cq1EHExHCQDSEKkGofYLjr/LKeTlQsleoeX56dSFb+lhkOi23gLvDuiCmQr7Dt3eOFdItl+WRhAe2RRxJB1fqghA2KOiEkeSOgejbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750645194; c=relaxed/simple;
	bh=J0AbcRblL0RF0rQYWvIjoWVvjqU3Tx9wEzD3uS14cEU=;
	h=To:Subject:From:Message-Id:Date; b=bSnPac1xPPqUo6N2rf85TRVjuHRCeh1NBkjUn3Qx5VCCf3pgCVG8IRWs0QqLn+8QSYuWxHAtxV7gL6yopOm4GulYcFdS5ati6w9JKWWryP8rxx7G4zN5DK190oqrFcAxzGfIAmOgukILX2ynYxU+FZeTRXTQ/gxf2DImFnvAqwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkWVAWNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkWVAWNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91D6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750645193;
	bh=J0AbcRblL0RF0rQYWvIjoWVvjqU3Tx9wEzD3uS14cEU=;
	h=To:Subject:From:Date:From;
	b=YkWVAWNoUZuz9RiB54HKs/HVUmY6ShyJCl43Kg71gVOYNC3Q1b82SrfRLIVtspYNz
	 dotYB/F1xb6dx1EcjDG8jBiDmyrmg6m7zYjYfNB8KfhH00ayiebjrH+MJJqamAx6cz
	 DJzOf2aV4lF2NNH39ph9PRyT23mBbDJQfEWj1V+N8iag+xLrQTjbj7GYYpzEumFoYx
	 RwqnLvUVInfpC7EU1Hp4iEo7FMERgpMhqoTo5gsn0OZk6E+eephaak0q7mZkSRDXwL
	 sSyExpNj9NH7z76zIwLpdgMR0zdU+1Q4XB6aSESeZw1dEy6ie6XzS+5djZ/xWUiwgh
	 pv//7JvgDbAYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDCC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064519359.3918.13285641789056105356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec5add6cfb08e1732a7f9427f6e4054573c66b5403a5b48b7e6ed71235b238f
Date: Mon, 23 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750645193
