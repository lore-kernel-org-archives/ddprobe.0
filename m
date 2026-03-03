Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A93D37DEBD
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772510694; cv=none; b=s1uJ4Rc4VS+m3oYCDht6+Coyi6EHIm3FO1bYVE9VCXPOyIcDkMd7R0s4sLUq5vRhSDXJ0QP5lozkIyoT1qkai+5cdF3K48vzVsZcLS53IQAljlkON8TkiFvL2+hkL8eEdV8uo+8XR1IaaLKyc56bgjGx4QSbcmKlyOufgD2HaCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772510694; c=relaxed/simple;
	bh=PqipmT3/WKcYYZSZn5cn9441IlQD42Zm18pKEs5EAOs=;
	h=To:Subject:From:Message-Id:Date; b=U6Voeu0Vhfsp6Q6gk1FNU1fzm8O5z6Yls2XL8sLPuMmdGz/oDTFpO8JqfC6/R28rJnhOP5WAYVNTBAxLWu20w5lEKkJQzLyrQmBVEiJqh6yddoQjptDJrzq91AUASvKFbim2PrciYnkqWEe2twWo7QSLEnJVCGqlo0BiCkK6jGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOBckJif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOBckJif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF214C19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772510693;
	bh=PqipmT3/WKcYYZSZn5cn9441IlQD42Zm18pKEs5EAOs=;
	h=To:Subject:From:Date:From;
	b=VOBckJif/4sWLVHlFslB8a6c2vHX7aJnfbr5tQmrRxX+td1xsF5nP+O/u5Vv2VxCK
	 gU8huQyut89MPrsJxBOanc+PMzXDdxnuY912ToQA/5y6oJOS/6OFdt9+1xEUClbLwn
	 kevNr/CQJil4lwBITEa+sONgo+87MTmpiNd/nvPIJE/nM4NlAuxV5xd5sc1ptR4BRz
	 Q0+nfR9G30+PeVx5XUMuTpl7PNjUbE0GV3ClGhFWgzBMIvfIDzSQ0Tck6smXqaHupS
	 SeGf2C3A0RarpTD3U3c8MytsQ6G+WIaQ39/aHODbfSrcPGTGF/RPQIctoy6wLxlgBi
	 eJ/EyKRZmF/qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93BAEA4E18
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251069367.2063.15129346692708544200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb3c07bf724f8395fba12b92e70058063ff49cc0686c083c4496a4a7572fcc3
Date: Tue, 03 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772510693
