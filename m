Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D962274FD1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782403054; cv=none; b=ncIEn2brZEHTC/wz81TDAWqsE3tVPIxlwxcmG2HlLWx9SQkAMGBzp0ABUzSd2mVMmBzoB1i7dovIz/wzTZw03Dwl5EzVzJExtwEgLVJp75GaCmwRDIk9wXF6w7PbHrzqsHq4nN4qCKXsnP1vl6jRnsi3H6WmvTT+K3ZXiCisxSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782403054; c=relaxed/simple;
	bh=n58MFp1KxNa1zsWF08c673VwyDSsY/Az8zCRszjWHI4=;
	h=To:Subject:From:Message-Id:Date; b=KtEulAO300IMCIw7HRN9DRzyGxnip6Fh3KCHjuZWXyhkmvXkNyq/YGgJ2VlzKRIBiM0b0weNywWnjV9DX833unNk/SBnceNM644u7E5usszedRzpQS9tyK5C3yP/Btvt3+PlWjOyS3kRhbB068pdxnS32Klc046dnxhkUnmRGI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RATKsc34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RATKsc34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA518C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782403053;
	bh=n58MFp1KxNa1zsWF08c673VwyDSsY/Az8zCRszjWHI4=;
	h=To:Subject:From:Date:From;
	b=RATKsc34Yzv9iGtAbDRuVGZfdDWdrubAmugnEljWEqpi+MgOMV65kHRlZempczLXS
	 StsV8rYHZM7tAecXhwztDKHxZqRmf75LF5Ar5Pe/iXDg6TrhvQSuf3A8maFAFL0H++
	 mZn95Wq0bln4WR3R1+HjqC74f4AItD6b8N0juwufVLbjAo4CYT40/7QQJ6a3GOpSYW
	 QkpC6d1DaDKb1PEjjk4N0khXO50xe69aXC9R3+WQyBBnhLNwnbIQNGBzznN1/QZ4ya
	 qgG7u6SDICjR7eD3Xy3O8Sz38goyezkIgFvGmCY7RCiVTUfHEsB5AyKrHz6IViCWB5
	 wnmMRPZhuDeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9833CDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240305374.24935.9979125235656880034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85477b82a3fe041bc9340e4b24bae4f6fa1cb34dd9f3f469f5707e243d0945ef
Date: Thu, 25 Jun 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782403053
