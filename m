Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D28B2BEFF6
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780131214; cv=none; b=NQZPqjNhqKTCoFU/OiwHaYIMu/7VX9AB4Ojr2dtjSEhkbUf452qRC/500V3wgsv/S5431pFbqCZCXddxN5SOpluYyEYZFOYUBkqzbPL1IyGbYdH3LjX1IU8fg0PR3Pnknj7oZKOaKkAi5Piut6B39MvgyjLZ9EtmzRhFv/+gXx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780131214; c=relaxed/simple;
	bh=hDPja7mTq04ZjwBwUi6XAIRbVvagmFQrzq4LeHIvQdA=;
	h=To:Subject:From:Message-Id:Date; b=Bp5dzjJm9dJnQCJZeR6eoqe/QyK0pvTShusn2Qpn+/EgnFamdPFRp+vE2DIINNWNzFZ85ituLzqVATz59FDRMVkHPuuaX6se9AZ88VdOLUTtmEr7TB0XfHeF3OzKX8XMWt4nO9kJl53xvG9HAv2eeWOJuxNeAXOeNl7ZrmgXc3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuiWuqV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuiWuqV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB392C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780131213;
	bh=hDPja7mTq04ZjwBwUi6XAIRbVvagmFQrzq4LeHIvQdA=;
	h=To:Subject:From:Date:From;
	b=BuiWuqV2W9nUYNMA0sPZeXahwDtDxA3uacaFVhyw5P255Oy9OmsRb0IubdTMYI9cj
	 k5FD/9xDBNly8u6EBJwtfy4ascE9EUZFU6mZ22RR910TFEptazcvrTX0uuk+dEhBXs
	 72CPddJJPuIkMWZxxSCVrTf2L9xVfTpiDd4a0Vkh3W8xczjTCuv4nTPIiqZNJnf9cX
	 snS2sNMw0j2G+2iFVSHi4aOmUGYfsr9TUfejG66rtNqhCEuA20pmChwUNVaMFqWtuK
	 InWSSwKd88lh7kYXmmJNHlQs4EExsWJviBCyvkXSERT6nIitbQ7X4mX+DmjbL60Bvj
	 8DhG7bgpF+0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83CECD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013121368.17294.10839169876000477531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc51150bf51eaa9c634a72c2223cb0b4ed904f229c3c0f1d37a8236b226be30
Date: Sat, 30 May 2026 08:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780131213
