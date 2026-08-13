Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B606485505
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786633234; cv=none; b=At8d1t3VIQNjPQPSJeH/S2gEMIb70LjK5pI9yq1DupvBlMKUWoYV+sV3ijRSPJlRQoATivoW+fzZB7L9xExT7exoLMZZB9BSK2p/HEK8zqbbd8JxD4kpG7Mt5Cr/w5EEnhAgYXufzeKDYTgIxmybcoa9vI+MtZjfANTg0F00uZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786633234; c=relaxed/simple;
	bh=kZ6rIH9iUqd9LPAw922rtRsgX24nJPq5KaDj3hsLP9M=;
	h=To:Subject:From:Message-Id:Date; b=VqYiFCFyAHV6rWZXAGolyG1wL53s5vvxmLUzfvx4nrtISzPdI/cbbYtTXEy85gZus7jrUkX/I9KAd7r3ZX9fosMebK8ULi7yDIIZ10UGn2sKaATFXBrimAVqaHRGZrdAAl1bPur6ZYu8DMvgagMUPSFek3fzMnEXJ7q390hIHL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dq/0DT+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dq/0DT+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D259FC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786633233;
	bh=kZ6rIH9iUqd9LPAw922rtRsgX24nJPq5KaDj3hsLP9M=;
	h=To:Subject:From:Date:From;
	b=dq/0DT+M1aLYOD53zZhodhz5om2Igldo7AJHL6fK/5ehSLyABwkpxyqYLiJhkaXNM
	 WG/LX59ZdPR/OuyGuvbfA6nPTtvdQ2FZyvgbvNcjkq64TjUMFvz8B7oMT54ZjfXt3M
	 Ap44Vn+YZ6715KcraEd3DS1170VUR8OpVGPc6A+hFCGpGmStVqWkY9guCfrYvHEBBP
	 Jgm6VtUUwVwum7c61L+UAEjryX7eTpsSKsj5AO19zDxjm/JagQ0OzWpBMx62W9aXds
	 fDQaqLRS+yaLIqsGFZki7MmZlHoEt6GawgpQ8I7q4RWMKAePbZHVO5uI3qRzMraMI3
	 iwYPoXYdWmq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E6CC5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663323368.30945.8657162127413307299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c3af40dacfd85de80edf61d3a55ea13a4ed8f5c695bb1dcc4b64d4da361702
Date: Thu, 13 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786633233
