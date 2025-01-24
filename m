Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FB014A4F3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737713754; cv=none; b=VxfwKlRs1MGDCJYleMYa5TJdfNA2rFw9c3kNhTy+MHvZ1hEvl77eIz2JZOcJ8PROOzqk8cyIGoPYi5gOec7H+MAfZ9JIkTJmKSz/BB4KxgceP6Uv5xTh19dOI2UuZ5xBtU1uCkMYztadiesZbXpmFKG5l3rG6XhPiyuzkW1/eWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737713754; c=relaxed/simple;
	bh=D/flhnDl47+9hzTxrKhqjrGuYmUH9WTSFBFL8RTJOKw=;
	h=To:Subject:From:Message-Id:Date; b=CBPhlSmHrGtqcI80D9tUTjSnMoQIQmtTnT0MD0kMaQ2/OgyVQlmoP9wXkoWpwUwHxZQu2jGUiYcvQqsRbFUIvm0HtAYZfpHHedEcrTigjPw2fMwp/UXoG1EyoNAMlKT2ceB174TbRapMicMI2xmun8KWA2lUCOnH8bE0Y8VxjeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvIC63AQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvIC63AQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D37C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737713753;
	bh=D/flhnDl47+9hzTxrKhqjrGuYmUH9WTSFBFL8RTJOKw=;
	h=To:Subject:From:Date:From;
	b=cvIC63AQQ7yuZHPDtj3SmSNMNLaDOWCyMLjiVLjwPABJT0ps3hUeWwmRBpCansSDs
	 ggAsg6uPjVQczpDs2SOsHGafXPnPX0t12+dtVaooMpEvDbRuNi1Zj3xA5p2WdXrZR/
	 RC+8WPFuO7zTUyMvOsKHmej21FHAeBrsekNihW+F3Xf4SgzpaBuKyHAEeBAxb3TY81
	 j3uaSaeZUzFTIN2Zaf7y9U0g0AI4ChEYRZfK1i0XcIlnhvWraq3k6sAJRk6/VEo8Zn
	 fYMtIwjkGACxXqf9A7CwZIRhJPFH6e4fFv1Hk2gVavoLzQzbg7YyhwfQv44m5QEUcz
	 RbLokZKUIaYCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA5C0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771375358.22884.12299678568852920229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf1a4c6a083e3f2e86c5fb02c72a508f42d1c19e39d0b147a1dca02275adb76
Date: Fri, 24 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737713753
