Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BD938F947
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746914; cv=none; b=bK2gTbsluXIA4UCtOTJYtxHErbAchw0s5MUKokeSc1SMNLM5k5GvRVrLtNrfbKOGFCk0NYmWcmrPOd0by3TpZMjpQtkH5zj90wWLgJiMkQl3DiTtbi3DQoR++Zm6jhrxUz8s5/B4UNwgpLbe+qJ8g9vwQedYFO0qavUppzulxQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746914; c=relaxed/simple;
	bh=heBoRtiOUuAdHWqTRkmj51mKRMin0iaCIaY3mku0j4o=;
	h=To:Subject:From:Message-Id:Date; b=iCFKxE0GGAinJ/kwWjErdmgvKB6/Oz/p1wEVNB/7cRY3ltJmjcZU3iLokcMlXRA4lz9zTwMKsLwrIX+S0ZlkY5C7YzQ0kpVH2eLcSh/HQS9l8Y5fgDRXYKa5kAattkhogsBetXaOlR3oQrJvIos1Nas7uEPwbKgXtO+T+LN8M+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyLO9829; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyLO9829"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2335C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782746913;
	bh=heBoRtiOUuAdHWqTRkmj51mKRMin0iaCIaY3mku0j4o=;
	h=To:Subject:From:Date:From;
	b=GyLO9829AjUzWTC18JCBs8F8dSdto/pAVXPbwn6inoEHUo0wZy+WZRNv2eKwbBxo4
	 eLXjwK0i7zSTaf2UdfpDtpJvyXKbzHJyK2pG62dZEvSt0rRzwoMROoX3cgHprIFGQt
	 yLgnvGR10tACbOTiMnlbELKM4a7fxoRfov5DIgjYeQcIBwiApMzA1jqfchx+/kCI6k
	 KRy4q/Gvm3O8C4a7O5GxNmueKplPiJexqPirPufH5j2gJSMvUvSZSXXDTkC20ezQu1
	 e6YIVZdG9qoHcpwfcniJA6cEHX6ycUHArHwsG4ZGBnbgkC5ntUC2T+yoyBFyeyfObf
	 DJdLjPtH+MfOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD77C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274691370.16529.17578145441092697908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2836a968eeefcb062a1b5bd208d6f32e45221bf8298e16362ccda8b48753f3f
Date: Mon, 29 Jun 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782746913
