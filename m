Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD61C2C6
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743514794; cv=none; b=AzHz12jeeBUoBvkak0FpSfphil5kQnnQF09O5/tRVJSRyx0qk3lBH5gCt5YoNahY8EFFd3na0qIhfWzKh84cCK+EF+7FUXNk3kFwdxq8n+XZQIpjzSxQdFvDRxJbOAoSNelhisCvdAYjzKnvDhvu/jnxe0UWAfvm0f2tDf93rYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743514794; c=relaxed/simple;
	bh=gGcl7EtTEQ3UeJEbQNWn5ADtfPUSS5z/42/7yld2ABA=;
	h=To:Subject:From:Message-Id:Date; b=JZPhJFC2ESs3Cu/yH9kwTUBiFf8Hhf5+j5FhW17nLcn9AaNnO7iHm6lPVB5LI9KrLtupLhLPtbqp97SxiDdeU6yLMr9wE6OH7ZebDED6aJqt3OsgKdoXzGgQ8KknOlOQ1JtB1EIB5Pb4rXIN4+4yCK+2WJV/GUWdWSylTACjhRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMQ6apiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMQ6apiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D97C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743514793;
	bh=gGcl7EtTEQ3UeJEbQNWn5ADtfPUSS5z/42/7yld2ABA=;
	h=To:Subject:From:Date:From;
	b=VMQ6apiAxdngNARi1ypVaF5rBDk7+g0NaR0cEM/hf1tz5XYY/YIFOnAgsPd1W0Cq8
	 KeN0v82j1ELTNngg0ydz8WRHAxE29vSJwr6onYliNeMZBhbHwzKeUFYpXGBvweihK4
	 llZece0padEzIP3tr2hhy9LHANAgggODGvk8cjFLxea33756/hiK0btyF6N1zPkLov
	 FVIGklm55j1kbwg2x4fNSvsYBrBu9ii+IObQnAAVS9IDiyGUvcQZhzG6hfxJ8Qmhl1
	 ZaUlY0/cDBfVednIINqjTZZOzV4rBaFQwdC2Sm6aSfBoOgP5N3IZTKhJLmZsQ6ck64
	 XMPMNthsfnNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91617C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351479358.9623.7347025160747434197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dd6ac56db24131f9643ae9f28cd0939a38db71f2e2eb13ef661c63cae63635
Date: Tue, 01 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743514793
