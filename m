Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB3C29BD87
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770012834; cv=none; b=qvgAGMjyFl4GejwneFc4iwXHbepUs1utaCkgWDbIQRyXVk9pn1fzsldWPmv4nrW6JmsrUCPdr3+aUHJCRtZKw7zcz12n5HOu9S5z4Iv588ZlgrHEbHf+8U83Y9c/Gj0AnKhvPk+T5qbfZZa3GwnLOXleohGPNKlTe+8L4HYXNRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770012834; c=relaxed/simple;
	bh=TpZ1fdMT9UHBS3NA6o7R18RUCEkefRnYNcFEUh/1nt8=;
	h=To:Subject:From:Message-Id:Date; b=VyHHq1uLGFarzWHPJZK5MZlq4So+hy/l0tGJ4wI01NWjP7+FC4q0hyKpRacG0hN159iNX7+SyHKeIt/K/xe888qaWUVmaavDQ4lYKD9mYZA//yGNpZKjMSmDQQwaq72alC6lZtRoPgW6jFbnNLXtlJyd6IcHp7khl6Xtfpvg7JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtGlgV0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtGlgV0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EEFC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770012833;
	bh=TpZ1fdMT9UHBS3NA6o7R18RUCEkefRnYNcFEUh/1nt8=;
	h=To:Subject:From:Date:From;
	b=DtGlgV0FLsbYqXf3pZmSY7OzZjS+OMlclYLtejrC6NOMmecvK00jLdtVmQQig0qnw
	 AoE/EjoQ0vnDZe2KKDJr4i1iIjeghbh8TJTLjo4f3/2jxvNlA2QgKUt7uJMCs+NbjR
	 lWeiNGIs7bjFc7jFp+LQxNZI+grPhxlUSb7+WSCMXFb/iqhMqWlKAXUL5+5kYSgJzh
	 hDpdr47A54W1vDVkDgQ+L4+xuAqc2NsK8N0vDkDDMceHbLItB9WFmTbbWHqSGfF8vq
	 CAIHt14PDXcSiGNK4YsOgP6boualdzASc+M9xrij1JN0t9TGYDXlpEX/ugOudiKLrx
	 kLfMo+kdjp7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317DD172D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001283359.25333.8756171826495780804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5db8b0bb147c50a31fbc49a22f34a4f36f77637cca0f0fc8eff6f99a7fbe9d
Date: Mon, 02 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770012833
