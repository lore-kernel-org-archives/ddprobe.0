Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A035A17555
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761525594; cv=none; b=Ww7awPzqlbt4hU4rbO8L6WHt2OZjzEyeo84jZ2McAtdTHaXxVI96XSpYo2iTnj+rO/2in5IwWr+6bMY/3KdO8Q4QwQtBwcnHqHc/SjQe8E5wbJpT1PcUmzqq3U0rHCZJZelh+UCgSWVHf5/RGkRQmAHEkPhTgJKIjtnd6X+fW8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761525594; c=relaxed/simple;
	bh=DOWxAdpyRyeSwARrSe0vaLYm5BM8o1kN3TBJL9zp/Lg=;
	h=To:Subject:From:Message-Id:Date; b=N3PmgG4Cx+KRwJFPN08HT0kMtZimgn3nFrFhNuwSZvayKgC3wszIMoQBkuA8eGW+Lb7MsHb57eJOob9LxudBLcqWIS5crK+ua1HX0ABcQLaJ2bYR12YRmKH2VPuo8m/LXgJWjyFGqhT1fiuElDv9jYXTIP6ZEurZpEOI3GtEQ7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuwMkfX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuwMkfX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761525593;
	bh=DOWxAdpyRyeSwARrSe0vaLYm5BM8o1kN3TBJL9zp/Lg=;
	h=To:Subject:From:Date:From;
	b=AuwMkfX7oM2UzUmyEkBbK6Rs82VyTiNgJp7gmYfUY4HkvSJloUkVLdF8n2NaJfLv0
	 HSL6WbJSZfgTX04X4G6Xip4Q+uzZjDgNznBFCi8i5hQvGhWWHIp149el2m4SwQDR+h
	 On4jugpxdn01HoiU3y1SEhMJ90wx/Qbks9U+h31zfLTkQCRV7nxU2xv7op0U+jna9Y
	 CNyjmsKA8QmJQYfcyymmNBVI9XAApNbocdSHSKF1tnnWBtbib7mN6x6e1bvmWfUtv3
	 6ByvmFC5f+I3BspDxNl+BGyvNYEdLMpcVcSNxLY1PK3VLbmVDwemLBfNwmfK879a/G
	 2aglzNCF6Ed4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCECCCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152559358.20294.6811014679833431476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93eefe8254c57f0db1f49d293ea8a318b8a9f4e3a4841a8c344d8360458953e0
Date: Mon, 27 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761525593
