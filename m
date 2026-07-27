Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222BA187346
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785117034; cv=none; b=RnqNtQR5O+NeelDyx7C3IycSNxu1/L+NxoZKu3uSkNbnOzXxP/P/ADGYlUDSZO1JBVIm7BSe9WG340td8/JcUhwJAUT34lqvvoEf0ByNAlcmjagqzUiS/RTk+s7nPGKABtLzmhgqmivZF4hINSgFNzgFPshhL3STCrw32OKEOYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785117034; c=relaxed/simple;
	bh=eFmagMdKOQohF2te26L17xkwBb+FB6+OKkHg90YRnXo=;
	h=To:Subject:From:Message-Id:Date; b=bJtrul2lSirr8F7Ofs99tXj3U1Anu0l+NvPC9JOdCc1TeCbUzL+QwcoXpVt0UabyHoaIJrBMYCeKlhEknvoFDphuXZWLdVrKVgU19tgDxnJ5C6ZeVa+mTdX2AImu3MX36Wxss2Om9ZRVUkYyCJSJigew3xp0+udTn83F5lUV9vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUQcgM9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUQcgM9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D55C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785117033;
	bh=eFmagMdKOQohF2te26L17xkwBb+FB6+OKkHg90YRnXo=;
	h=To:Subject:From:Date:From;
	b=rUQcgM9eDbyB0sqR6ltn+5NG/z0Zo4AUaScIDYo7/XQk832kg9d3AD1WArVHYd8lK
	 tzMrH4bA5iWvo7F94VLat937V2Ud6va905SU5iJZJivMRq4LnAWyUVz6xQf/XpVKz9
	 8+LTeBoOTNF1P0KZMOC8+BqXh8zqZd35RjBb6Zr6LTXS24EYk3pKJz+lKZORVl3v3v
	 LSzWRCMADsY5BXaI9wCntKHN3mYXb37mV+rVJoWO3gIJx/G5MLYaREOhB9uS5yFGSx
	 edMfT2ASdhSVOE/61IHxwfi3NnnICDURBMRftVpZM+gy2QVB+SWbpRF+W7VMnjQncd
	 SakIUFwRjY96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDA5C53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511703368.7795.11587544585068478833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09d214f44bc171696c714424000d31e2927bc06be0a15e99bc194fb94d060da
Date: Mon, 27 Jul 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785117033
