Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADE8361962
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791485434; cv=none; b=FxUa68hHAMGPBU9iqD0eTSV/ioA1zmS84OvCjpDgtoGwgqknxvnyMe5pF86CQVEElTTYcPtSzNZbvm/mQlTL0HQk450mHYoIDOAtFP23cJ4HG2u7OOo+WkBW+dU8+O/bjcm842f2ktTxaXPGkrRe37l/WfIwNhD0nnZNCqgCy2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791485434; c=relaxed/simple;
	bh=IuG4m8S78xSbiq625YNWhK2FwgbETUoj+SKcRzPlsmo=;
	h=To:Subject:From:Message-Id:Date; b=UcHh/hPeDdsaB95E3IgNNoPqTp0nL+BnkcL/S1fZsUDjmGZ0HUxao+libWsh6LwAWnOTxNdi4udrHQTyAuh2G+3B+GkFPxYiPjhba9AKcb6hiDB3frQbybkkUF1lpZDc1Be2HgrxlKAQGTD8bxKQGQswSowPSRUojtAu3HgaAIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7jrWYaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7jrWYaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AD4C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791485433;
	bh=IuG4m8S78xSbiq625YNWhK2FwgbETUoj+SKcRzPlsmo=;
	h=To:Subject:From:Date:From;
	b=r7jrWYaP7TdQNbCaMXGqfdg9U5GV8ZJ6iE3sMeaos/DGmpnWqZ1VIQ70tFKSbPspn
	 7Wlr3+WV/J6maPXKazAxJUc70PhZikSPLxX6rfZbkc/lgHSwSHm9mo053B2RUrcw2A
	 hBtUM7VRPJpCBcYhwIA+ovyHaptqckMef4IyS/RF+wLeckWsDb15+Osn3Cq9nfN3Rp
	 lZHoSrpxctj3pbFmvvNP3btQnQeR4iL+MMN62ExAbzf2arSH/0JTzh82bawlNX2GgR
	 N/eN7APfWI7tvLkj5FMqYCckpe6BWARaZLiCq/gYi+1I1G167DnW3rRuuQJtxWQbOj
	 YibvrBAzkpA7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9ADCA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148543368.7921.11088755587975152812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3299294686bdd77be4f269bf7c5fb435eab43d8048d5227a6ab66112406471
Date: Thu, 08 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791485433
