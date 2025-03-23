Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A98616B3A1
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742732394; cv=none; b=BIMNBcwttGdB5HezpIyG3URQv9ILcZpeEXrQnvpguJBszJUpWbuci8f/HOpkCIh3QRd5SJToYzSE4g3ZDsvU1ZB6BoVUfCaDM9Vww22mX5jMmmsF84ZFaGblLNEqeFIPkFBYayeQG3UrLXsWpiggjGMyQTH9IM/JsIUyHJ4Lch4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742732394; c=relaxed/simple;
	bh=KscZycgsY2rijucuwtzC9UfY7XWS20bWJBkmg9OT49Q=;
	h=To:Subject:From:Message-Id:Date; b=oTtkGedVUvTPDDi7P0NZEByHwQPXmEvKrov8O8UrJ+3D3p8NLmbRp1xFeS4BsUxtP73xbv1BQCZEoUpzuyWZ4JnSOct8SGm2cv+3S7XVC3B0I59weyunty1QIEkSg14SJ17o4kXtxanQWrZNBiQlaFSsynZxxfQ+xzcxPLNzpTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aq84ANPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aq84ANPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DA5C4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742732393;
	bh=KscZycgsY2rijucuwtzC9UfY7XWS20bWJBkmg9OT49Q=;
	h=To:Subject:From:Date:From;
	b=Aq84ANPfB8z6X3bQSRH2XqxlIsYR0fX/l1BZdcBHBjX1nY5ic9A1uqaGubHt2O4Pw
	 G0KPl1hMvpFU584Y3GhA41ldOMBrQYW0oiIuD8x8Hr0xyF8VXemGrw3aOCjk/4oN+5
	 +jUP8Sc0ifg4Bkf4IPCy6pgsz3+6uC6GWx8Xjw1rIVHDpDIktGCEeewVVahRjWB1SK
	 mTlqhNvFsWyFQxhzR9E7lW0qASnTp7/Sm3DBqZeRRNdHPCkcV2xgkrNnXhOUFgK9QI
	 iG6spnfNhavttblHZXt0DB1+aLFVgrsPIUyOEStyYpfXAA2oafM3uOFHp+vRb3k6Bb
	 yXi/mALKNdtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92926C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273239358.661.13276865571076178469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074045cd2220a5bc97d8e7e4d9957daf9b3fe934f8733862c7eeb9765f6a3afa
Date: Sun, 23 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742732393
