Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289E042069
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728707154; cv=none; b=YkZLppLrvCvsxF5iUSra2TipFhr4UX5eO0N7/FYYfY1/XPmh3C4hRx3MgaA8efiY6+FivyUHQoqNV++GBUALg8aFjfmZUbZGEWVquBGh0wK7uvCjYfQehoA/E8KD7CVovlgfMQ14DRokHcNoDll+qGkfGUDBiqD02oyke5/wp7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728707154; c=relaxed/simple;
	bh=Ar3Z/iVqUCTRbth73tk57uTx0sGq2TYsxk3J1ZCmza8=;
	h=To:Subject:From:Message-Id:Date; b=SHGTjI8KR7bxr0MFjrgvK72iDS0ofuOVsXyx3sugNIjTaoo6Pa7ed4QRyLIgyrJTb8fI7ncm9d0dtiYnEVa/OliLTYRtkCYV+UHfXCystQXEjjHIWMFWwvcvoBmamCbLnAdysCCxa79P263fM34xSFr/Jc440Tq/f76JN4Dg3KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePaf6nz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePaf6nz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CA6C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728707153;
	bh=Ar3Z/iVqUCTRbth73tk57uTx0sGq2TYsxk3J1ZCmza8=;
	h=To:Subject:From:Date:From;
	b=ePaf6nz2rNmBBAO7gGEJ2aHC3QwUYl/zTfEFl6dK+EPQWR9xdYa+Uz8pUPScObdo2
	 sXcvsTV/KzXVwtVV/tDAxWvj4Bd+JCkMtXpj17jE6u7S73CAXS2SCSnn5VOeWjNr1p
	 AZlFvXRBxBvTP7xg3qW4Ua0Q8h3KG/CdDgH3dlzDS6cI3/Dfx8x4o1OhoTdNC4iQjZ
	 xsMI5vbi0jowao1/vY6OQ8M5mhTw0gf4lquqDdCrUvKiqhlsNeo+KnF/VkvrfQsGZ5
	 GU84sG3td+5JT7dZca+R5TfNavG3j6i63HeoPlYEW0oMAcBh4rV+qywxY2bLYnyvFK
	 wnVNIOI6u7/fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB744D1A435
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870715368.5814.9718679587101787292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa5c2d8bc25e79f11579640f3a326e1c9f1cf9dc1acc1cc74e0efb871040e20
Date: Sat, 12 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728707153
