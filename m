Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D16340855
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753794594; cv=none; b=pqfQukgkl6GH1RLmvfbyJdJ9cpUpzT4RE16jkDQ9sUyPob5DTru2aYKTRU0M3O9cng4w82f2V9MCFLgO8OLw6CbWlwsQvm4C3WxLVduPwqIYKBGsFVITwE3iNU7a786PKJ0pBgJ/gLhYZsQrEhQWiTB59WAKvQ61+Gs0ldD4AcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753794594; c=relaxed/simple;
	bh=M1Y1yeYzmrkqKWVoLxJTBh+IXMWZys9PF5Tyq1Mq/4Q=;
	h=To:Subject:From:Message-Id:Date; b=ZWB1eLf5G000Cky0uu7To92uWh1M5dFX4n5odyNHmp/IEz/6bqG6noYhI7SYvwOSlzAXu0HwN1VeHD5kbW7YAW0XS+uYMvnLDJzvuE6fXG+L+6to99VkvyNsir0zmp96CsyP8bkIZ4j0G2a9W3Dpxdxa57sACSJmzOj647ggQLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uahe7BCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uahe7BCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A155BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753794593;
	bh=M1Y1yeYzmrkqKWVoLxJTBh+IXMWZys9PF5Tyq1Mq/4Q=;
	h=To:Subject:From:Date:From;
	b=Uahe7BCAmn4LGGwIS82OspqvcEPF7UWAMK6euAux3cIrd11rwydknU+iw4LjNpDU7
	 CYm7FOGSE3m8m2Sr4yrFbY98tTIn48rLvoCQMY8k1fCS47CDJ30jwJZhmV0CV8axCS
	 ZSp87hgZwh0/vAP/iaHPGmH3JthpOOVOtl8fuYK9U92oQVuHb33ZydhlQbe1sWwLWk
	 2CTJBLh/blqSkl1XAc0KR50yRgDMIeA0+2G2ijwPb8yCjLsxAzD/UjvjlPgA3Y16Rv
	 uWR5w8qEyqZ/ctP5XGTgVVE2r/AmI31tF0YqRnLtBEGevzZlj2iquuKY9xKSMxs29Q
	 NE+x+BxFKM6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CDC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379459358.24735.5768896879459075399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf1dc2ab9c4a87189d96fc414d9def03e2e34ff71cbbfec6747e403109696bf
Date: Tue, 29 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753794593
