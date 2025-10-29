Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1417354AD6
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761761394; cv=none; b=l/NGg7ZkN9QsblljZp7F5raVYu+v3AzQ4iWVzpxfO+07nkxHicy92fMfFQSImmHgUzcqfVIuWXHqYAqSf/MEs0yK27fI46cTyEmHI/uUwJQq2vnDhqHtcHM8ZeQVm/2wtPgAmL/7nye1rrRNN4YSRzobJFvZTibSibEwjW1tIRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761761394; c=relaxed/simple;
	bh=1kTMBzWPIct1mXJnpjcmD+sQCLVeAG9Iz9YlTRcBDPs=;
	h=To:Subject:From:Message-Id:Date; b=S2d8qzDBh1vQRQ+fy8vrsYOpz3oc0OjpQzpCuq5A9iO/GjLQxFIFpPhRVx5Jm/wfa/znGfMZEkz40mK37N0w+sJvcIJRmuAKE3gNWhlnlK+z9GUpSIrrjrFyMpiV7QrmHNRmjFaBkZXyfaTE74IL97XUGii94Uj2ccd5lRHVeQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXr368Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXr368Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43CEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761761393;
	bh=1kTMBzWPIct1mXJnpjcmD+sQCLVeAG9Iz9YlTRcBDPs=;
	h=To:Subject:From:Date:From;
	b=mXr368Qr7TSJotZCVQ9MxWFlXsQZOD33QuG2/W54vS8V5I+x2Umg8JLbbkz9rdSS+
	 5uxa0OCfgMVXpGqlk1LPtYOSDXyJk4DBMDLMWkC/uccqrbDA4RftHvT0271AYajjUz
	 8JaRcf+vNVnqJrpiGVUxJb75MmFrOIKaH8YOuSfDbYQ6Ts0PET4Z3racPh2EOmHHPS
	 KrFwk8sA3MmTGI4fR9jAhBvzraltExnVwFIb1cSqbx5oXGCpxrLe1RQ1LncsrDQZpj
	 8BirKlFkr5lcxwP8QkMnMs+ly5xgYpD9D14LDzpyMfLaiMheHBMxyYAaBofeZESAY7
	 Lu+17pJfEscRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A74CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176139358.5504.14679703472946569657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45cd63d84693961f9984a982206dd584406995dfd9a52f4f5f1cc7be4449ac24
Date: Wed, 29 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761761393
