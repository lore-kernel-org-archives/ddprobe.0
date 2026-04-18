Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C06A39FCBA
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776554854; cv=none; b=TwcDK6hYkHpCqeR2hXDkrSQ1JTT33m3zhn0zM+HQ+VJlOwatUURXxzvJFgautq+iP56eg8wdIF9LnziUMkdv4iQ4f7P5aFdJQnY91KOAJg1agS6otJgVDuRRmRBymJOHvoiw7b0CqunnYVQIWMurmA2KQC76v3Lg45z+sBArFXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776554854; c=relaxed/simple;
	bh=MsA7li28OyFa6fi+JjWIJI5AKRws3lY20IG4GW/YMqo=;
	h=To:Subject:From:Message-Id:Date; b=vFjSoAelilbX5hIUCtBnL3omEVdONzlFPt0oXhIFaU4TpmUlQHdIY3nA1ZKHVT6poHlby23pM1pW85cbGnaAkE7f+kJ8CIRAZYYB4Ao+QkCdpkriwdY2gJT7C8Ybw1m+25FheHXISXqU+UjiGFCew2ja5uFhtf39ockVetqYFEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxESl+jA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxESl+jA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37A6C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776554853;
	bh=MsA7li28OyFa6fi+JjWIJI5AKRws3lY20IG4GW/YMqo=;
	h=To:Subject:From:Date:From;
	b=DxESl+jAbP95IfyLy1Hs+DnTNuWMl+XYsl3Fd2pfVU1sd0NP82jery88oP8KTTb9W
	 aXYXjMxUSyK+QZlSe/D+KvcWTmne5dZL/952mP2ry1WZb45gmG2oUUZbhh6iJHyxXg
	 Nne4AriTLQot03S8jTdlVFVO+dZzVD5ddnGwRAklJ5ktiE/8gC/tOnOBIKGJpldPwE
	 Ah8Ie4n1OVIyHJXxUNGTGxZNMxA2//mVs4Iq2QRgFYwlmBPpALvMOqoCPW1W0JGKHZ
	 huSy68lq8ieTVaDgn5SoSpEhC3gVG0neg5+A+N6Itjo15JxeS1HP4wIntkXF8cwhjx
	 MESIj8mL6e97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB5F99C98
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655485368.9777.9801780077479529063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3848db4cb9e1ac2f68139f1142ce144131c04f8eb82d57da96343dc51b3f8c0
Date: Sat, 18 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776554853
