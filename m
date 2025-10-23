Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E0FEEB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761255594; cv=none; b=a7GaxQTBapqnKNCcNocZJFcKXl6w0pVpJpnm0zmzIULDj8NaVculgdzQWtdxXbA+9rQlitXc/Suj9t5ywNVBbgxQQl7q4QDiKRm+KeZAuiStznzb2wUpmd9fwjUpJ4WhlODGjipl44ESvjbKak7weJyP8+R2Yy8P53jXfPjwwBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761255594; c=relaxed/simple;
	bh=d1E9UWizzm1x9eKuCSQQ0sx9YKmuQzuKXof4jUzGErA=;
	h=To:Subject:From:Message-Id:Date; b=FyxRovzkMhKrcjtwXX6OlWPY2qfbTNcsrU954rX7Z34Ma4t7aRrf1JsbjxHpM1LZkU5lP+6kGfMlz6DiytG0KXPJifHLTb0vk2u84RBciVQ4wJwIff4wIN3wOfdSb9vc7lM6Fg4zt8vyYIaeKbahppRWInQPPdrzyYcErjcLrKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTpxjSg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTpxjSg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D61C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761255593;
	bh=d1E9UWizzm1x9eKuCSQQ0sx9YKmuQzuKXof4jUzGErA=;
	h=To:Subject:From:Date:From;
	b=fTpxjSg6s9cb3SLtl/RsJwt6ADv2QwN4i0H9VdLk9VqRT7SGvLNaXPRbiQHOGB/y+
	 HoCnA4RbHdW5ZR+5XRqsd7uE654gfJg8Cau2mt9TmOaLWuDeeIH5EvllaaUXKig6yr
	 B7AMgkiQtfXQoWrNnCNX2XpGEGq/sxE+ijYcKPufEulUtDh4fa99IYkur4w+fEPHsw
	 aUr9/Bb+FIYOg49Yz+EfzCMpmU0Sfd91o/4Mnqd43eo7ZQFFbvLiCB0eqcWgdelI27
	 TSWC+aFC8EjbqrgxH/halicwfhAeVq0rmIzrQq1zD49fITPe72hkImxBE+zUdtnAn1
	 K2sTM7Xe5yWRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BCBCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125559358.8262.359562083076876235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72677bab1dd6769216110c92764fab03080897396eab3c956e9dbabe43994a3b
Date: Thu, 23 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761255593
