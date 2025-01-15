Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7031A239C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736962554; cv=none; b=GzkeBPtywDViCmXbzdQo0Bo/Yh8oJ2g4UQiGEVCsiEMn/diP0JAAIvuEpt66zs4dYo+7NYalnZGRLFZmHcDwHyMTG7p5oE4RQm9Iw9AxTIc5GCIORJTiDcdf7f+1IeLAv9eNBDpnVOYSABIPaP4mB0hqY6L6jPA3zklpl4YX4l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736962554; c=relaxed/simple;
	bh=6dWe46USfBRI4bnWCpluMh7kxTk06srDA5Km7HA410k=;
	h=To:Subject:From:Message-Id:Date; b=UY2gIEqBor4QyXpeuu7CrDGIdniiVqHTye04dGh/w0wz/rV0QSpAN+djRoTB92Rdox/bTGw1QUbvMnT9Y4OepUkhPtbxcL3LvBUiMWL8XMzmyW0lXyt5R5Nnq7xNMlWAsRv/X7SY58dDRlROge7I4WfaFe81Ge2xpbZTu5PFOIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0V3bMeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0V3bMeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6381C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736962553;
	bh=6dWe46USfBRI4bnWCpluMh7kxTk06srDA5Km7HA410k=;
	h=To:Subject:From:Date:From;
	b=N0V3bMeEMoh/as59qA1KZPBtv0tvdL8B7kWpvYuvw1qvqrZQBeLceAVzyZFKCd/Hc
	 tceb985TTVnPNY781y1Ykq5YFp63/yitXaFvsi8WPByMC2zuob8h7iN6S7TuRAQpQx
	 zkZhNlNP+2G/1r+NRIMyEaNiSq/Lz8JHzRcCMgeLDZN/d0b3kQWs7en7dBlu2Y6EMH
	 T9bYZAswZQ4KgwhCtiVkEDJz6UBMnHcadyGY9b8vY9z+0SbbmMpHGyNn1J6BKWSUrs
	 VZLbnKg+zrE3d5FbkBl2JziFA7lWgURrQ/6Fu2r3ZkT6AvWGc1Hj1MlrBsO6SdurCA
	 gqilSp9nRRBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96467C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696255360.29628.16891308789457743481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217abc01f06cd50318dddfa693b7302ceaade68e6134a6c1c2d00ae41d2a008f
Date: Wed, 15 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736962553
