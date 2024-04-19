Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D92137C32
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713549623; cv=none; b=HcyrGeWOMPKoOW3822K2eugiQ4/Q+Ifb1INbTp/F5q8vbPjm/Kptpc4Sx54Y/8EBrJEKe0bV7sYXxXOR9VonwKNpc15BEIc/9tGQnAQk/76JjL/oDVh+siM1xVtoXzP7OT8cTWTI2Ik6KykGsM9NKeRGiz+s5MOdWhg18yox7dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713549623; c=relaxed/simple;
	bh=RF/SN0+yJZSenR+3FZEF10VtjlqJvOtmVg4UneRH0Ok=;
	h=To:Subject:From:Message-Id:Date; b=sKJS0zZMmooDY9v9okFER7etnw8nPiAxcTpFKDrC2XV+HJRE1538rdlVsmhKxP2FslEjfib8L8zg3LM4peyuONaAcoB8qlqFfIf2UqFNzRqMMz3TPE6IOoqmn+Li1TvPbGJF/sHe/BSfzXjcuCnQ3C2qAZ+AETNhGFor8uoCgwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbG+1Fl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbG+1Fl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D313DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713549622;
	bh=RF/SN0+yJZSenR+3FZEF10VtjlqJvOtmVg4UneRH0Ok=;
	h=To:Subject:From:Date:From;
	b=fbG+1Fl0s7xwVnLdrMJ5pISczXLrHfzojBdIL9vj+vouKFUzmru/dKx07Xf5c3PHV
	 HcENWGxBeEJO/26o8n2b6W+BOlMQjW2Lduall9M4C5aIz6GYNicqccW2e6au+Qw/v2
	 volReIfw/McKVMH8CbcSktc2J2RrRiqpgbQzw4jBXUs76rEaq3hmA2O6oyozfk8lZB
	 uBbUtDrOqHG5AlqgaY0X5/sNR6kNy4+jifaTg8J7GYS9vMQ027QLbwSxLKKDkTMFTF
	 qnE90q16iau+ox//DDobYURZd/DS/twzSPxA2f/+eFPHk6QKnWHh7/1GRpZYm5f4wj
	 cPmS5luQNW5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD38CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354962276.11154.10404775191996119342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eab4031b36470efbc7084cca07d57eaee2dd8c58fc499ab560561129047414c
Date: Fri, 19 Apr 2024 18:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713549622
