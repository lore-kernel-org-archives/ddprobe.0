Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C43CFF4B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775147734; cv=none; b=dVTKSOoT7L39bt6FvmJ6M2dgKD7L2UcdN3JJvTVfmmj2dgX60eVrC8qwNtkEhHNuj3XJTAw/EP5y8yC4iEnncetlkwBcn8DX6cwzI2ys80NzAIMXJ+A39Bj2roRSBYE5uxZwVu3AX3fn+ZZnEwqoThDf7pEemlGyrdFEnXA6Sqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775147734; c=relaxed/simple;
	bh=sq1zwSPdAtikW79ihjOIvHPM+sQ6kn6Of78iVBfbWEg=;
	h=To:Subject:From:Message-Id:Date; b=LhyoY9q1BtUBtcrBe4OTBNSIjX1C7xONZLCdu/1HxbdZYxRbjWRJ35lYn0QPszDLRkeqOcSX3VtKqAAydzjOpbUZoIjX8MSlNLrvdBJxHoRIFaqc4+4CYcgBPlAafu8g1wb5CScOl3Qb/sHxb9FjvSaXhh5pNpPyf/hAcEJTA1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb1IDcwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb1IDcwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7311C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775147733;
	bh=sq1zwSPdAtikW79ihjOIvHPM+sQ6kn6Of78iVBfbWEg=;
	h=To:Subject:From:Date:From;
	b=Pb1IDcwr2FKwMafDSM47aUdPLShR2lYYj1BzK747+d4dl6/8HcV72meFo66PnslSZ
	 69IYU9TF+C9TCdZ2AG1YOr/WDeA9v2vYaV2Ds8Go8N7gLdi3xPwVtNtedDv0iZ2EB9
	 MISfHjwAqUlf1hNLHwsybEEfDeHVFA6MWengzvajgALwPksexMr8Nd29hhx+rbiZKB
	 lUeAiHWCu2lECqYhGgSu3xv62D8/HW502VD89FrrIcczl4lMqObKKgIfs8HpOrEWu+
	 Xpbf7/9IujhTSjrhmBODLXs8GOP5F0fAW2OisVA8UfxCI8tnWAby8Ng3RLM229EYoJ
	 ThmOko3ZlYnng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0159D6AAF0
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514773371.13992.6228995928071815730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee8d76ccad7190fa882aade3e9b641f26650f4a0be313f60e08ced89110556f
Date: Thu, 02 Apr 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775147733
