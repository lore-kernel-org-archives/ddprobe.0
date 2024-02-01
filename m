Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87D515CD54
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706788097; cv=none; b=qpsFte9LIb1+HIVjv5mbcmzrt3HX2xEUIrPbmKwZ5Hua92MO32LVCkq7ybegUUeTxTfdd2KIHXT9MWH6NYy6SzzN/tAcCgiuMRqjwifgQV0x9ucHoREnkGmr/OL651S38ijOS3TZo79U7FzRuPIip3YJYv/C4KmtcSPyGY3KjvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706788097; c=relaxed/simple;
	bh=JUkNHOi5SZYWDgFVAW4sm8ngX1cXUtaoopwDp5hS9iQ=;
	h=To:Subject:From:Message-Id:Date; b=P4FEvZc62LRA2Tdw5OBw4c6zBR47/RCg/ifCWiaGAIzt09MI3B9XGay8sb7zJMNNgKdVz92U3U6u0YXzCB+QdMhmlpYRJ5ILijog3kUn9Joy2H+Iid4O6D04CKOWEzuBn+L7ObzdT54MGeE6UoLDy+y9uqtjK86rAU+mFPgNho8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNIr9ohH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNIr9ohH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FDCAC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706788096;
	bh=JUkNHOi5SZYWDgFVAW4sm8ngX1cXUtaoopwDp5hS9iQ=;
	h=To:Subject:From:Date:From;
	b=QNIr9ohHsmTLbhCowr3DrVOU7o6M/jhLQA38E2DFoq4Qo570N0FeMi4TMIBfn9Wu0
	 tvyUbxkLg4k4dIGM2P/nwY8As1ihuCe3dg2o7PtQauouGUe/+WjVkLj+0h6dOyhzNT
	 pAZ0PLb7271RHQ4RwodaFlCba0FDgU6YlpeQbf1OE8rERsDWh6TG454x9dmHasZZmj
	 lA9zMeoH3/kJxVhtGu4RNK7RLE12lMVN4qdDfUtODH0F+1M65y6bl2WOi7eEduQ6yI
	 1z9nZFaUZzq/C70x1sX9BEJQiDyti/KCjy/nBRRFWJEo/7s4eScjNhj/WpX/dLu+8o
	 ha0o7j6NJdPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E28C47DDB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170678809645.30039.2331255253472732848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82285efac331d0fa76e1465ddce741d92047fcc47bfb5a5f4f663c2e5b8b5cfd
Date: Thu, 01 Feb 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706788096
