Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEAB24C076
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766765034; cv=none; b=GkPDpVot2p7Nk4XJ0FHoiIuwphsfchiqUGhQ+4q6L4GXfpkypsoJhKVBPspmkW9Wg8MjHfw5XroT/4xgwr22DRToBnITj6bnsdpCJZ6H8M3JYguEdCKBIKkWhMB6/uoo5kqwpqDiDwbhJdqSc0/XFK3WkddcQFK3SKSBdF0+EpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766765034; c=relaxed/simple;
	bh=7nueByLQKyBj0HyqdMAoKyLkUQ4x5+GEE3OsgA3xRh8=;
	h=To:Subject:From:Message-Id:Date; b=MR2zRJpl3Coz8L8Qykyt6hATe2yekC2UujrrtjsAkUkVstZY52AC5RMcOJvq9gFsqoFLEo+6UE/cXz+2qYvX9uN+T7Ib2OI98IdZxX0iKbVaY7YDurSimF1UYh0hqSsZhPwNP13P/pHbD0nPXUW1aw04IxCXdQ432ILjxrdXD+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+oJ1Uj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+oJ1Uj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB369C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766765033;
	bh=7nueByLQKyBj0HyqdMAoKyLkUQ4x5+GEE3OsgA3xRh8=;
	h=To:Subject:From:Date:From;
	b=H+oJ1Uj85/GU55LHBuHjoCnSwVPsEdubCudtNbn8zs5CP11pSwGkwhIPAs7dxksP/
	 nb0i/ADdXZnNypw6G1dGYnN/t0IR0QSduAg5axf46BDBd9kZKTD7Zgx4ETvTaZRLKy
	 TWz/SJN6JDDDmC9cpQjqVN7xqb01qA+AuyVEjBpUWb7GzPbGedjdL+ukIVIzgbCui8
	 Uto1PseqiNQk6QDJdI4No3RmzNfP0Vkc+WOqu/nuOs42gF7p8G+b6thayZXNLuVI5d
	 2/+YQHs3s9xCrI44bQm+QFt6Y8f9UMiKlbB0xZAiJBQFYmxz17S70VPJzXpdw+NFly
	 zgRNGsYFGBwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6693E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676503360.20955.2286993340651546583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151fdafacfa8c76b558aca35bbfb5f8dcc4829681cffc9754d2d2f262d259880
Date: Fri, 26 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766765033
