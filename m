Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4291221D59F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741693134; cv=none; b=UcPZ/94Sm6aFTIPWSX5s2xu0yd67adFKtLgKUCAn77ySYyu32arV5e4+VGQfL4mRLiioyvdVwaU0Sm6bg+DSBkgwCc7Xqc2srcHT3fVygyPh4TxjfMibacaCHrJrl/E7GT+o9w7PvDliG1xlzq9B1RRMAbFtwYhJ7SO0v33bX8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741693134; c=relaxed/simple;
	bh=Tfp+Dzxgkag7dm4lq6DyQ5OHFWOdpMJIXd68QIDn3ms=;
	h=To:Subject:From:Message-Id:Date; b=aME/GjWa7A/O/nwqdAXz7ZFNEfg+miVFchsJE8vYcI3F3us+eMq1bC/PJmBcvYPC7zAqthho3ymROpS3BMprHTXN0vTulnGiIbNJqZEZDAUXvXYp7LswiJLk4iDoRTrDKNRVtlcwGMBwbhFfIdTUyo16YoF1xjLNRTNVxZ9OW48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXi8ifI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXi8ifI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A9BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741693133;
	bh=Tfp+Dzxgkag7dm4lq6DyQ5OHFWOdpMJIXd68QIDn3ms=;
	h=To:Subject:From:Date:From;
	b=LXi8ifI7KwWUybScHo8HuYdwvn92ui8u2EM4M/CW5xsPA+xhppjYWcaXGgTac5R/F
	 LvsAgRIIEQJpGa4ejnQkRBMc2/BTxwWlgpri6WPGJkFnbhmC5ejVBD+XuAyrKKHVt+
	 sLVIMXnk/uguYRl4kWo3wVVReR7KDV9bMq554wBVHPk4HFqhrg34No08FQnOci4y5R
	 Gf9WneCO01tu8P7Qk245Q48gE5E32ABU++AnGcVlVMuA+o/a7mQIibGgtTSIihlGnd
	 D+IjNFAIsskMnOAJm2oRmTT1JC7nJbpBKB8uWvrRD3wEV9pHjksIoPpJH6yC/3t6SQ
	 XnUC/r/9jVFAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAC8C28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169313362.3397.2339905969649037531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a9b620ca7e7f3b20b786631cc213ff471b170133caa7f7aea03da4e70b1ed0
Date: Tue, 11 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741693133
