Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD2E4A02
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720484783; cv=none; b=KtlIrJg8vrx4PnK/Ty/d5woNtZtdFpa9D07v9TbPtOODC6xSKQxWeKgeMlVkku4HnkAGK19KY/qCQXPAPyPybdN2MdpUdMj/ZQyyiTg3beTZbiBNG1M4DhpP5aPx2yqTaTTDkYoUz2gJiYx0B99Li24vFvinosdGGZhKe0tLDiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720484783; c=relaxed/simple;
	bh=8drEQiezRAhNp+UUiswHKlHn0wiisMUpJU9sQ28okjY=;
	h=To:Subject:From:Message-Id:Date; b=o4gqagtOrGibAyW12iZvzKIRJxttr/NlO2cyxhKhwxny4QJxusFWiPY4R+XUWoIOybOAAngl23LAQEc5TVO+MXiY+jxgkRBpY/KlZ7gwMVh2zHhoG2s0rr0hRzmfofIY31szFEhRjxtaQeqeBq0/qCIT+rE5xxz8Xn+mKNCwyR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F89YAKbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F89YAKbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8071C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720484782;
	bh=8drEQiezRAhNp+UUiswHKlHn0wiisMUpJU9sQ28okjY=;
	h=To:Subject:From:Date:From;
	b=F89YAKbJEsEuRy/5dPkMQ59wTyH9jZbUHp8fggKW6ULd1XLs1uUcRj7SaosjD/dQB
	 0+K+jJU3ACLsALeICpiuv8gPHyFLImka/KnofH28s6jmq1Z5z84GgWB4hVjZoYbLCs
	 J4+m9a2F4hOkzSAWW+LIeB8q/x6u7vgw8CfbiLV61SbK/EI3dwLYnLq1nwoHPA6o88
	 N3Me0ccXepvxlEz+V9SvYZrS/1NdqgqgQYE1T0hRAvqfvCn90A6CKQb2poXYmkm2Qp
	 d5CnV/xKMSMLbkWonUHVMvBXVbCQnkmOg6WkN1JfX5TZxvGK9+1I03HXc2XWnOQMWJ
	 rlUf3b2vXCR5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4961C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048478279.6754.9208409510565459878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2ea8e3e3830f1eec052a419445c16cc4fb0d27c3a30b8eac3120b7f6c62881
Date: Tue, 09 Jul 2024 00:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720484782
