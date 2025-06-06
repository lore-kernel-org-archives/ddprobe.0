Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E36520330
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749215995; cv=none; b=MCkZgIOP1MjOSCYH8Q5yN8j+wWJe1ELtp/PebNg/sQ7C/ZSYd3euXWZkGtPJIa77fvQSj8HjmD885pVFyey5gt56CIAXOEaK2ph21dwwnxZNxPeHAqqcDsXVkwGERhexNwwsvqwygfrDzQQP/v+9Yqv30v3TqJ787OkJ9Sctuj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749215995; c=relaxed/simple;
	bh=NoYh4DnCrNsbIthzDZqejewENb1smyzliQd2F5HEIbM=;
	h=To:Subject:From:Message-Id:Date; b=BfhHORPps0+oD+rga05JWMiczMnU8gGCXZpHHbcR5B2azisadr2ToIYxMeGWkeGyYx06CtnzfQnwMAPa9WygkO1glty3Ww0n9CiSqgtWJjq2KxUvRVjaxk6h25HAeCJzO1YkFhb5xeaYB+0NTrUex0a66fc/wdz6+v2uUoFVUiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btOKdp85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btOKdp85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2009C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749215993;
	bh=NoYh4DnCrNsbIthzDZqejewENb1smyzliQd2F5HEIbM=;
	h=To:Subject:From:Date:From;
	b=btOKdp85RWBkUMmZU26KdVkrAjXiJRyG4EqkYPVmMuTusr/A5/B0NGP18n3oqIQ5+
	 kWhC7R7bYWu0goduDmgYex21ilsMg8ZrQ16uHlLPgzSRyh+8j+HXzWhKupibNDvRFR
	 5eZ+dDZ6khwVpERH+S8wrDk18X8uEK6YhzvCcMOFAg4jMH6vRo0kmmPvmSTd381ZKP
	 zn33GIl0ygunG69fm8doViXnw9pm6OHSaGmON/h6a5A1oUN+hMk7dtWcZNalg+Cgrs
	 naijDlI+YG6VmJGY2HYFaTVMd3ME3zuueiYSyjuTL05yXoKi6PpApYnMw2avLNEI4Y
	 mp3BceBHKhqmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE3C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921599358.5556.9186511862675266350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fffc506566821e45b867f9bb1ac86c07fa663c59097e61fbbcae9d2ac127ae
Date: Fri, 06 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749215993
