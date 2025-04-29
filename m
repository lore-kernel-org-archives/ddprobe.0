Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F98B1DE2D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745915394; cv=none; b=GEzQzJiKZPxsbGtBLXuLHthzFIrACYowml6xXq1r1MNrBRQDrOnBwzm7n1AlwHmzZYKwVL62FWrNyWbxQ2WbjHPdssq4m6xctBF85HrTkO8JnmfCn9YIHQyzkzTj6Sc+qzyHw9SbkVVOvdwBnead5cNpHIImwgAafDV6nxrpaa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745915394; c=relaxed/simple;
	bh=pjC64dP9kD2eQuy5M/oMOytghqwbdFt/H6lGIipJRc8=;
	h=To:Subject:From:Message-Id:Date; b=TB28jPD1VsoLOX5HavT+hYGSMJAaumszLHOq702aSNvQNi86dBdyBaUbjZZI04hQsrb1CyGzghOtHd76+6JlMYUrYHv9BjeSDD4tNlqiS+hNwxUvRYFYeRID2lD2IQiwgFzPEtbh+g06ARS3KcYGyp4onLw0mIcbALEBnIHSxIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQ5l3w6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ5l3w6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22DDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745915393;
	bh=pjC64dP9kD2eQuy5M/oMOytghqwbdFt/H6lGIipJRc8=;
	h=To:Subject:From:Date:From;
	b=LQ5l3w6wt4RTQRiSIyRpBf9Hsl9R+UyD9SGjWtKQu+vulpWZ9oatqj+snj2QY2x1J
	 Y3j3Ao9uOzN9upNM3prjxxTGlg1NyK/hz8iNKIn8BJVQuA5h0KlhUU7CFJzs2P20jL
	 3IwznSpiLxMBpUH1mw50n9uIxwEFApGlDMufk7YHDx5rFEvE9xCI2tyrDJ51rMiOPQ
	 4YPz6xISZw1ex3JnS76igKYZ7RbRHChxTsUw7bVmsNI6KtegRd+s81usKHjTgyeflo
	 Y28BkVwy3RhNsEmRmoUHPWFlByNJrLrN2dxlpC5lM32IMpeHeitLIXt4uPM+kF8t/r
	 qsrAQMorUp27w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE19C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591539358.18065.15050067125929395534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b31ed35748374085f23d02bd745327917ff64e7ae69fad24d17558b9482ed33
Date: Tue, 29 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745915393
