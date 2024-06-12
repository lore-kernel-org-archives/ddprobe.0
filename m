Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B76584E07
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718228903; cv=none; b=kVpXR40hTzwBqxFnRAtQWXXQdvF04VYfm57i9FRLgHIWzLNvpXIpRa6sOq1j9QlImjo+xIcnXscLF8PbU46AiXYqfxcP2m647mE3uirfOdciKiyHujdjEWXZAUHBS/oRWprgk/vq+xyH1evZUpOYg2Rjane0jq7n2Nqq887ZVuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718228903; c=relaxed/simple;
	bh=X8J/QpVdJKHNuZZdOvTyJpLYPI11Knk6TCtoRWTyzH8=;
	h=To:Subject:From:Message-Id:Date; b=lp5hZhGj+B8AjrTycRWlckkzbuRSZCBvU5mxiGMimMpo2VZILgDjcK+agd66X/RwfcAbnx45yIXb+IVUewHXTTHDMIGwTiqecPC/zWd2N+MYmzE3+AFr91Fzxpl5YjAsvOeL2l6g7tLBAcpw5HGcDvBsLkZ/Op2weTmFrvhu0uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2P+Huj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2P+Huj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7C4C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718228902;
	bh=X8J/QpVdJKHNuZZdOvTyJpLYPI11Knk6TCtoRWTyzH8=;
	h=To:Subject:From:Date:From;
	b=s2P+Huj+tT8+ey9keMEmL3RfT3PWRxZLeg2u/VXuELgDQSFVz60tnW7dXC5OwjosJ
	 sJSZhwaLyXg5q99NwZfiEfIDrPc39aFLT/ueZMab0MJqpwIbqxsj9198gHMnPKhmOv
	 k07HBhx2ZzjWO+Z7b0RoXNg0GWl/+CaGjFdq42uUtgUeHYtFygA8nqJs1h9g/tHS6U
	 9JFq4zBt5cn+UBZJ9hx8UCcqcOhmSnZh3vFE4+hPTd6xYzG5f9SHTv6TsO9v5dIBD5
	 EZK4TSfg2tjCNnr4TGjuC8eDlURjBX0i6R4NDgDPxKUgJ/PTdcwPccZc54s+OHq/XJ
	 eXS5mIP2h123w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEADC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822890281.22969.16220185580653641414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bc019021276560478c7b1753dd2b90ef515538196867c946f948294f1e84d5
Date: Wed, 12 Jun 2024 21:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718228902
