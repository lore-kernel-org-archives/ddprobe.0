Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28921333725
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775541934; cv=none; b=fHlDO8nIIi+AeUpEYSLUn8/as1I9HZZb0kblPk2N/ht3Xc7SMTqyM3WxOCJol3Wfq2cv8wpoem8uX3+tqTwhTVljZFO406tMRcDYotxfOZqAQISb1haFaCC1jx2vgj33FpuBb9FF2deWzfG8Ot7nSKmlqKyw5LSqECT4ibnLaJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775541934; c=relaxed/simple;
	bh=FmPTN/lovbMqZSnY48QAWMgfJme5qNFqR2Q/ipcwM54=;
	h=To:Subject:From:Message-Id:Date; b=Q8pUhS4G7Q2imUXMpuXyoTrhNtAgPiYMeyCnq8CjqVuKG7vgS49Fwm6VUudtqteuTvYd6fejlEE8FKgGOe7i0H53ZNbELkLfiO3HW/akAoSsrFE+7OdBe4zL1dwoaGxD3k613bruT8JLTHQU8zl4+GkZWz4Qs2ifASwrvtADmMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBi1hMF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBi1hMF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6197C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775541933;
	bh=FmPTN/lovbMqZSnY48QAWMgfJme5qNFqR2Q/ipcwM54=;
	h=To:Subject:From:Date:From;
	b=FBi1hMF562+g7vMJ6M6dTEHuzKMcquxZJlAZCL1PPJBkAnqIjFvpTXIO9l4YfKg7R
	 rpKg4F/uxJp5d6QtXLVhyhMvkpP+oXRltjHSD7xYS5X+6cRich11NYiL90xS1yaa1P
	 YvWjC+sfe6q+nwRzagrVAbENQJNlKLn45mfiHfonMKEee+krlkPX1NqPxn+t02xIiM
	 EjgnbmvH5iicIJdPJ/JxPDgvLpdjIzANbcN+kokYXPmcyWgSnp67ys7WJGYuD2F25O
	 mm5b3wRu+nGtwYBSH+9UYjXyaOkyGPGRfmRoWF1GymOcV4cY7QUw3y8FzrYKID38qG
	 mrKTtP/IEApQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1826FB519A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554193368.14502.17579782553715373251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd58a71e18b391e94b0dd230c60a8e6c38636faedd050c39b68e22c260798576
Date: Tue, 07 Apr 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775541933
