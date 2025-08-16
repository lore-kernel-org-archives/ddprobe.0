Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F74A27453
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755328194; cv=none; b=KTfkmR/JmdVOVEO2hRUpr7Pcq5RZrp04jxdflHLRd6tO0QYBuV9awyU86x0Wens+26MZl1GZYC9LfEQdzytZgGFCZhoNDSkDMiDicNvHYKWZB6Zmtkiob4AjlerDZcNjT42twO5uBnFPngia2vV+fhrykku6aUbT9IuXO73xkYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755328194; c=relaxed/simple;
	bh=+7H79sEGoJFmuOpR23qgQX12K2miUXi3OdGiF9qSFxw=;
	h=To:Subject:From:Message-Id:Date; b=d3bvh0gu6m9STyblHGQl6SzTo71zlsF4Ds8yP4Lwrf5OgM26Q2ou5Mv5DGufnlaodDvLDlcBXi0MLd09TyuiWW1UqCaNTIIvZFSBs+Z1Gb2DXZ8mOYsP0ZKvOTUMKBQZUjiPqwZkA8ytLONA5UffYIfaTelUkXN0WtnKeAxZm0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcCjDIkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcCjDIkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7B3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755328193;
	bh=+7H79sEGoJFmuOpR23qgQX12K2miUXi3OdGiF9qSFxw=;
	h=To:Subject:From:Date:From;
	b=rcCjDIkrl0Ci7wESz/pRp01r6GgRGFZlZWuQS1da3CytHRyQkLHXJGpUYd6glBWIZ
	 j7/qaEsGAAYGSS+BSOy5aij61twxQ2vHmYFewCPVOWXySb9L/Ez+KNxDhYlJBHuP+M
	 J/Tzwk/9WVP6UpLusfiUJGjH3R8dIk1Kzmt3f5+7E2oDaiEOvowvIFfHjaO+mY/QOm
	 TNw1uhZcucVtCbvbHfjOcmww/o5cXO7iWP9u8qfkJlGT9pet1tBl8psfWHc33rDBj1
	 LwEvEwnCO5XCv/uS43FyA/6xsaV9XaJq9sFq8m/ednCr18ru05G8xtWT21XFEden1p
	 oHDJnmqWOx9rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD4CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532819357.26078.200485306878732648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb7ba19af953722d93b1032824a25f4f503598531b32ab92d93b9df1a9c312e
Date: Sat, 16 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755328193
