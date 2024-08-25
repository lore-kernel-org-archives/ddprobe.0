Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310682F34
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724621154; cv=none; b=avaU4SB7MIzC/zhd2o7N/8QdWApupvzCYFbfXqUIft1oJXck+oQV0PkitliaXtIW/7vs1J23AuEyj/0aCite1WfSvLU8zmYCVsxBAOorvvRbcv1dYYDmoaBhduo7v7DBrcdxbaYjz19N/Jof1aCfPignNx5GZxdgkQPh8BkND/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724621154; c=relaxed/simple;
	bh=ZrP+cfjbFirzN4OYIXBXngnOKpXUgknpv3/UYFs29CI=;
	h=To:Subject:From:Message-Id:Date; b=mclmhz1vr9sV+2q2BqHAJLhH16zpEADTJV4SQ5L3vJxKdsWiL/tubQ/zogB9AZNYh9O2TQHUwjysI53ewd6QbCrobTU5gWF5ZMMYAXIXXgEE+Sd+YUyfdeTl16dIeAU21gZAUtGDznViFIMSIjvQBLBzh4RF0G0uKmLtDn6Eb74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJijjbGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJijjbGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA12BC4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724621153;
	bh=ZrP+cfjbFirzN4OYIXBXngnOKpXUgknpv3/UYFs29CI=;
	h=To:Subject:From:Date:From;
	b=DJijjbGHs4KXHmpkWaH05tvfgA4pOvfthUlCX0+Gx7FxBxv4bUrlUGUntSdQtTrhp
	 LjBIbVcGNq0UeIy2+j2gBxfOwfKhN2M9OxLntaUN3iGB85HeFl8DH38HbveWn5eAFx
	 R3ceb7MbkGI9JoiO2yDwaWbLAk8RACPabyjeDHJrSi8ev/ij7UiWGlI8Pr+dTOsgj7
	 x2Its24UNj16Yx/pX+m754OaL0IllOtjJB4xUh8qCIjJvYRBJ+6OoaNlVt0Jtp7iyg
	 j+mdlmDcare5x2YbW72wE4O8/0KFHcunmCMZ9WgENpZz293UN1FD32VkiHBUqn0oE7
	 96wdGxRwuLIFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCFC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172462115359.5648.5577475102791373138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cff7f70ec876e619b181b1606090d660381d826357139c50ef4dd077cf82f01
Date: Sun, 25 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724621153
