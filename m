Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E0C2F432B
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751467194; cv=none; b=YKYMXnTLA/TYwguaoL7WunDX5CZBjiHBkAE3C/aBcJN/0esQI4txi2TzjhLcARL76ao6RVa57MGZqMnV1Zkc4NCbX37QmKMPAzsFscxlRZ7UREkoMMruhnp6TFakRgdsR347QfLDlJCeub50jVo/yeiqXzmTfdBDPFD/HTZPOOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751467194; c=relaxed/simple;
	bh=elm9KBcoutNk+LzDvRp+5F6gTeJGjQom9a3jGjqzByc=;
	h=To:Subject:From:Message-Id:Date; b=kUUbeuL/3efR+ugbHsXlldPM1h+NiIMRE9FTDpKirBPdDi2cd8TMzxs/fjWrHc8oQd5VKnnHIm6UgLBJWFdie9SHMfU7WpTZf+gkAE6CMjNJksPx4jRsJR0CRVYdVG5c/sCS+M9yonszSiOg5Vb1s+XV52uvKqlY2+KwwLWpM3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGWa8xNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGWa8xNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7A7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751467193;
	bh=elm9KBcoutNk+LzDvRp+5F6gTeJGjQom9a3jGjqzByc=;
	h=To:Subject:From:Date:From;
	b=NGWa8xNCuaUx/fwlWW/gylePT+K+oANzyB0+jJ0Mti/HPwo5jcei1jaMqmVjIQK7b
	 se/BTfSKWOaUlJh2iWbCrWNWQnjdbt28axyje2kpDLy1IrjFYBUdV8tTr6sCAvmTzc
	 UHnzRV0hL/ehZen2Q82Tuc1CEreKBhKkTh+mZh7s08u/1cmSeXzJs7rH/IeqQdBj20
	 wNrBblVrK6rIKb0SL5dCFTVG2tg+dCWWD9EyJflV88oKpPRaaEWqVP9w3bZLtBm0sC
	 pWTk78o5iU3f0QNWd+eZ1cWmL0A2way0TO7fvhIQ6PfxhHbSWBrCSncE4JNrCNtVMB
	 mm7pSBZIRgyvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F936C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146719357.29125.9763396816965183023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bc043ddaa20e986cae2ec9f054b9c8c970172266dce6b4fe221b957eaf6f23
Date: Wed, 02 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751467193
