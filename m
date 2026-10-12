Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59281405F7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791765634; cv=none; b=XzitGdXGsHcVk/8ya4Z1wK+zUVQ2+SXWiFto/3jnHfhihNTDCqoafYoi9Xjszwiuv1jOIFIYX4xRVovqD0QAR1+D2GtLVQ5Ti9hPSIRLcjGZZXiCIn6mgglmdM4lVWyERAciu5cf+tIOfdRu3vb70HKhV0OJj3r5jYIksv7f8IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791765634; c=relaxed/simple;
	bh=pI7D84Qf749RIt+s7hjfWPHmfaOiO7bYtvzcPSI8G0k=;
	h=To:Subject:From:Message-Id:Date; b=AUxMrzi9kEh7mzcINLxs3KX9Swadf+CGTxjSY64QKzN2zd2DzSdO68uazQBaJyY5EfzCVbYqfaE1ZdoGKLivdznJ2OxD3ywDM+EUVS6rpdCHgYHxuMQGv9j5cMGyaapHXhJydIJd086Jt/BuO1yBGxziEtMeRRftD1uE5+RJRfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AD0m47ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AD0m47ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AD4C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791765633;
	bh=pI7D84Qf749RIt+s7hjfWPHmfaOiO7bYtvzcPSI8G0k=;
	h=To:Subject:From:Date:From;
	b=AD0m47eanVyvA6lRP+7wewGw/KK5KqinwIe5EnL0QUgnFo4CmfjVdU+RozltHejPE
	 3uMZ2J0LTtx8PbiiHqRssn5/cSNfW+fu0znHN8uslWt2LquX1n20hfXUo5c5qXvsNn
	 Sw5SDkv5CRslY3UzG1n6ZxmxIjR3j5DwV3cWeArXOYUOP2bhHMvgFd4rlcY7Uv6r5W
	 gjO9TvQahQYi/gjVKM6BEFkLPIyZRE5R1QYZjpTLWatoS7bwxmfzxGgzSaagum2M7+
	 G9Bb+LhTnS+Klq9LemqiUsM5vFLoN6Ofc2jPT/fnal6q5i3JFnAgoNELGwgxrKsEet
	 jExbi6lGIhjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B114ACA9EBD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176563368.5420.17342922048416584538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb728914ecec8458033c571114523d666d23c8af50265da4f6de79bf6ee9e4d
Date: Mon, 12 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791765633
