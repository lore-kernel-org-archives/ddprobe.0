Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6541D19D89A
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718432903; cv=none; b=j89hEqCtYXiIUlVoi+7vX3i492mjwScYGN31MAStsGa1l+UUPajmsgNtdpFs4X4jN/YaxfdNbLpE0ujS5YbJOvpmnzfqRo7HUZnSvR/BHxlkPX9bNh7q9TKpxZSNqmIwLMhP6vYmoyVsoKRKqrhJv0wRSXMBpdJaH2eMJ0vbq/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718432903; c=relaxed/simple;
	bh=2iNClcns+cEsVRqq+mSFcds1/IIkaSsy6blDAnHVuoU=;
	h=To:Subject:From:Message-Id:Date; b=aFErLUBucq0qjzPCndIG/oINRiq/MmZ0YW3ubsTS8DUk5iNvGDXIFR1kOyWzRGIbez9SVsbTqjLsfqMoTlJW0jYSTG+lq/8SikXNWTncAAu1I6w7UQ2auamwOpPAYyeBy+yAHf7AcBBPh004Pc3HrCVC903BwMftFY1Bhf6jbZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNpIAFdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNpIAFdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE19C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718432902;
	bh=2iNClcns+cEsVRqq+mSFcds1/IIkaSsy6blDAnHVuoU=;
	h=To:Subject:From:Date:From;
	b=aNpIAFdcDSizzxVCxDUWTUTja9dvNFIvmHjUWr5k++xp1pDa41bdoQb/zaFKhmyF8
	 jSYWzJ3VwzFr1DoJHQV5upParBbQgjExlmyg8O7l8KBYadtByhcQWkD7z4TvZ9o7pH
	 c+rl3KFbDeqBkxVdj8Y6uq5vKyA1bUyblsdBJ0Vlcpx4T93dlmwzjeYGo5KNBafycP
	 t/mieOR0pWwgT52QKyJjtfnhk94/wEDeq+NsXuS8cWYRu0g8c0EgGGluNuSNTlRp58
	 kkIMnzJdwVbCZUaZkbvL5gCU/TIL7yzWCQyrGcw8npNLdmyi9DoskDkwgA+oA+gDqP
	 nhde+DXaHJbSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ECDC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843290279.5433.6759807745710483623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da855d27ed1667ce55581a27dcc8c0eca0fe3b53bdb3aff25958966e9f247175
Date: Sat, 15 Jun 2024 06:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718432902
