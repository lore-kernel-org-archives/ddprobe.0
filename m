Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CE82F0685
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771319093; cv=none; b=FHfjAx5+zLNB6ASYnTJhmRYGtTkTTOeKVoPWqAfq+Fnd7BXfGNd6pzVuN41GQ0kspzo0/mP+RWQ2MjpkrfIX0FezgiCFOGQNx7F+m+Q+ccVUMRy/2/2/wq5xgyINWPNDdXdUHAzzPmmotnJaWnVd03Sa4CaehRs0NYHA5cS/fxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771319093; c=relaxed/simple;
	bh=KUB5VHxQUodt+m3ByoszDod5p958HQ85Wzv0U58MQH8=;
	h=To:Subject:From:Message-Id:Date; b=Vt/j9jZPoUCXy3YxhJAG7AA9grgFAB3dSX0igVHCiyJsMMhkzdVKjrVTeWyIrwE9aIHAooPd+jIFn+FFqATLUJ4qH160H7gGS7CER4UEVSo9z80kBn5tBk9+8tk9YfqLuZ2iACKbcg1AWsHJbmc8bTKusDhpoS9gRrDf6JHCyUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNLK/dHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNLK/dHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1639C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771319093;
	bh=KUB5VHxQUodt+m3ByoszDod5p958HQ85Wzv0U58MQH8=;
	h=To:Subject:From:Date:From;
	b=lNLK/dHNqN/bZMLWhHjjfUcoad/DdBmola87nfqpST3Ujg1vRxtF6IUxUcGkXPEcS
	 NGHgBRjFQrqskNAPraLVbOBO+CTZ8J//oBMYL9OgpDqO5GwdqVCOnAqBSeOan6110p
	 E7OO5Gs/Vc+i5JVVQHQ5wl3Frn47X/LyyuUaZP3CzbGeSmkR1N1BfvUrOa8SAmw5aM
	 TNo+7cJQfnnaJZOqi/eAJrDide6KG620xJQ0xNWAwk4ZnR80EUqlm+2UYY2bI/xsrt
	 7r0et1zQkiaGDFJn7wqe2c2hdLegWk8dw+Akb40jEbC8Eo18XCTce5QO2nHkg0YHTO
	 TBCTOMWEzDs1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91407E6814E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131909358.20019.13992407449011398242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c088225bd8c6149bf8c6219b9d5e9b31e418b320d8493ae98309a59e2c7489
Date: Tue, 17 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771319093
