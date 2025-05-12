Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFE9248F4B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747066194; cv=none; b=OvIbOasguuBIWfeGhXV4iB96Yc0IV3r9p+LReUG0wJgd6ccvHCwnB8A13SDVOADY//AdWBMbkxaM4VID/P9k058Jj/eUmVdmrDf6Dr1wDhSqBsAPaT4WIKmHBbO6bvc5uWZsH7WJw/tF8mziTNj/Q/MU/6fjAOlyJnSicjh1Y9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747066194; c=relaxed/simple;
	bh=4Ltk/HTtF6esPz25dlFu0bnxBW5t/NNrkIH52QwhQXo=;
	h=To:Subject:From:Message-Id:Date; b=EHJBcKkhfyFsNeluyVVWZIPNoEBic3KXtPtZMmFiVAKLzBnj45AACa2ndTibofeVGrSMDeX6KL88AOp+y2OAqNQC39gtSWSuR958a8RkDRlNhxp1AphJaB2VNKxNK+EQmdneThv+yxn8ee1MqUeS0dU3Nq+J+8KRNU8Ts0EnPa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMod/PN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMod/PN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747066193;
	bh=4Ltk/HTtF6esPz25dlFu0bnxBW5t/NNrkIH52QwhQXo=;
	h=To:Subject:From:Date:From;
	b=AMod/PN7Emneh+yb0XH5Fusu0UkAdo+cFFxEwfcW6BG9IVd+ov7tYrDuQtBxHG73t
	 iDygxS9dj2qHxn2b6p75idrrsySAZIKVRX+vtjAxkH/5VYRFneKUQivlMjbsxujmm8
	 H6f97ygmH8YhIz/lyEbYHrdPeqKNh1HHAp3UKhi7DxZ4nTqUp8Zrzf7bOgSDJccysp
	 AltTCYJffYeh3TGT0NoNl3MLmjitEwOrCQcKdNKd7qfMZNu67YhjnA15y/eJAvTQIY
	 0YxlHeZ3hoCgPvdCGtnFdEEDIcz2BWkQ/pT+wWs+TLMjy37UfsrF5Pt/0SSzt9AgOI
	 lnmBVo7JqJiIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF2EC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706619357.23921.15609476439141281341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6b6d79f9c9ad3a73fde93763386c67f22d981e91e114c446bb3475c09fd1bd
Date: Mon, 12 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747066193
