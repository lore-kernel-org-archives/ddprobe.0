Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCA032143D
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755181194; cv=none; b=fETd3SBCnhuSJ37GPZHuBy+1Ss/VgceZOSstFoIYlp1oZdBIRwOFCqKNVhn1OqdcGtUaGiBWVysSAAWpsdn8vgo81aZDB6L3vf7AZUu+9iBuMFbFHsYg4rNcax0oeemEa3bx/AzoQS5QAnoadmhiKPb1i6hCUIGI765HFwEX2RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755181194; c=relaxed/simple;
	bh=kvg4dJrix7BpjaEvm0ofqZuts4f31kRMyaWHcKPdicc=;
	h=To:Subject:From:Message-Id:Date; b=egBLNvaZR0TAAOAlxhWMLYU60MLbGmUa+xsyUxq3ZcSpHtln3R7c1k1MIo6EVSnRVjyydeCZqkdOhPWhakP9JC1dcq03hRU7rJrXYpnHfuSWWrt93Yg95MfjLh2A+fUUSjeJFoJ27OSW3+ywb1y1lgGq+X+6koUkNqqER7qhdpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbBtH2RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbBtH2RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD6FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755181193;
	bh=kvg4dJrix7BpjaEvm0ofqZuts4f31kRMyaWHcKPdicc=;
	h=To:Subject:From:Date:From;
	b=RbBtH2RS4llm44tlG1b/ieTm+5Xi9cJHcoJgbvOwa6k/epjHj0IxnTE1Rby2ehpPE
	 E94qGibkG6XogSjYFe8c7cAWJEvgJCc/pYhhobSsLirnMIMbNP4gpKv35CAJ37L2V2
	 Zq9c3cSdQ6Mk3pMYnGklYhhVdIxQFxR96ATngaWZ/ajIBAOSU+nkZW3MEaAyVzWher
	 tS2dRUFii8XSI5vCT14qNaZ1XNjRZIQngnJka7URRSaOaKt2mukDJDgFnTWyBu+MUL
	 POAgiJF8FPi+ww3Yi1++as9zBW8MmeYbfTqgoRKjUuaPtqWq1bxuSd4iBF+FTH/Ru+
	 OCCGfjbdYfcFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F145CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518119357.466.2900492547991536616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28301e5edcbf77a02ffb036228fe6bdf4f5966f72be6ee990b5bbc033257543d
Date: Thu, 14 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755181193
