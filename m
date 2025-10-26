Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26551205E26
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761499794; cv=none; b=bryEtlUXBHImZPO/D4c1eufUY4CwqZYzBqKXrUWXdwqqTI+37YMgR/FXQaM3X0ORoQ9YpJnhjz7hoVxeexjY9FNd1VuGs0OC5GUV//sstrpd6mva4bbCT4F9iUTQwU95jrEeLlN46liIEEe6sgQK94L3qqG12tT+H7dZdhCsnq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761499794; c=relaxed/simple;
	bh=wT77ZIdQuvZFP6GHKvCX/waTfGuD+roHqUE08gOL1aw=;
	h=To:Subject:From:Message-Id:Date; b=rZPjiJccjS8k0GTHkY9A4cgHJmu5WhCBuEt6CNZE9fmZ99JTi3sGY5DXy/dNQBgcq5srAbjlpdRGPzlrI4QB2mbVfG2ZzT67Mf16et4tUGkaUIqe/43qRolAfBTo64cZi3MDbFkVVEYp1ewzCnS38mdegUQMjQy1ESrxZZJbV10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7W0YKte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7W0YKte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71BBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761499793;
	bh=wT77ZIdQuvZFP6GHKvCX/waTfGuD+roHqUE08gOL1aw=;
	h=To:Subject:From:Date:From;
	b=F7W0YKteGrOEmA/2dMthCtAXRgqTxkwUpGMUrriCYyrdHqqJ+xMyqnjRK0m8T8Q3s
	 eLfKJhiDVlWKNUM/oOkWfNXn1hmKyK0q8raOfXV1HG18EfOJOzZBADjgldoatVEzD2
	 A/smzr8TRqCDHRZtPgiAHCZ5KJrG66pcNTMNF1J1CLlEFDDHtaw6KrC1rSMdC89IGs
	 Ah77kJFFYr5m+LDHC3CK1ldpWxxRmILNrXuzXqxM8U0PtUE3JuBL/90vpF160rRAFy
	 mKlfxLHSFl/HUGR9yzNyIp9NIs6PEuJSPFBfMdtZGiizchz/E49WZU5eK0qT12M8Kj
	 /yUDCnw24vIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B78CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149979357.17938.1356118090812731766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9821e3c27e77ecc003d62021e026137ac70c60ae0af50fb211acab41d564f7d
Date: Sun, 26 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761499793
