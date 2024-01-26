Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5982030A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706290697; cv=none; b=C/Z/qJJKLtx00pZq5cf4U9qDMxmhxL61N6xYOYDsbaB/lCTTDt0fGTkR4ginM5fxcy+1wgMP1Nwyg19UoCOgP/2V+hRlLYbveAnwI2D5VVaQuN8lPvIbey/KJbewnyTJUUIZDeu4RlB+jgcocVCHjkCN0TrkEhiNHeO7HHC5Pyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706290697; c=relaxed/simple;
	bh=35WxjbpYA7PTC9nTAHOnb5IXSFsgavkncVq54tOdjf8=;
	h=To:Subject:From:Message-Id:Date; b=JH4G+C0BOucG1gCMkjsIWL9UblVfvhRrGuyNakN0Z2t8ufjy3dA2VziX8AjpKaF/MQr9sum4gKG+Eu2LlquOFbT+73mdZczNpKG1WJ5DveTBhB6M5IQ80c5wBfuJLpigoWq+62pcYy+DBShKBRl24qBwY6UPWpPpobD4HTaSt14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2Y45+51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2Y45+51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE5AC43390
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706290696;
	bh=35WxjbpYA7PTC9nTAHOnb5IXSFsgavkncVq54tOdjf8=;
	h=To:Subject:From:Date:From;
	b=D2Y45+51bo2qOalybiLBfcGtoymhdag2OTiQo/IWqFEIwkm9bc5pdyuepsk3OCa4Q
	 c+ooGFCSc668TEv+wk0UX4gMPo4i8lXt/sze8Z/2u9Cvzd48EKn9OH7gbU98jmE2Qu
	 qjWefYvZeiqsfwfiEhcpSFAa6x4nNguGA+dxjPJCk+VFTY+xJBPbSXUWwW4W7YpKlv
	 q7EZMArjYZMPCM01jRusTm5+eCRhfJa3VfZ9HQke6XKzyCN9UpmB+cbxaYmZxp/VYb
	 70VJm5euVkgRcfQfnPKbGt6js+QQAMICMURFiAtNQ3fCsmlG5u+ntjyUbMoFmB0vgO
	 I2lQjtvmpLZKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9BEC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629069636.27924.3390988131716445854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41e4f83cecbb3a28b814889ce8b9a349f452fabb7fd55c93d6e89903df10e4d
Date: Fri, 26 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706290696
