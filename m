Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369B044E037
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786084234; cv=none; b=aDXmtxiTmrLUGbLKbs1iIkCCHVbJ7gP6QmLthFrx16h4Lb5PLo1y9oskYjobKY4pMSNNqH+FpoeBaiMAFYzYP55OHnbCSQrF86IKx8m3QToDwdETGzMHHNFWxoQK96weCbwrK3UO+/DRR+J1dIFi31ue2E9QuU7z5afxibdrdso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786084234; c=relaxed/simple;
	bh=4Sp0ZYG6Fryfcc35WX5fWzdSkuPgU7zcybD415l/C9s=;
	h=To:Subject:From:Message-Id:Date; b=Lu0Xsiei/0NdzqS8bmTB72lSIfMMmjY9gW8ftp0PVOaWB9PwIuuJT4STeh5Di2SpfGpVCJ6ukc3DNBXrjpa7U5mZHlrCZSzSqu6XYbW7d0pZc5M2Iy1LLQdRQBXykNsL10SUoPO+x6AlKf9lj1pm6PwG6eDHDaOUDSMiFdWgRL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tef+yG9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tef+yG9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC9FC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786084233;
	bh=4Sp0ZYG6Fryfcc35WX5fWzdSkuPgU7zcybD415l/C9s=;
	h=To:Subject:From:Date:From;
	b=tef+yG9fS1QMtZDirtggJkmZTEEuGyobHu1iT7odTGXW2h6LeQKUZUYmDvYX+G5j+
	 hAjAnt3e5btz5Cbv4TkN2uYXRfIHY/XPGlH8QE/C5dmobzKXlsCNUnUAvlLVeF1jGK
	 vVZjZdqDp/RQCIWKAZS5JK5CUA/xCTRsxVW975b0tq2iCrwih7W3xknDojIUKMcBha
	 iz01uebQFdD3pGLvT6ip/g5BmM85w+QkKWynFjpNqhd6c9E61kUAbMwDK4V8FqsgoY
	 2M6AdKVDi4aDlPo15YyW9rclDhsvpcWgQY2S5IupKAZpPXeg8Ksg+T/aqZZ+bH5vHG
	 TEvnPmL6UThFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB90C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608423369.18567.17386999867340726473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd77b4e8e355b90d394d3f5453438704dd462cf9a180bc1dee090fd5c436eb3a
Date: Fri, 07 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786084233
