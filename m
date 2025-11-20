Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040B92F7457
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763631714; cv=none; b=Mud83lZC0hOzr46R51JGnrJd7juV+qOKk9/v+vpguvg2hHVb8dxxIg6aUaxEjwAzD2dYle8HGsMbtLVJ5LbTvpWkt/RLJi7WI5wWN7r7gXjCYb493NDyFxtUm6NBLY91eufycZAESsXRpApabxmCPjaLXzCmlvHfEXWNICuIpss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763631714; c=relaxed/simple;
	bh=B+vsFkYPyB8U1XITOYP6EpZMplV3JpINCA3vF4z4QQc=;
	h=To:Subject:From:Message-Id:Date; b=m/a9hAT1hh1n7oDcRPUvE3NNwLL9G8SZios9AAgi5mwKGxa6cAbb2CeNpkYp4lhm4B74dBXwsQsupJeF3uVpISok99oieX9d9aI6ALf810efD5xf5WTvRxQn0MZe8GupR0DdCicbaHmkFLXpfK5Ft9VOTLnqc/vrFqaAMh8UKd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBD5fZl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBD5fZl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7224C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763631713;
	bh=B+vsFkYPyB8U1XITOYP6EpZMplV3JpINCA3vF4z4QQc=;
	h=To:Subject:From:Date:From;
	b=mBD5fZl1AYfv1SAZ5aXLZ19ltv1JFX6q8JgXky3XGPBZSFZCXhx3XA8kIDfncgffM
	 kjONx2j/n63XlxOxifqq960K11NdlcI7czVLFLWbLQwNgfvjaZ1JG81YGOvn9vdPxr
	 1HZG7c0KtUYLMA5XL/Ac1lOVxg0fBB1jTnDSVmBiTX/OrRBy2zi17OT6CzvaRsO7HG
	 D3aC7rU+Tpxfb+/1MvOgCIxkmwxNR+vbTuegEdZCKiO0Kh8urJLBvSCtkz7j9AQy4R
	 q9CPT4syIz3SSGhXoDosHDQrXaavXCzWcEwDhf9JYBhsMw5ytXuN1iz4RUb2+A4MFb
	 dvfOv2txaiMMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95532CF857B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363171360.28376.14427055118272661445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a76dd557dc932c2cd8132daa50baf43f6e2945cca4c3876b242bb93206f116
Date: Thu, 20 Nov 2025 09:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763631713
