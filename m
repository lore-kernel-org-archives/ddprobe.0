Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286D24204E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759704595; cv=none; b=KfVfUrenLqeg2k2qfqA3IBuatnNKHcIl/XhPZlzQF07auilE16Fl4hmMii+7TDSB+bz28u9f98cCQ1ppU2+kkqiegrB7gxphlL/UXmAPbbJjKx/Ij2SFJra2qqW53+3N8SCwMMP9Nu5EZU1SXlnzrNK9vN/q8c0fj/7zn6b6jP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759704595; c=relaxed/simple;
	bh=qS8EHSBYd69eUloS8wKNP2mZ4RNDuMCATX5p24Z8Vmo=;
	h=To:Subject:From:Message-Id:Date; b=fIsxd0GIGv9oOoDeUzRncl/AsAlo5s74P7WBFYddpU4Iqw4V4xuL1zjgzzI+A3XYDr2LbKsTYjUVUFj5NNJ1bkMmJhJncAWMY5aoQcZLcMvhf74/6uOn9aFCqV5vNxzsKoSE/mKtX1XyFcYHKZeGZLLBdXoHlCKFW4YzE4jhNro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL580oOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL580oOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B6C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759704593;
	bh=qS8EHSBYd69eUloS8wKNP2mZ4RNDuMCATX5p24Z8Vmo=;
	h=To:Subject:From:Date:From;
	b=VL580oOQtruz6OszSaakhUK7+xy/eVdWzttICqALCGReD7/HH6tHqenVTSQ6kUALG
	 OwkL4LOJ7SswIxCgYMZ+yUoUNwDC75pm+uyKwkZbZ+xZPp/GRvdH99L3UliK+bmOXW
	 EkPtwPwt73ksjbxBNtkEQqypeqT/RpKh8htYTY1lSOEMkUKUihP3nhC49SbSd60DjQ
	 fhp159O0U4T+Q9ONE/gYVBPcWAuU2iIp7A0W2rGm1j2BmnyylHLDyaHVUxCN/MYtXF
	 5EfKY00aRNnB2YGxIJZRlDn/P/G9WqZCxFY8eqIXbH+pHHP2sg3a5+rh75HIYhduCc
	 a7WYfh5mIwJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C4CCA470
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970459357.15511.6794764195339666139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c94540b5089ecb2df09397ed51fc2fdca77b6143c3f3dfa40004497d29f943
Date: Sun, 05 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759704593
