Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EDF2E612E
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765189375; cv=none; b=iDj+A6cb9xx0LkR6+0tSyLOJUHaCMouxhZsXs5wY8FB5FzfiqZKgnkHg8VE+fFjhcEO6JOaLKp7eF4VUjNguJkmFzbzWJDirk8/acy8Teb5dEerRwSRz0eu9vsHwLIWE7Qiw6RQJvQPe1SaUJQ0/XqnMrhJOnSya2n55qNdEQgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765189375; c=relaxed/simple;
	bh=FjlR+nXV+G2o/qbmmAVZyJVzaqfZbnR4bsHS+05qk9A=;
	h=To:Subject:From:Message-Id:Date; b=CoXUEnT3uyhKyw3B+n65rMl/LEZWumi75onOsyiChirzdINldySHDMaK4sUtyseUfLRjy2tj/BhxizX5Hja4tqhSO4My0JN+ovsB/2zH7stH+/xLSuP4r6vD/GZFyqsc3eqtAbuDL11qaxxA8tAwQSAmyOtk3DxJHbHZpdqm4kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGZl/1oL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGZl/1oL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A23C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765189373;
	bh=FjlR+nXV+G2o/qbmmAVZyJVzaqfZbnR4bsHS+05qk9A=;
	h=To:Subject:From:Date:From;
	b=cGZl/1oLNnkSXb6R27+EW1pSJOXlC5quUczSqe9Ybi3T373fxtgZcb75kpg7NW+jw
	 ZoK8cx95ZAJNFCsZj78hibDJv+obD+ToU/sD1c0QMMBpULrgqYXTbNcYchsInhHdku
	 PpW/IIHFmcT/RT7XmSJyoTWWOVq+YtvJPhEWMWzqS0DevRJbLbytM+DeyhU98ILAun
	 q1vdogutwMbfOOaiho6HQamxvNJQNEEYZH5bUCT9LW/CvcaY69npAgA5klwWrUqSke
	 3pzlUcupO6j7R0GQvAnRJlU7JahLwhrJxXzweP1yKRfvioCD2LDumAsasAJ1fom7Ng
	 2WzciDoTCERkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9022CD3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518937358.5476.18263738585369758943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ec9201aae43173c164e76613f8d93cd9df6b4873db0144ca03bd4c01c83952
Date: Mon, 08 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765189373
