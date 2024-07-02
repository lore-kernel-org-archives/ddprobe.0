Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36269374F5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719915323; cv=none; b=RXiHLvUWEjxd4X9UoOwnDCgoiKcDE8xASGi4TbKfdd6jH+RZZozjm5sfH5llro+p474Fcgzneo+PlYpHUlRVCw6bC4V48J8fAytpbur2tHd72LPrNjFckaV5/9Pxsn4Gjs0YNjhRCYfRVcDceItUqZ9MsdQn9cmOKGrIG3k++VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719915323; c=relaxed/simple;
	bh=iDc1RvB7g4FviS0X/yQiS2fjEAREte+YBY68DPBsRqE=;
	h=To:Subject:From:Message-Id:Date; b=usU6ZpHZNuJyuC76Z3MAJ2Nm2+bgEdPAuf80BFyHcp36XssOdZP2+NILmWuL6osz28FwU5Y/DeuubgG0nSz31jUFC6OAD+/IrYh9NHRtliwT+ea+nw4n9WHbsragBgW//wL6Z58dC9WfXAx23V2mhRdY2psXWvYgBcBlfTqkW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTnJ6zMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTnJ6zMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0161C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719915322;
	bh=iDc1RvB7g4FviS0X/yQiS2fjEAREte+YBY68DPBsRqE=;
	h=To:Subject:From:Date:From;
	b=XTnJ6zMHpQppdO7Vq1xE3C3y7BIRb6xhKP51fDlZuRmiOPH1EbPwK7HTBXdDFYdc2
	 eXAkcc+6uU8OzzXU2P3snO+83WXPn5p5x+ZJyT98AUokUSWiCDDWpaWRIWzQjGO3wM
	 sWMeFtZvI/UOUepKFGu3pdfoJAiF4wLRnsykpHcyP1pJYJXIRoW19Kw6koiMZevk52
	 0gqkS/V1jSrY+TWv/NX+wuX96USTci/LHOIBg/eLHBjxLTetVP5DpyMnV2BAhg7HZX
	 2AS847629OWtDyUHHFtcdZ8bQOYDZ7FMeAvELZ7rw0AZwz4mWjL+BH5BvnJVqpn4LO
	 fSUo9tsMqdp8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBFFC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991532277.19072.6274446462390079418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c500e2763e6030e26ca708ca5331867e5bdfd50cea7dbdebc5e305e7262a5050
Date: Tue, 02 Jul 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719915322
