Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C863F9F25
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786704036; cv=none; b=LZUBD3WU713AWC8V6Iu4eTXaJB4KjiBpSdVI0GU7X6DexVpFZglN5FU93yF6Sbg1X1gIHy5ZaaH2g3M5uw+/E7f7lynMbbFhBeUvtDqDcDRbX6QxpPNFpSR7xz7QQNCFRaF+fP+xC2kxKvEdvnYIeU+tOPrQnUNkkL/slKUhmzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786704036; c=relaxed/simple;
	bh=Q1l6oIXZnuJm2yJplXjOIec1jyFtGACoLNFwGvceu6w=;
	h=To:Subject:From:Message-Id:Date; b=r5sAtxcEIsptI1NHnbqy3igxJIFJWOwUEgnaNET1V22nwyXWGYh3tkMjzDa4WZy6U15JJmL033SVe3UnwpVR5kwiev7KVDD9V4OUFUfr22BgITRuElTns/yDlgDb31248DURGjIfSlfM1KLdqocFHhvcNZTWgsFtVH9fjXHtwRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsJ/YnTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsJ/YnTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8D6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786704033;
	bh=Q1l6oIXZnuJm2yJplXjOIec1jyFtGACoLNFwGvceu6w=;
	h=To:Subject:From:Date:From;
	b=hsJ/YnTuIjWBhoMrWRSAuwxOIbeRTve0FjZFh+gX0LQsaaN/Y0zx+82aXL3WFowQB
	 TNonEHxNDg+Cv6jlRHhqhmbJxtwRTVQYcbFCYldlX+YYb9EeNnVSRxp/OyyHUIMtvJ
	 Xuh0s+xDeMyfycJq/xSglFJycZFtIwrIe4JfDEdGdu3XEospW+05I0s2hPes2A1XmS
	 i0BQ2/tywzDYx5TdgMVjjbodV3crkqLq44ukoYS8cDYHbZ5DOdeZ5onT3OVL4Bh8KM
	 wmN/98ZI/pFt048mMI0mj2aia+Q1O8wNL3NWl8B+WtCob0SmI+jIK2WOclrx4LPPTP
	 IgBk9Xq/i85IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9500C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670403368.14439.2989021070085675388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15b6319b35a67e68a6cacb980f2d1132af79dae991902c01b714ea78fa94fae
Date: Fri, 14 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786704033
