Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2394B7640E
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761313794; cv=none; b=ZT7fdUX4OaTWKaUsuB3tmo69nzRCDeJoZnJkdDvgHKrpKUXDIkbHa/i8N+CDPzHnLLZ3y0qtihh0PH1B2emFypoC5qD3lhfD+WoiMO7IL8IcQVRPQ+jKP/U/qn3mJmzneALiVKx+2dlPfRhzqlgkZNg4UPTQoD1zGIXTY9amBkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761313794; c=relaxed/simple;
	bh=htzph7+7u8HOse48IN5MrfjBjoP90fLH3WSyt0NKT50=;
	h=To:Subject:From:Message-Id:Date; b=l11BQ8W2blGGXido1v49nSUbwbDlMMzZEg/K18lQRnhe8GfXg4j6N57JLFdNyFpeni/MSXQMVGGJ7c9Jgq3c3h10ZNhEhTAktrOywoC3Y+tfRFtaOip3lV7W2Z9ZWtuz/BMHhlfNReMpBGiofxsUCb6zHK3VYOvnQu1BZxBfZcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBIJkKh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBIJkKh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61C2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761313793;
	bh=htzph7+7u8HOse48IN5MrfjBjoP90fLH3WSyt0NKT50=;
	h=To:Subject:From:Date:From;
	b=CBIJkKh38Od+ajrIZywzBMj/y4QELnKLYVfL4z8TW+MZA68GCFa9XjnXRjmrvXTyt
	 2F01EVqu15+WhtVufq5M5i+d6IRkXXjpx52Xm2dUMOjM0QG/qXMxjiFzaGmWZds4J7
	 rRg8nxwuw2UI7/08peIltbAprhbcS8raRc31jaqzpzasI4Ub3RlAt8URLOAqk0tPCj
	 QzShCfbhimsPzneXn0PzYEA4QEJLgnriaJ4ydhqrRHHE8esmyueYroAS0Ez2dfNpIp
	 u5Ni8zxgwe71bRj77QK7LsZcHILTW4SpzLE6CjLi8fE3QwsN0k302WI7EpCCdh6tPD
	 yuJQtdPyQw29w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928EFCCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131379358.27805.7836143871896315009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c30f3e7bc18dcd01a53ea4e0303b7309a76254390fc00113397e239b180520
Date: Fri, 24 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761313793
