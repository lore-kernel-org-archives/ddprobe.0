Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8942BAF8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743866394; cv=none; b=oVbVmFgHNn2f6ZQd4knHzxwfJcjkOs9f6sJWaY08u5wlHETCi2hxElG/QcJMQm6n7A+W3s6T7Pojd7ROgT8nqYLo2pXBZNn7VKRG3C++8PVXlnnbfu77AYuLWGGEpkqppqfL8UEHlpXiIC9keHGmezIlVBohhjvfpoTv2mAFC/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743866394; c=relaxed/simple;
	bh=0rAM2u762l+WDvvhPo1WfxjXj67g21ldvAysim8tIJk=;
	h=To:Subject:From:Message-Id:Date; b=S/7g3tvOfWUvVb/0AMJEUt8OPNNhryNe87HR3SE1tNYrQNbtl5dYpgc2jdkosjxQIyeyUWBllRhmMc4x04pXiAKXe+sK/g3uaSpp132+JoovUbke4R/MH9H6OUW1DmLMm4gmclqCr8sBb+RdthPjsSf20eH7sIQI49LnD8zOmR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK+X7pl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK+X7pl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB36C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743866393;
	bh=0rAM2u762l+WDvvhPo1WfxjXj67g21ldvAysim8tIJk=;
	h=To:Subject:From:Date:From;
	b=mK+X7pl1trqVyR/CZWHu9eQ6uhe2adF1jkfLg4l4BllVjZDLzAES8Z5DLntQuw0RK
	 6fYAKEHnvXF7nMdd89AWadQ4Yx/TlmqMNX9GhlQmR9Mv1TfkIZJGvdz+ZkFqiCZNzo
	 sPlXMh8M9qDj97fDlsRTKxklrL8lF5SYdodwEiVwOennBabJMIryH3DE3mfYrv02YS
	 B/KV/dapbCrSSLplYVediz4H39BjRHtXZ44VACQLKgrpB4jEf1wDL7bI56W9Zi+jd1
	 K2jlr+/F5UnLf4frg1nvGWzhz4a20MEGTQU890Hd3TG8ka0O0+p4MyXvPoK0nFRPVe
	 kUD1U+Sufn44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973D9C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386639359.12259.6048408370441034109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0571921f96bbfb0a45dd293831004dfde81b28652c95f74580141e45d8e28879
Date: Sat, 05 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743866393
