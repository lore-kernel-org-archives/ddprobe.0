Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9764324B2D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761908993; cv=none; b=MxmVEbZqSp35TkTdzu6Judyl69kjTSFdTqGqNUY5Z/UNgwf5K1yXjYCbtt8FJ3K08zSMqapbK4ynwHxOG/w+gmDiVqoU7cLhEzA1p3AWL0aa/1JR/YSepiGDg+/dlpX8CJI9jdQ/N1xYzgA95Q/MzVb01BDqmq+A6B8tV1qz7X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761908993; c=relaxed/simple;
	bh=JWb3N5fMIQmr7QOnah7FH9UlUfT/3sXgtvL/D79K6Es=;
	h=To:Subject:From:Message-Id:Date; b=PAtDLuj8RsdqF2m3DtqD/wAI1U4uWnkIZis8O1//i9jPEvwqvQDe6TWNuMU8H90j21OmWUcp+BoRr/HJ6HF/LXJmIFVYsKJjMFRBg8e+adW3R+PebqJq4SSpsA2dQg524DvqIYZeFZ5y47IzfWPxohRvzg4mbQk1284ZqjxQdSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4WpTp/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4WpTp/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2446C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761908993;
	bh=JWb3N5fMIQmr7QOnah7FH9UlUfT/3sXgtvL/D79K6Es=;
	h=To:Subject:From:Date:From;
	b=F4WpTp/fuU0Prtsc25Of43A1HaCHDBufS/gZkuFoqeIKym/RRYG90Uyemy8JUozbO
	 5WGk9ae+Tm2IxFAbCNxBPXuSksZeCDs3eWM52xbzOfUJKGUKRObPGc3yRD5zqO81gA
	 UYUrax+jfrWS/ASfSjTBeWU4jgDNWsPpmEHSTTkNlazvDAqicO9S5eEHRUpsJixW+Q
	 huQTfkVCT5/y9VC9osPdfgK9ukfqh8kDGoL3cYIk19mK7PJ46ERxDwbg7yGoQHcJbp
	 As89R+nb0NtynQLCepzTLPZmS0A5M5iGgJLdmTy/iPZpr6vRb9CEPSuhGkipwSFuWv
	 81KxDtkPk/42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966CECCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190899359.22863.17108024929857497404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f164d2186bcadc97cf91713cdc997f79c02eb72bc59e3687e5e7c4e366b2442
Date: Fri, 31 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761908993
