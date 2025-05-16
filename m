Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3889172631
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747368594; cv=none; b=FeqqtDEExO3X20ot5uVP2lqhK0tuiCxkVYDgJPGAbGAkoxFq+lu++KGpsZAQqMhMQVKmaQSobE+M07TU4bi+wxdtwxFRsrTmPL5YEFiuckSmUppAxiC1g/YxmZYSt8uXfAoeLYEHgaZOUWiAGYyC3c8GTXY+o9pHQzYTF661xsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747368594; c=relaxed/simple;
	bh=DO1zR8jLQbJOEteIuCUAnzI726t+YZVTPwwoNMiBgJw=;
	h=To:Subject:From:Message-Id:Date; b=XLMHL86hLjKbL6njWvMPQGv4mch3+tzDgzv/cmB3BoZvqSKPV7rMnT2vARs/EZE7hysXL7kGx4BOId5SOdmEmgn5/ZrwJgdoaGLrLhf0jzcCv8Y5QdKhdSfemX+ns+Hh2xx/bBriAvxYo7b9FGnpiTakZOEQFriZbz0q4lYFAQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2E43aHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2E43aHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B8DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747368593;
	bh=DO1zR8jLQbJOEteIuCUAnzI726t+YZVTPwwoNMiBgJw=;
	h=To:Subject:From:Date:From;
	b=a2E43aHqiiD46EPqLTUO1zfnsqXxgAx6Dfs+n/+dOYeRnvY8FoSXpC5ueSFJtonlm
	 89t884j8TI+ZC9YGkJ1S/Y2aGMzqHztI89CIX6OKmLIi1aSRVbbt+NqCU4C4MiO+o5
	 3I6rxUqxOHDmrHsBVWbMELiberVc8mq01CsolNnRXiriquJ0yPr9atTBaRtmubLJVa
	 t63ATFdMovfgpJoi89TMu616cQj2VxlrJpPuCZ/JBEPTLEZN5RtNgWg6s9ERYaVS0T
	 m54BxKuWPdzXk0leyTnvnrWYzi9ryBLY4eX90u7IQt2C9yWOhV6WgV0004Wqc4oa1B
	 8nn5PucMMIONg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EDC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736859357.30224.8464974331424687959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffc2280558f3e8daec5982c55747fca4b345444c438c514117987596056388c
Date: Fri, 16 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747368593
