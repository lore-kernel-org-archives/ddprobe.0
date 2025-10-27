Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343FE27A477
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761526794; cv=none; b=cOLcYe0HxL0lYSvUQuSptGnSAsJct4dZnWwpYtx8p/Y8E6XMGJE6TBe/H5Z6luTvlpUl6L9rAlHDhr/Y7A6A8AsfI0wo9ZBTbWQchkfdXflVmOCC6c7ScWtNj/r9dGMYvlXXc7CYJqP46BqxJDl5qajgbUWj7qogWyHxh8wvM5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761526794; c=relaxed/simple;
	bh=xTuSQ8T2/gGA2eHkVrBFza/wr8RXAzxNfe54aVk/gfE=;
	h=To:Subject:From:Message-Id:Date; b=kkPWVklUQaB+u62mNeCRUMVzyJ9izT6LjBx35d4FlMOa1HvJhZOFwIauZ/Gtilm2B6AFX2DAeT4XJ1PuAaT/PrMAuVPyXPldL+hcfDJeSf6bN93MvP1TTWzKFcgODv8rqi0nozO7pJ1oPw5B7owbDNmrtY9TyJIT6bMxDRc0Hq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpNkbiiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpNkbiiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761526793;
	bh=xTuSQ8T2/gGA2eHkVrBFza/wr8RXAzxNfe54aVk/gfE=;
	h=To:Subject:From:Date:From;
	b=cpNkbiivemk29HZ4YlfrY7LHvPipQQKekjcbZGzZ93XCshk+W6G5O8wmLFYW9zg4h
	 8oHfRr1Wf0JKkTMZslXoVKMSQ8wEovFl9D45HRKyOg+pkyi03W0tS0lVBuZekmxKPo
	 pf4dZ3gPAn9wJ/C2QW0vv5O87mDEIRxes16fN6qYaN7XnWl40TyjK+UXNyKcCNMwLo
	 l218lrrgZCIXmkiStyvMIXGg2OHkcL05lJSruuqapB5YiJFYIhRzYXVrVP/Z3WQ4vh
	 XGSE8bsTQjUCMxGIhRHVSNlDVkVtYPU+fyuS2hF4YOkKLgsx8KAqNjX/vv/agKFr6V
	 60ipfGv4gNIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F182CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152679357.15792.11795282306778940469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403b3dc4f489d84403d0c051c7c31d7c531f61375a4a09615aa73402de0d1192
Date: Mon, 27 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761526793
