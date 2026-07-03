Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CF7305E10
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783097314; cv=none; b=UpMnjgSO3WXNF1O+UQktxlcF3mE2Q0u2uGt9lYLDvuyK6SluL54qX0KQhqNBNBs6H3rBfp/Y6XHtG0E2ARZhXoacx3LpniblizBri+ZAik4h+B50wQ5iy6R2TmoAcxCq0Ez+56FiaxMoP1JooE5YfiDS+ZlZ/TuawrfUtYJK1WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783097314; c=relaxed/simple;
	bh=nAAhW78eXvBon1uPpiIZBOaq7QijapBlk0shT+ABp1M=;
	h=To:Subject:From:Message-Id:Date; b=gj0CX/Yhb5Y4f0WhP0B5GhQnjl/uracOKqyi+TVlGtuwTpgLiXM5YrsLmAL2fvJZ7wwCTZ6bIYPE12jk3iP2lbNdlKTdaWcq8BIbkGF1n5Fid511QuahGb3oaDhlWbEAskZfngoz20ROW84hHXAbRf90rUhJghOl+dDKZ0C19Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1DsjrUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1DsjrUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD88C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783097313;
	bh=nAAhW78eXvBon1uPpiIZBOaq7QijapBlk0shT+ABp1M=;
	h=To:Subject:From:Date:From;
	b=h1DsjrUjnKgwkt+8VemftewJnu/lBjbY0NHn/AV9KKHZEZgMTwHYE9AFkzTBVZNbG
	 mQHnaaW9amgPEi2REq/jh5htIWklKcY8U4Y+K+VTuCNe6pFTyXp5IbbChPBG2cm3F8
	 JQmfnmc65gRUOM3p3pTTffstEmoGGNh/jx3+buEHkZhbrUp/eRrPiD8v70bKgO6WLQ
	 Ds9ZBzcdMm79IXUdVG3W5wvTd3icnxj49vTxG+r5Q+XNBCUgGJPvsOWed8rk5OaWm9
	 q5c3d72+OfcF7gbrH10oGAEJD/cgNvLCy5EiBjj6zK945JV58zLzeNIYyw7mRbMTBe
	 nSSsxobwKrsgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C74C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309731368.12220.2450893408742393217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d8c8fda61797fc128f374824c72576e0eb559c236ca20d11fcee2666ec99dc
Date: Fri, 03 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783097313
