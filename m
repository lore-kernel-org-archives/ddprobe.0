Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A8D3C9EFC
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790064037; cv=none; b=gypeZptGRoXRlsU5ma6g4wph7pi2Qz+CWwpKNhRbUlIZgxGmSmGLel1dvqcSPwYxnZLlDU9u2bQxJTqPFYMilfKvrfbUqY8q+TOkBs3SDZxTgKIO01rRAyrzjXQWqLSRcA6Ig5TEntb/Do2nKFbti3VPcU+EmwAN9D0IaTHgc9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790064037; c=relaxed/simple;
	bh=wlX5wNwUIus2DiPKo+ZQbul/H9cWp4FvT5oWOwWQ6EA=;
	h=To:Subject:From:Message-Id:Date; b=H9q2AsstjWLzFxNSvsyiUSbr872hT+o0Hve8zISCOZKh2WJAiIjceWrEVuITVflUfQuNoE3bToE7ftJXLgG+OvAJvc3d+9gS3vaiEI3QKmSGXm09jIx+0Yd6bM0KRXQvVWC+AznNimrGa0SwAlgyjmLnUKfig5lu3/Hygr7aF+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkXqDuYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkXqDuYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC372C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790064033;
	bh=wlX5wNwUIus2DiPKo+ZQbul/H9cWp4FvT5oWOwWQ6EA=;
	h=To:Subject:From:Date:From;
	b=dkXqDuYaT6ojfTlR0tIv8sbel+JKHzEEyPuonwliUlZ/8TPnJKCEDOewo3teEClqu
	 Mt00nKyoT+EZxNZ8HAFMNm1Wi5jVO6l//npHh5vzQ1idk29CrxGdZKZ9TohAYMoiF0
	 DEP7i5FmelVCEwWgKnXkqRGmjRTusL8FGpYx+3t/NcXP1E9JYU3YZny+mb6FkS/DIe
	 VBWNW7PwecdNFVcLwZZPDHaPApCLPewawPYh9LmkHkl4oJZJjc/JPQf4uKaPEHY0mS
	 DAHpcfatCQ3nC8hBI4LALW5vxug0NQlpYibs7E6aYFUiaY2/m8U5d7DPLbI5qMCvZ+
	 EbqhayF+oOphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93D9C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006403368.24832.10495578153325614041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f020209febae8451db936a94200d29bef703623afdc58630075c70869a3bede
Date: Tue, 22 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790064033
