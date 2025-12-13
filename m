Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040F3182D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765602174; cv=none; b=gSwJwNnlYYz7x4Sxq06tu7uXcPnzBvR3VNv7f0XcNKEhbkYFAJNfX4+4FVvnKKf1FVbqhlV2uO3ubpjj6gIA1yh0sNrI+T5FdR+4gFGPmGICer4DVezXSAMfZqo2oIiXVQ5hqKqLYC7f2vwWe0VysV5F06TpHLA2STJ5xe9XTi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765602174; c=relaxed/simple;
	bh=1TQu+3LZ9DwZ9ondQ+0Ov3vjF3w5bGvZ5Xic2fyquho=;
	h=To:Subject:From:Message-Id:Date; b=N5K3QCFEIMVQQNU+uiVXINb96CNarW0N3WfUUuafgu/quRqtqT8hxFcJRwz+CIzNcH3LQ/zU4Uthq/Hc3YwzJD3VxLDP95yWAfOxguy1qr+lu8NIgyYzV2ZtASE8QdjqA/7nhN2W4LasFwC/wf+hhLvi4J2zZVqd2ttadySA24g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQL/X5Ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQL/X5Ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765602173;
	bh=1TQu+3LZ9DwZ9ondQ+0Ov3vjF3w5bGvZ5Xic2fyquho=;
	h=To:Subject:From:Date:From;
	b=bQL/X5LlzIUkxdi6XZqG4PnNTqnApq26YaSYiJw+/x7/mL+1e9OMOmM3OTAjUrlOA
	 eB09kYphGZqT8am4Vbizoe3LgYyXCa8TtJOUdxYxGa9mOfYiDYUoTDSvgmskGe61gS
	 FzklFu99scf4UEtIXd/VUUB26yR23kVg53/VMj6IOwlL4D1cCJs4I4qCEf40emgkgh
	 m2BYZSJ8yBfaBqXzv/ftnUyOqQrDYoEU3s14Dh7Z39a8dEtZB1sKZilORADaSvOlID
	 T3FOgf89LAv9Gxs+OKtMgAK89GizYfKC4u64tCw8mS6t2BaMr23MsRcBvzqgAV7/aj
	 LC/QIOEHlCVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BFD59F6D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560217358.3795.3608451858645132133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deef98c36bb18d6f46bc73b5a9b46eecb0d56dfc5d269ffe338db200ca13d49c
Date: Sat, 13 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765602173
