Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372D7EEA9
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748813994; cv=none; b=uhfWl1dxDwL1+N+DuQS/oYXGdqU8xv0SyHWeoCs5/ZBzMCE9ntZze1JLQqewCl7SlWO0g29lbchGQc98k2ARvec1C9mw8s5AcM54wmzU6sz64zighpE0fbPH+hNL0DTKqpPaWsI8RCXht7JkgTKhho8qpQw+u36lPjeFHPJEcSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748813994; c=relaxed/simple;
	bh=rDVsUF1csvs8casodIuEs10bqP2EV93f5qqJwuLEkF8=;
	h=To:Subject:From:Message-Id:Date; b=rGqHdkR2mlsUbasrWpjlOsQS1abKkJJ2V7T9Xuq7Au3Atf7WfD+eUz13D4uFToJ/hAWu81RhOYUvqf8VL/zq0pJMnGcbeC6jxlmolrqe8c/T+H5pdJohgMI4VOB/ate4w3X9JPweqvrV8+Gb+IE2zjkFk7teQS/AvEZArwie2hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt8gj+Vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt8gj+Vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4124C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748813993;
	bh=rDVsUF1csvs8casodIuEs10bqP2EV93f5qqJwuLEkF8=;
	h=To:Subject:From:Date:From;
	b=tt8gj+Vct1ZNbqbT2u23CZrE79ofUzOpElf+W0LSHc7ej/egzsdMSubGHxj3Z+O2w
	 hXDf80iQrYh2oZk4pISQ9DuslNdkQ5SwXgLCVIiLHESS1PPo7Oujqb36xx4oDA71fe
	 9SClKbQYXflR35bAMCbiIjcOY3gkI9ZnSLjMzT+hoFxIMfdd6/aYNGGbQWoyjSpCwb
	 vhsjbPXQAlqmu7YSzMvv9TYhZIVgQWuDenl5OA3zT4u3OKctW/tKCIeK6/YqlX97Qg
	 z9fFW2clKcS+Cf/En7ZXVu0jjpCn1HmLFzUeh6goa8e5/d5/Qh/TtuVXkFVoJpyvWG
	 vQbOHUC5dqXxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90345C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881399358.16002.15703314799834750400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46203b09aecd98ff6de90afb92679a98e557d1c1854f6b0f90cbb96fe6327953
Date: Sun, 01 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748813993
