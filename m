Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E89130FBD7
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746499194; cv=none; b=NbBw7+CccKmaCNqJ0IoRsmvHJ/dl48d7vH+Dgt5HYgtS/TavmVK2kx8VdBTB0jAm/RIPLehp8sLVtBXWDmLP+47oQ+E9WBj0OurSHOZIys7ixztmwZHIQ1Xozf6wqW2qFMdS66elmZtz1SXgku7E87gnrdF+fW2IQ9pVYnO27WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746499194; c=relaxed/simple;
	bh=sX8KVS8bKhW1bjZrJJynB1/iJpCdEdz/kNR0dsSX614=;
	h=To:Subject:From:Message-Id:Date; b=dWk/feVurlGE4m9o8TWJwpuVhQPMAzb3CWtpik7zFEQ2A2Ve7DwzwkctjVZLLgCSE/EvUbqYz+6S3JGCaKLXrJxpBnooAg4g46rVsdHWD4uPtheeM+p0pMX2Df4TSoKQpgTocvaq0h0X81UDzgQeuKYn2M1hVbTeHFaKnyaJK5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsUkdmHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsUkdmHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D47C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746499193;
	bh=sX8KVS8bKhW1bjZrJJynB1/iJpCdEdz/kNR0dsSX614=;
	h=To:Subject:From:Date:From;
	b=XsUkdmHuF8genveq4c138OVw1TJqsQatphWYLUogbm/XtPquEmkF1YDD40uJi9uyb
	 FyNcpyCgwcXfoERkUJelRirFxyxyrfN+yVjqZgtmYdXJ7ZLXzuOvu1HtWZ0Cx6r2n6
	 MzDasjSbYohAJNiq0aaFeqcpOUcz6+s3QrVIehij97Tc1A5rmoRgZMydzYiGrVrBo6
	 6zBMc215HKuKhIMkorjw/s9mNbH3A6C/6pF7tpQENlQhIrK6sM0NgRNOzU1Nxt9KNS
	 p+ziUcWQrFcg86fH2zpivXBWowXozsUO3ohCBFPqYzEE1sA50iKOJ09U6RK17fiti/
	 W2StVHQU6YFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2FC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649919357.21531.4668309654812254101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d74b2e83c97ffd8bb8653b296f2a302d72afea3384c26a848d503d03d4ce1d
Date: Tue, 06 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746499193
