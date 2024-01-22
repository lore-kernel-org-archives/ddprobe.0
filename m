Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98D615AF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705892297; cv=none; b=P9R880N552GNeGFDojDjSJqPeS1R2xV7a8ng9c2lJS7fdRMa2rTbtdg8drYPyB/dZwKP5NnVEtLw+ChawElH2CxRdi4SmrRrDILhWJeQLATqj+ogqvtaKMeXZcR6X28l4bph8JJqQn4TJohFeRJJ5NhGLWOWRkYbuNy518kee+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705892297; c=relaxed/simple;
	bh=uBfeY6TUqeZrnua8wSG0+LFuvWULWoPNUArAfukT4x4=;
	h=To:Subject:From:Message-Id:Date; b=Yie0eqrTGfADIIZeLh6AMgNB/E76TvDgN5d6s16uIFag7f9QO+ZFavsDeGyWB3JNfq9kW1dz40u6UohSckFdZP/T7n3YzS1IXynOvO8gOv6FjOLUw3FLaYOZt7jypz2fsqEYkdJfzLchyhZxHH96EPDKpLg4qRQISxYVDPsgsmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTRji/ZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTRji/ZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770D7C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705892296;
	bh=uBfeY6TUqeZrnua8wSG0+LFuvWULWoPNUArAfukT4x4=;
	h=To:Subject:From:Date:From;
	b=aTRji/ZAUi0CshQc+cNOWcEzIueLf2ujSMPPeb/zlUYMP0NBUHcw7OietzAv2D+7/
	 VLGK9Pu8ROYE1F5HtqO26uwop4m2TOVzcZKV1QJhlIXNRjD0Hr5JoeUP2On01CIycR
	 mOB+w0rWlRzHyheU5XYbrhgBw9DPq1tO1vRqbk93xT3OrBe+DR/9b6JoL1fWM00Fn/
	 WyERhQXyMgPQR8k/Bn4gbuaiuOg05hU/nxAldSjG/nCw4cOGC4MZQ8d0IEZK5GqwJT
	 GRaMdTkk2x0odZQtJHzSy9abqZVOoDPNHBmZZAJ4nF0u0yvAqi9Z+w0/3HAbWWGaF7
	 fTacRmfRvue9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF9AC47DD3
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170589229637.26064.2751862829422790627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4c0b2243daaed1d4857ab89f92e1337ce075e5adc1c254c22335defa32cdd3
Date: Mon, 22 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705892296
