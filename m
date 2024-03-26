Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1FA913D8BA
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711491497; cv=none; b=Ia0dum6Z+EMenmWtwL5UIquY7EEmIisFuNkfpEDvyt761V6qoTBRUMSnLlsXmMkH4+wEt8pXp/AiE+3ukD3YoVWiiNzeHp8E/CXLLzLNKPKdrvQjAoIiFway7zSy5/8mpotfJQdD8kLygje2Dj0BZMrWgnYdHc6Ksx/Dt4lN9PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711491497; c=relaxed/simple;
	bh=Er2v7NhNz7ITf5EPY8DlFfbTHNlWSmGjub60M+riQt8=;
	h=To:Subject:From:Message-Id:Date; b=LiPAp4Dg6KyRurTAE0AkQnKgf7gfmWfYfseoTKrceertGzSMB78mAhMIX1G9HWNm64b69wV+JgCtGHbi9t76+72pwFJsm2JQ6KahBY4L1B6AESyUSaGb3nLPLFNujWwZ/0dOkd6kMhDb0/uK/mdAwC7FON4UcBFhYZuuFikjb1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxkCr8PD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxkCr8PD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81050C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711491496;
	bh=Er2v7NhNz7ITf5EPY8DlFfbTHNlWSmGjub60M+riQt8=;
	h=To:Subject:From:Date:From;
	b=TxkCr8PD9pyk6jzKzLm26g2/uQeWaievf3jia7avVoHqd8uHyteXesrUlQbur9zeU
	 uc15bdrtLnvX3RzjMRNo67mFXj3r0YGlcUUnI1fIcg5ys+ln++Gt4eezszoW9TQ3g+
	 G0hW+9duYNAAyEFHfPsuCBuimS02ygSlf/DiW2fzGJx0jNKYEb59dBxpIfw2DWNefa
	 FlKSISlUcmhHKs55Hd+hV88rPwpMsOkqy4mepCn+EaEgRthWesNIay1+qTzxTHdoBe
	 GRv61zyKIDCk0sshq/4fixpprxi4YQD5Ln40DaGYsjE+NJEDlCYzFErwfMrLJiI6an
	 zcVXfYD9ysywA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C42C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171149149641.17317.17438120401801898770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30925776bcf961ee707b94e37a74f5e1ddd7086e0ededff64b04a8c7c8c5f424
Date: Tue, 26 Mar 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711491496
