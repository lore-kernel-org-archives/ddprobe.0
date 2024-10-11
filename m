Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F83228EB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728688554; cv=none; b=tHZdloyNqAUue5cmOBElNh+ovdRKQuB4G6Eik/VqqnRvT5joBL/phtQaSVFYUoNhwAjOJbOi/QdyyhxNQB7K31lDzKMJRMeuqXM528Z882qN6mn6hEBAFvF4GGJF2BcHwH+oQy7G9aX2N60hHROGZlBQD/ZT9KbPqgJ7SR+TL1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728688554; c=relaxed/simple;
	bh=mR2V3viuIv5URsP9JgL7sSAotwBjDJc7G5xByqh/SkY=;
	h=To:Subject:From:Message-Id:Date; b=YTsSpRAIBHxmTdEdyFDXfdAxSaon7PG3eYiaNupstqkuRhgbCO3QwOhvaomM0FK4WjGndQ5LvTiDvA+AK4JTPEkMFFpy9ZfGFweKQ+PTlPyJJecI0qMqdnZTSgbxJxXCq8SMikGYF1FnnJR2Add4ijqN8SX5RviSvz2Uju41m2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXpdYBvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXpdYBvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9440C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728688553;
	bh=mR2V3viuIv5URsP9JgL7sSAotwBjDJc7G5xByqh/SkY=;
	h=To:Subject:From:Date:From;
	b=bXpdYBvQWVG9c0iys2lRCeSsjuxCcuT/+jTmgqNRRqH440lgOAVBY9xPMXcD9ObXg
	 BGJBqMV7uTJVTeppDcoSJCi3E9gdIaJBSFAiJAjvkiddgREkMr6vQlPdjcNI6gl2/D
	 vDmPsK9gtoA0JUS028I/Jaz+0hkS+pW3nFGatDJxwXZd50O6q6FNe317bVpR/ifDXq
	 WhaWZ98o3isAciNukJFSuwmKoRKPN1EqnO/77K8xu0r/VsjUkUhfR9X+5PTez3r4tN
	 gusxUucH83WH6fmBm6NcwQUIwQKVFKeH7WapyY0vWtxJuzAm5ERX5tiOqqDmM4R3ll
	 RWySiBsETaFlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAE0D1A427
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868855359.24269.9486967910340184844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039217fbc38c5be1ba87ffc42ddd614fd7677710b0536ca0f218624b49c84c81
Date: Fri, 11 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728688553
