Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5859B19644B
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787982034; cv=none; b=OwFBJWRTRdCoeD19Z9FZy8fpsZicUc121IHTPYw4Sj6Q5F31YNaj4hFe4mwpf4Gf+X5vLjjPXuJ0f7ftIquYKsW6vYZApa3JjY2MpaKlZkdVOb4IqmVqc8iPOM1bXvuGKG7/TnrP7dCbtX1XtHi1GrXzG0ENTdK6jvQsFXo+dtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787982034; c=relaxed/simple;
	bh=zFYFstufZjVKawpEkwnM1ssEBg3kVv4h701sqStIdKQ=;
	h=To:Subject:From:Message-Id:Date; b=tHNgop69kcdH5WPl6H8utgusW5RWWuFp6GkUE8iZ+jRgHBdXL9dKlLTT+GzFBqBdgDDvBv9JPBoY1qqCK82w28vOKSP+xOgAnaG66wec9I7ycCMCH1upMoPXmJEQXK1VINEfKKRbmDrEeg6tx+vYv+l85W48XZmnjPzyO3Vigi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2L73pUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2L73pUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD206C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787982033;
	bh=zFYFstufZjVKawpEkwnM1ssEBg3kVv4h701sqStIdKQ=;
	h=To:Subject:From:Date:From;
	b=q2L73pUZ52RuiQiS1zFy+dl6XLxw0YyLlyIa9n6AbP3QkBSOxbrAxCXOduEWA0+H6
	 ZsQZ2x0twIJhQK6z2hSoNIfj4eYu08xbRheP72/+ZKmbbplV0uB4iBPn8M08aNFg37
	 lG8Ox39SPBfuEzLhWIo7VDcPqj/zm/g3i6quGH2G3oPMK1KjIII2SSKssxLNwzJRDP
	 yoyIhMvQHwerL0cW98K18Hd/Q8MOqKrG33pqQ2UoJM2CetEAStMawM6yekIKcmP8J4
	 98KlO/SaPmH6Aj4fsBbTH9Xldx3RO5zquw7TXOH6B1K1Q1yze+g8QxJEynfGb7i5ti
	 0P/7cGjovv1gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CB0C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798203369.15865.16413630012734259501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40afbb39dc6ae949517fcff1d0b2f2d3a293b02b843d9808f89bf84258ddea36
Date: Sat, 29 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787982033
