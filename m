Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7F68F49
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765608174; cv=none; b=HrkBu0LlDZ8cDdIzSHC2YsNE3ks7MeY7VlS8HRc1BLjf8OQIGj59nZGg16MwtvLAH89AUQjdaD4gI/fpioE2Qxo4BLnhJsG9tIOlA04RTyVgChNMpxLNWFY0DPfPr9819byLGZmy3dy7ZucCd3WzkFr1a4AxevFx/pqpTQO84GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765608174; c=relaxed/simple;
	bh=A41ux6ojto+GFyImQxZ3wdY+c1veFxEXBmWAEY+rQLE=;
	h=To:Subject:From:Message-Id:Date; b=O4bysU/YSUzkfkT/NjXLPHFmNU6fNcDc4veV0aWt9dqM3JdV1AsHKBibxeiPKHETXyKwoULZNG4BCquD1MmaXzrEEvrId7h7p3IyjbUintMJKudr38GYLCubznc3xWIkX4mV0d2oJgrxOO0m67PXWDoMhC0Ts0K+6gVwwQcX5O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FojGthQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FojGthQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6F6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765608173;
	bh=A41ux6ojto+GFyImQxZ3wdY+c1veFxEXBmWAEY+rQLE=;
	h=To:Subject:From:Date:From;
	b=FojGthQC2zqXhV4uRmmkHjR9K+HiLotLkUOg0o6oukJ/QYoAJBLytTRFcbmWB+Evd
	 7D/eMRJwaUQkZ0jcTO+RJy/4knFbN2k9N4UPoHlmKHFcT0NpvS3PHHVu7wvZCkpqlq
	 RcMrnwktF1wv0eQjPquf7Drb5m25N4X2fvrX12jHVYe2c9Ua4Pqlee3StWbfLrnb0+
	 3RWaMsO4t7kbsprUGirfUshxsNB2Uf30DvPBV44ikiwqlbLgO0OmVLaBGlXfATR8Ei
	 2HDsrOAraMT0eb/007cC7KbuNMV1YUCC3SF5SxYz/6k4u3UdWCIL+BjN8Zk1hJtENj
	 6werUoPNrrf0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971ECD59F75
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560817358.10617.8177166254146243291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac32ab0790f3d999feef172a3f983c758923457698680a994221570f6d4162a8
Date: Sat, 13 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765608173
