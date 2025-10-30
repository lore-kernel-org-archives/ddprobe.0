Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2719825DD0C
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761862794; cv=none; b=UYDeDf8amkplPwamnECGs/HruV8aodyM2gulG3hSb7hoc/qHWCrw1zibMJsJnpS8ObYojyLT+ETiArswFF/FRk3m4Z0HNpTz/rJO4gvlRN2m8woF+aWD9JyzgzCSk18zsWdOBRxqFOR1u11tAOjWu1mGHWAQOTkjloq/asZNlRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761862794; c=relaxed/simple;
	bh=kVYMzD4kN9nqqw7hZQRVcPR1nm8LDzrvQzkJmc6H/vc=;
	h=To:Subject:From:Message-Id:Date; b=djucwgMWttMxmD+Lba8ha0FMZPxwGifhjEXNzsT2cibFss244lc3pPBs7DXt7UtAhFQ+Ss9UBfL2UhzgKyVLG4HF6c7dnXCfyAp1vNIUMDN37eBklMs5B24yLRrgnkLIBbIBZBkAO3B5awPkW34IzAWpnvZKvS+SQvRb3Om8JxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVkZUCeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVkZUCeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E5BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761862793;
	bh=kVYMzD4kN9nqqw7hZQRVcPR1nm8LDzrvQzkJmc6H/vc=;
	h=To:Subject:From:Date:From;
	b=SVkZUCeMNtdaFS0aBlidEuf4Xhyv4VX/jNDsnoe5vWSDoSdToU6/7/WOsCwDKjdfT
	 7R8Bdc1CdVxxwhxmDS39g6cCf9gTPMkNUhNQCq1Io9lwEZm9lUxi1MbuFvpi/nQw9e
	 U+wgtSnimsX62Wo+/s5aZYnLfSPs4rRek1XdDrQVEsdhdujbSPK7vGVGFe7iyFcHDo
	 hpyhn4k+TKEJnieHA23qgKbPVBkrNoDdGHpDgS3nQZVcPefEYWE6gEZw/nUOBWY7r4
	 O3mBqHvkARx2l2y3q4rmhD6FLbv5Mau6GwwQQLb1VRzX4yWsX4Z+smXO2pyiXZf6DE
	 B9I9Vs7D/7Nkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9795FCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186279361.30477.11946559324798384150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af15df4c64617c79a46102fd77272a8b1fcf661a0d8cb700001ffcac592414c0
Date: Thu, 30 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761862793
