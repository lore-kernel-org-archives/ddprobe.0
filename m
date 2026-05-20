Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B4F24293C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779262234; cv=none; b=Gxth4YxdUVAnEFzJTPZE9VJMNH28Oj9cLw/74UeZt+///wvL9ytvzd/5RwN5LAmc+DnJjIylt2lGPU9yR8TEJicOMKkFb5EuTzesrXysW10cHq8G0BSRua203l1sIuR1wU67XFRprFUcr2NwnTsqqUAAgAVewn7inVkLd9FkcgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779262234; c=relaxed/simple;
	bh=cexjxP5ahv1EzDt6awv1xVA0jdcK7DtIDxrVasAxPqw=;
	h=To:Subject:From:Message-Id:Date; b=lVsmESKm1tu2fEKgLeq/x/bAEFTL7ziLxCrKwgt7AOuObMaChCZFeUycUvEkkezctNFNDbf3kcSU8tgttB1rOEShQITUfNesjUEPDQgGvy6ojbxnye27BWgjI+rjye2s19MgZkgg9gc3uNsLuqiEx3HNSysBqdirjbv5SDzIoYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It+e3788; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It+e3788"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49CDC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779262233;
	bh=cexjxP5ahv1EzDt6awv1xVA0jdcK7DtIDxrVasAxPqw=;
	h=To:Subject:From:Date:From;
	b=It+e37884SNlJFNh/DvDiL2jJeHDVFzpmrI6FHVETU+KBItK/nG1Grfckuf0xqp7P
	 WOwHwniiRAOY78SJMLBXHByiytMFLshFMiR7cpT8Xai1eP87LjXXTXatTd5M3HE+UW
	 vILiMGt5EfdbHBmxfsls9L12zl8Lg/4wTZkFObDQVtZwJBPl720uW3ZETrw7Dak07U
	 wbcO0+mqS789AhZzzW+ilUNeW41McbX8yq9Wx5ZglEhI9ARPQssYFVMRBbLJWwyAhb
	 cw/gjLevIxEg1m79vg+mBRD5kTL7hq3MGI46nS3PsArZEIRvmVOMctU3SmaTp29cea
	 UDqVh6wT63wjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA456CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926223368.11217.7310490317228184488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9535b1b832e68915176228d0882568eb864767656f57a322f55846136509b413
Date: Wed, 20 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779262233
