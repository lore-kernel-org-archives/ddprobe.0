Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5174C6F15
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787853634; cv=none; b=tiDEUTsBM5VrERtameICSbyKUABcWrkxy9B1lmkBQkQAyDd0RT3r6SxHJmvu1oD2PsH0ewTH9kED1+FOGxXYX7mKS5nXK8R7xm3hW7mgKW6rUO3v8vX5eOwKDpOn3kWuBssbFdVE5Y7VLL+Ao8YrdK6mJuqK+X4Xx2oMIeUA4z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787853634; c=relaxed/simple;
	bh=YretJUIeUIQ35AF0UUljPL0mD1unrPoCau/eL4OGR3k=;
	h=To:Subject:From:Message-Id:Date; b=bouqJOAxchbAo0q2ww3ZEOO+IS2cG33gPho5Zn9+qnsqXwZ1dGcSuHy1iui0zwlNsxBuwo/i0KNfvakCtJSsOqUDshCt6hsHtLvlGqPBy1klPocP/MaliYjMiXiAr6zX9JujN/80b0NlPZlMbFhrch8tq4ygQv2I4YX7D3xHvOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rV+rr5GE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rV+rr5GE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FD1C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787853633;
	bh=YretJUIeUIQ35AF0UUljPL0mD1unrPoCau/eL4OGR3k=;
	h=To:Subject:From:Date:From;
	b=rV+rr5GE35RXtwbumM1xESfDfHlk7+GhI9NJakS9geZ2GrBtCOF/cmZOIq148siZH
	 W8LpwLQkAo8loH+AV3rwkb0XpShmRpnA4iFoA13iwDdVNYenV7y6p0sE+Z2ufaHZ0Z
	 ibQO0wUuUh+kcZ0MlHsb0HkslTpzrY+d+rucYHUZEUqXH1HdhlhYe44x8WL1XihLGs
	 BLgrlYC8DYClZ8XbCffxA28Uw5KvklX68riFHHN7F3pFQK5M0aPcKKLFSP86eXphX/
	 zFZF9z6PD3t73q3R9JhPqqTReZAdppqlzVW2u2IaUkbC9S/0NUTZfxtHHvqdiK4zz4
	 O/umbgl4vUoIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8FAC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785363369.8461.4975503644109470491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b8fe46415d867d50129f4e86390dc38f1676b5aa5c57c7c55fcd5275c6d924
Date: Thu, 27 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787853633
