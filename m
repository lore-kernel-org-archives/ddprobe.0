Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334CF1E5B63
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759252194; cv=none; b=Jp3Yx46+6c5uDOUNtBvSe2gV9iBJJmH/Z8ONGFT6ACazFeEaEqNThbpHyDm0GalpGW3hSBSFNNcXBKS0VsG8HlxpDmO/iYkGaTi8h7ONhpMavFp/mEpNC7lFGxOvnxYQcCavr6T81572+6wMjVdY6pFZHUSP/KhZ15kjAo+4rPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759252194; c=relaxed/simple;
	bh=UFAqxXO6H89SzV04tvEprUzPPUjDi9XwR7fiPlyoCWg=;
	h=To:Subject:From:Message-Id:Date; b=nUDD+TzT3BgU7wWy4oeVYy+hCBgSxVn9PATkagvexM1o/uMx1FuSYo9xTsQ1EXyl1sZphC/wcBEyt94o6wCNvFoA2+hnbxoPL/epnBoaWZhherLiMI0M0CWnvsDFAAJ1UorqKHtw4p9y5P24mc4i1fXKDfqWxo18sYmhfvHbnE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPOT6AoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPOT6AoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5190C116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759252193;
	bh=UFAqxXO6H89SzV04tvEprUzPPUjDi9XwR7fiPlyoCWg=;
	h=To:Subject:From:Date:From;
	b=HPOT6AoZSmBKr5kTp7Ulm1cCxFFaVh2rHrRnNBNChswYRNWXuCENy83ZR8St2R+8v
	 mk05b4sdTfVVMfo24M9pj5Zj/iQvddPaxpUYIcZW/M861bFxSkjgPKOlbCiq0hcW/q
	 Ynt/uJXDaOMl7Qd6Wby/ZrTTDX3XLTHgshHcDvSaWwv9wl04ImiCpztfuC+XeulnBw
	 u586LEC5b5/vUlvBKrVllluLMlhwF3TPoDnQTq/0XKE5mSbs/BqkHxMu775O2TNfMS
	 UOsuPIAMJALo95yt32cxhZPdf574UDO/LwwyNhBXC3KpJmcGWqCcdd2P4MUecfNZ4z
	 5G0F5qMO7FU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3EACCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925219360.4786.13181715166197317137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f5009e271640615be82999679fb17c266e76949524783f5d75a2bfdf7602c8
Date: Tue, 30 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759252193
