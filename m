Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC415A780
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710854296; cv=none; b=b7P+jqTodn6VELmpEtswywnWTlbsYswXyj8iF6zBs3Fl5QkIZC3NOTtUfMCFRHBlA27YS4DBK9jZ+ptBi+HUR1r+cJ4AieJ/ATSClXG3jf60kJuQxm5O8cx1oEzkl6zV+hmqyTnu87ul2Ec9p8hQDH5HC/CMawjJjr7POquKVp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710854296; c=relaxed/simple;
	bh=5v6CJY1qTBtjt77Pceu1XrE71ESfY1+9moaQb/P6+/Y=;
	h=To:Subject:From:Message-Id:Date; b=YMxNwdCxv0TO1FY/RSRfNW7DXnNuBGoFim5XBQhRH6UPQ5lvoypDNYhNLnOUYIoixyndIoOlxwpNM5ZXvg9WcRGpQya/J/NbPc+SklmdtIm912//8e5NI7bFSShKeHaNaq4hiHEr9u1ibeR5s7k0wrF8fR2c9+W3zW+ZsCy85us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8SUkIya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8SUkIya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786D5C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710854296;
	bh=5v6CJY1qTBtjt77Pceu1XrE71ESfY1+9moaQb/P6+/Y=;
	h=To:Subject:From:Date:From;
	b=G8SUkIyaEab5XngUVECCGS6sTeOTmGc3BiAOYxqKwZPRB406+eOAMZS9wuISgC6xr
	 6xQlcQkObS4uWAvZ5YeUWZPGUydi1sF6Ta9aOq6xyj5Pv0pTlVV+L8muYkHgB6rXYt
	 mikrI8dGy1hkDAAZoceqWg4nXYJ2+qnIctv6f+pe6juM080eXsn3HJCTUCYU7bSFbF
	 tKBItvf4cxC2edbrbrb4JdsX4btiZQNk68vcpUUZWquBA61qbuytvVWa7pGqiRg2zI
	 HMJsO3jFxwWqb3QnV/iajbrBO+YD0/sJQAwZqpSJfYeK05JsPIaGyuMElaFpLO3Cf5
	 fgyEg2t1MJIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B74DC54E60
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171085429641.23450.17590315879864962105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbc38e650a160bc78be7f5fdd64e3ef65bb01916b52f90d855a57873a49de2d
Date: Tue, 19 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710854296
