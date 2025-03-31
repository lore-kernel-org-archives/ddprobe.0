Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C76A1DE4DB
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743420594; cv=none; b=sLN1oZFkhWqyvrA82AHY2dy2gHlkA0R7mjiVZcxi1MJg2ThuPJDXmw62LbsWYMb9c7uRnrJQlSvcB17RRUhKaiJfgZsLMFIVhLQvYwBeQ/KIxmTsLezGm17WOz0T+Z+wWyRHNpiLuo3rs7VtIfDs2i1AU3OvLkwd+Sg7BgKbFGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743420594; c=relaxed/simple;
	bh=ZN/74RsIYzRgqtlZ9MU+YSbFKfKRioccJhKEKjL48F4=;
	h=To:Subject:From:Message-Id:Date; b=SPOipg8ghskYCEKLuXd2ZNgw1G5NXGG1UajozxxB+Sc1VeVms4M5Dv4HdtdtBiS3fZYeZGgbdGMOWQ9VgX50lku4ujwpAnKCWB2VqqHrT505tQ/6gaCVcLR4HoJ2mWPsucOYteUq/v7rTKXt0ZfmT4k4fq1jJ30N5NkaNcoCKeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7h/OBEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7h/OBEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF1DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743420593;
	bh=ZN/74RsIYzRgqtlZ9MU+YSbFKfKRioccJhKEKjL48F4=;
	h=To:Subject:From:Date:From;
	b=p7h/OBEFCH4L+rkkBnFhewaUpxc3aCJ6g0ePnPxNI4hppDSRzX/7s3G/dwhEMRW/4
	 y815sGEe4Jcfc8hSHZmwEuACJwEiTilrbcGK60hxk3BjC7wgWZBR1T9l7A851V4YZS
	 ACoMI6ExWugKJiu0PgmyM70L+xb6YziepHlBd/VbnD7BS4ip7/ijbsQ4sZsHXOBlEv
	 PVZ6+cRb6H9xnd2zkbI9I5Uan9h5zJewF2YXus2IEYqEDtrOQrEthZjeGC42GaQn15
	 Uj/1zQRh7NqNf0He5dpaslL3cu+p59Ss41itHOo3YKeYfWyaXogZrUl/YsNvyxQXLk
	 xkBXvIRtXXV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A727FC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342059364.12213.17131985466989286288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be733fa7d8efaf4c65f179652d8f9828ae77b4c216945a28c0b0aabe28bec7a8
Date: Mon, 31 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743420593
