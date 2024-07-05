Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8BD2AE6A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720155323; cv=none; b=cMkypYopHAM8VqWP3ylVVCfiHkt87d4RzqF+Hklq/WXTnlnbwC+gSYXJAL10OnT51MiSqRQatJsVC9D5Ym3q47BMUc2cPLyy/o1+ZaxEHvIiA3r+t7cGQ3y4yKIPpQ102mlB5llUUdisgoeFLmqzjKAYkdwjLvwSSM2vlPxUJR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720155323; c=relaxed/simple;
	bh=CFOh9YTzccvGyf0exVINc0o6aFtOcJ3YP3NlDY4geGE=;
	h=To:Subject:From:Message-Id:Date; b=YrT8hgN7MSQ97tc4XFJKk7M5gpSuGgYOWIMUCSMLWElQYm3YwM14m9eDXZXlCYl2xF5tjuqde2wu6HYC66ic31Q9DBve3NGhEu4yNdCyfqb6AQQ8HWAeE4aGbyH5ZVWVCFQiySwiWugoIuY9mRoWGiSnegJ5ILuCEfCVhakjrb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpz1ntY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpz1ntY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2322C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720155322;
	bh=CFOh9YTzccvGyf0exVINc0o6aFtOcJ3YP3NlDY4geGE=;
	h=To:Subject:From:Date:From;
	b=hpz1ntY6J1gU3HHV9E5opRFeD7xcQ0h1+h+8vJLETi2sVH6YBBJKY7UG1yu6nH1Zq
	 qgE86Jb33BOvs4mwThkyfyjITBRMWaSrHfP1E68jKtu0NWrKfR28qYacKj7kTYfqaF
	 tvHfq2Tyt9oZ7Q8VhSJUWcSJnUBktgS15R8kERvdHjmjdzHh5A2+fa3JILmg73FKLg
	 TOWVAH+8yq0wuaSmp0uZ517laY7Zfgj9UcYS1QJNs/3YTALsjTzLAEhI6+J2utqU5C
	 ct21qXitHc7L+nuw321CnXMkdewh9yAFTCpoZOdpfkUypyXIUcRa0Vdp776dZT8pT6
	 AWLt7U/QNDrMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4DAC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015532276.10780.11005539468940826099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75a860b0f8050e0fea120229ec6de6a550c7dce1038ede11820fb8b8e7c2c2b
Date: Fri, 05 Jul 2024 04:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720155322
