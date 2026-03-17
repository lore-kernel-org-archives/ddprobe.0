Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36F91922F5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773722694; cv=none; b=XyVXCbKh7C+VqjFTu513+7Fl9l7d8g2HFFxKuNxULCpUcGnIEYnybK+3pZLRw4uPE2R57CJH29WKTmffoJ4yH6LmPcXD8MA5bLVTQbH0j6dkTqjvg1jYxxATjGcS/AzOMFu3hM1Ylllpbt8WYC5CAT/u5VK8U5SDg0/1uQylK+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773722694; c=relaxed/simple;
	bh=9qfqWJOmhBEzl1gjgIYqmvLjddGK5aNcBMQZbrzwESM=;
	h=To:Subject:From:Message-Id:Date; b=QoHM9eDR1eHQBetKctHiCxBQEcuioeodVzJ8iFyprdRa77LtZ4yd6s/ew2XnyxaFcRvI9ECYA+hNKcouQZVUVCaT7M6cTWVOHZ8cJ3ZrHgqk9tBXiJ0KbxkLp5DA2rkDAjsj2nc30Y/8K5rXwlNCbLqG5XqYGBLVzLl62BCUniE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0RUGSxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0RUGSxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B6EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773722693;
	bh=9qfqWJOmhBEzl1gjgIYqmvLjddGK5aNcBMQZbrzwESM=;
	h=To:Subject:From:Date:From;
	b=V0RUGSxhjxGSvz0UhYFZ6OJPloiCBN0qexvkPh/FPyi5cDP29No5RFiWGskonvvCk
	 wLuHrE6yEk50g/oVdFV8L3ub6T+UdF5NB1qsb+qvlIjS0L3PsfZuoLcZL9zxy7BTAA
	 Rf1aAp6IuH6+nPJTyXg7NDSzpAvMglEWcfMmy0ITacMRO5vfrDDJfAtt7vuMOpz4MO
	 xlKunIFRpaITeh+mh8n0jvWeJtHHPeuW5dicL+Z7FpF96ev7MHmoKRBsAu4mect6wL
	 C7DRpw/sE7+VEP3LzQI5/5d14GTNd3UUxI5sqwRo1m3Xx/XiurMO041hFv8ISqvYzV
	 S0EMJDeFmM6kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E8FB5EBB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372269357.7574.15726374196229798961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec623b4e8a5e6ad0ce9fece6e3beeca7c0cf283edca932bfc6cffff69ee66e7
Date: Tue, 17 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773722693
