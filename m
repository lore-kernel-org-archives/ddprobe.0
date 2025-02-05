Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1871FC7E2
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738793756; cv=none; b=DTuf7yeL36NZuFOxlG5FvSYuBi6TB+PRekknt2k69tYQHMG0SgsMRxk0hjgNmahKbRx8DDVs8hx0vKY6WJmIGw9KhQ6B3XbcOqhwag5sUP6kpSjPgu9icQD9bE0zQeIJVbWd8dYgXTez4lJovRi1C88S7rzs70nD76abjg7NRpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738793756; c=relaxed/simple;
	bh=3/aGf0L8rishqLt8nsDF8uQ6a1O8zcsfcL9cepDGpVc=;
	h=To:Subject:From:Message-Id:Date; b=LWiTneJl42GCjtCejm0ojkIZhGWleN+punTaOjrFLRxPjXoRvV/XYHYyq1u89I190GI/gpPFNgos+rve7UpX9gqga7hSQo8SIkuYnqurDKH90lW6TTtDqZyhYBbAuriBkAFGHNO0RJFzCyVoEqUJdSpXjXVLauEmuFso5fKJSI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QduMOYPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QduMOYPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77AFC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738793753;
	bh=3/aGf0L8rishqLt8nsDF8uQ6a1O8zcsfcL9cepDGpVc=;
	h=To:Subject:From:Date:From;
	b=QduMOYPgmapcsinr0OFs5Fxn3nncwfGOuzv8hYh1hHXrcgWSebei1xKAlHiiTE3/N
	 4+UdHMCKSSQL+sSwOZKs0IaZadi8nFxNLm6yrjK9dXjddZ7q9Pwbtorg7tpyzq2+gl
	 m2+NGD7s0r0bFK2yHop2V8QGbE0NpEPJvxxM9BNx1OEnbue1kxgETd5zC3nOBZmsh4
	 7MB1sevJB8MsPnAwnyUZMLONw2hy0jpHJ9o5yOmMPYlbFBimjDrOKTmRpsmNhOUt2y
	 09tx+3iqiI9ETX5mtEPUtp5qRfNzTvNo9iy1B+HYeu+Of74Q/y/k3eXFFa3r3f2nk+
	 j+vRlrBd9mTNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F469C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879375357.18165.5890105972169153481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1583f8b1da685334b0975c1a2295c17fe1402b672a5f7af291123c8225906b9
Date: Wed, 05 Feb 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738793753
