Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C88D1C3C1A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737587754; cv=none; b=igHqu4agODy3H85r7eccno0EBm/F8ABwGFblFBpoj7c5xt6JjIjk2Eo02m4Zlg1lpov8oIhLuwSgm8zt7wNNSOnDlhNTuLHHGs5/oH2OnOP5tvrzvt6+P+4CO3VuA/g2lSMrY8rAR//+POBgnwWeOw+C5eKF08UTBNFIxHl7c2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737587754; c=relaxed/simple;
	bh=H4TVELA4SKk2k69SK4eyfaoQTOBYxXs3fsBYBC0r+fE=;
	h=To:Subject:From:Message-Id:Date; b=QWsrgMH5LY6z/qgu8tR2CxQaTz8NQgwbVrzW/V2Fc8kJqvsPEkWxYWfBxFDhsXMHQP0F81GQT2KCbetzAVXn2DrQCUlsbeH6xXuU/yZHpuPSOYXIvvUBqJLl33+x4MCgjSl0MXq7TghlcKDXie8g1eEMK7nv4paGlDjQIK6ru9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4R3Ni9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4R3Ni9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A25C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737587753;
	bh=H4TVELA4SKk2k69SK4eyfaoQTOBYxXs3fsBYBC0r+fE=;
	h=To:Subject:From:Date:From;
	b=k4R3Ni9T2+9fN8AF8ExyJ5LZNuMEwfDtfnAHlJVyQTOlQVlF+Seps3gts0z7O+pIG
	 n/4bimE+aNSsm+CBzsT87Yf9Dz4qaclEu6qxY0G5F9q+FwsBsSAGi2HvCf2tHvHmVz
	 aXwXtGffWQ0MbqjlfYw6qLb20+XGexFZ7/CI5fkvCHEZCuJR+UxH0jmJamHwfFWCcj
	 2edBsxJPaZGNAgrmXU5I8qshJnB2herzzffbPQchfpyZV6OQ5al1qHpqMh5mtFNy42
	 nqYXkQ/1cMrxFI4kgoV2XzqskKYeL8ToZGgHLfbuUP7hzV/T3TgQLR9ifkp44OxVaK
	 D/2zV7q1rgsZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9829CC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758775360.18243.13645147248547931230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5861682c6dcd647388aa7788af993fb10f1e71f4a5f9e7c82241917e4d93f2fa
Date: Wed, 22 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737587753
