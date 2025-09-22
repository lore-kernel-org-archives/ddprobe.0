Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1C678F58
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758526195; cv=none; b=KozfQ8thW9+vmBY4nkYKbGtAusUMOvOwUrHu3zGPpMWVAPxWZIYTp7kmkt8XQPoN68WCGdJqSN4vLdyURmEZjzamzOBBJ52xymzDcy0+yir6Dd1sD80QdjZspqI41gWXNczI1478gJlBQn1Eonnt0PDYmXg3Ow2uwOSDSX6GUWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758526195; c=relaxed/simple;
	bh=6tOJEFEFkOzqCWNIYAFrbGIdTunwzNa9aOxUYq+9/fo=;
	h=To:Subject:From:Message-Id:Date; b=n+3YzfLWDJvnk6ZxSs+AnUprtOgDU2sPGBnqnTG/Dt53Pwo2genbBPmX9D3l+kMFXu5fCAJ1DgrEH+c+wyVcb4DB2fBwhe34ulua1iwF3CruRDm6epubb9qybDQ5sWJkDhmaMhbX/en4EyAwQF3zqAhF8Xi6YZyUI+uSa3XoZ6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpfGZdI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpfGZdI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B93C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758526194;
	bh=6tOJEFEFkOzqCWNIYAFrbGIdTunwzNa9aOxUYq+9/fo=;
	h=To:Subject:From:Date:From;
	b=bpfGZdI1kEM8drrqPd+ML3jaL6Ym1hwh19ktjqAigAKU7nuTNgc6YkMvqad/rIeKL
	 /aXlMsRNb6Ql3PVYpE2SxRC5szqpeBHYz8hyzp7s6GL8f1yIi8RCWzzZrVp5pGZFEo
	 5OOx4QVI3UpX9ImlbicqpF22n715zPE/W8RX6tCQHU4OcTRMb6Dt/wAflnnBQlOPLn
	 2nShzsH3i/Htu4rKq77/il8RybM85x70pLM4BEF4706UELiDrW5wIBEv8q8t3/eZcd
	 zjPx5g+MkbE04hg66na8y9VBQXpuzanSwqKgUTobGPSZaAmC53rWLghhzsI0Y1OSZq
	 d91ft6P1QlyVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE91CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852619357.28303.13449279772597350790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b150f5f79207a15b713d9e8ca617e41c262dfcf60c6113cf862e515dcd2cf9d
Date: Mon, 22 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758526193
