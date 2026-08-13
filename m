Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D12742C4ED
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786603834; cv=none; b=A7bAZIrk7bJnbwy2Vqwcz1bUhzvNmkWgBlhHPiSYCwPrykU1PS7PjoBn5FNniBGllIgsUNJX9Y/omkTWa9ZCEzQ4Es6nRcHT20Xeu0QAsM9GaBZDnp+EbqlGnP5ndg/kiOF0Igycn3QeGLzxSwH1WflVjFEhNkzPsEGaCpGcSjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786603834; c=relaxed/simple;
	bh=YvWIKCVMyqBje403oeV59hmBVcBwuwBIjYtUWwezHQQ=;
	h=To:Subject:From:Message-Id:Date; b=rX4ZdrdEe4c53koLP1K8nDlmd6s9fK9/gf55weLcUUlyFvGeTK7BnmtVDkrNtmjyl3qNIycyWT5wj74AUEevINMuiKOGWaD56CG2Eia4CRGZHpBo41lBjpcH3+tCL+erCWSb9QtT99vOUPUlSmOQuGTqVEMbVfVwV34qoFeVrG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL26KlCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZL26KlCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA65C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786603833;
	bh=YvWIKCVMyqBje403oeV59hmBVcBwuwBIjYtUWwezHQQ=;
	h=To:Subject:From:Date:From;
	b=ZL26KlCSDOjBVRe7ZIrAWCI/RtTRw5yGpuC9I6vO68BnGpqtR3EfqXDCJ3MhdNdG1
	 4ZST+EVa7D9XiLrNJajKGnxrqozs3lfuv68ohxsBxz3ifvb1Jr5VvsOBHi470C9G7l
	 TAs43HgxFPb+dV0irCuPfc0TGiiZHL7OoClSzjABZng3XLBRv+t8CWJW9v11aB8lLH
	 TEF7VRsg5f3+jWUGlHZSRnzDBELmWkqU/tavfcEU8YSXU6Ok0g5sqZdOVgVPQJHPQ2
	 QTY1h6hZqnrFM7mL4aw1/ZscGNC/SvNoxSaPRt4odbevBPT7MHkcD8ZOs+7hi1ZrpL
	 sfthk3s+wNdVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B82C5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660383368.31888.11157140342565015039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aea5f5db868b76863c4db1f2fdcfa74d28bc8e875c32f320e79e55ee80612cb
Date: Thu, 13 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786603833
