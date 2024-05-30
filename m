Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF80433C2
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717089863; cv=none; b=szBP7E50mXlWk9/tvn/BUfBCOoDflKznMgqVoJ0/iasmxPVwjdesWdbCwK954+QVW5HGgqycDpvEZFUgAKjKBf43CyT/fjH7wTKxGZwtIde4qdjpmaGszXqioUmZu5ErKWmMZfOIYJGHPjcGFpg3ivWyV30Nl2fprHJ7O9o2u/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717089863; c=relaxed/simple;
	bh=NW10CsmgASeQaCuhBYUHrXN8YGOREvB8DxjyzJkc510=;
	h=To:Subject:From:Message-Id:Date; b=HsnEAcqQSVl0+5tPN1plfYlF6m2pnGFfw4CdwFlzQQFxtg5KMyEjjFPmJa9B+gvsDQGd2BLodEzoMKLaindAqNUj+iYTX172wRaS8lgfe+6s7TWOUKvLhVI9mEOcrlPb5mekELvmjBqcpaaV6b6Y+vWpJzg4YJYTNBSBy/vO79s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJXTSZsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJXTSZsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3779C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717089862;
	bh=NW10CsmgASeQaCuhBYUHrXN8YGOREvB8DxjyzJkc510=;
	h=To:Subject:From:Date:From;
	b=NJXTSZspS+lBcpAEI0eT0ZI+zJjno3XLv485o7wKoURX63vQzOWPY7gVrToxaiiMX
	 oBQKALlB3gBSlB18kRgCCqLp5UKTe86TAAb8Akm78X5ZAW2TqXrs1lQik81Pc5KJRS
	 ml2qWZExbTXUDqWxpsdXF0FZ/ScE00PjKYyi6NDSgW3iFX98eoLw3lUIZc9iZkYeaX
	 NJJCIYVKB2TSTMTRNbFmT4bZoxeePtd+unFpi0Gk43kMgasQkHIz5B9mWGbtINMhCY
	 aFZhsOECYpD4Fh0Vh8DtZdOBe+qYfpK3ngwTsLIB1iLCiPlrjRH5uMhFhIQ9tTZ4MP
	 iL2iKJN5xjfbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEA3C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708986280.25600.16816043525036374884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbf4c45dafa69252c690ba663e6917ac9cf134f3bfe1ebe5e675a6c799e9117
Date: Thu, 30 May 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717089862
