Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176496FC5
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756538994; cv=none; b=s8RISoyEE3jsPDyyVv76KBMlkoKizWq9jG71zcpRfaqKOznKNBIdlDiFdqoedgISjxVlH8bA+1sNsOemNl7vt5+UqeERPcfDnYe1TzPwwO45e3s4+XW8bDwG0jlT376DJ//6XX1UBD9wes6TUDv3tXR+7NEJOSetHkt8WeTIfN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756538994; c=relaxed/simple;
	bh=AMaCIwFKkhD9GH6G+nCcOTCqFV23hydfg/w2dTY2+nU=;
	h=To:Subject:From:Message-Id:Date; b=a4Vt3rSO5+I5dpEHfS01qj7v+srWvhNS3AxtkVjOxM0V4seMnWBXflK/w0Q12vjFnDaUFCGsR1AJE8NHmrYTgfI6MCJf9LQVETyzIE+EDqPZ4+fqSGWrLApX/u/giqP12uQfP1kbPHIvPsT0jMdGfo4VE+ZATR1QHMDBRSkrRaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSQFiWPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSQFiWPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA27C4CEF6
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756538993;
	bh=AMaCIwFKkhD9GH6G+nCcOTCqFV23hydfg/w2dTY2+nU=;
	h=To:Subject:From:Date:From;
	b=NSQFiWPA25M8pHcrozKIXZstNXHiQZe2OkXbcuIp40Bdm1m7ynoKate/rE81YdbKo
	 Ny/NZg/DIy7PGgyjs1io9Dd7HaTWb3N3swPagncRiC5gV5hsUtNSVY1CTKy+Y83rri
	 y+6ZuGNF+bUEkRS7BW/qPQhYhU4ZrllW3vCFCvYmI3iQWv2gstR0Mj3fmJRFdnt6Oz
	 iGehMUz78Vp2nNxRWo2EmONJ+PyMEa9gsVfAmGbLNCcGTFB8b0/PJNoG3Klu8oRxPG
	 8154ljq7jeW0zLzwE6Jl7zNINUXSWklWu+7q2fXwpfYeToEAkRk0gItZWt1wC6EPr9
	 Cqeyzf4g2HhUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F416CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653899357.14896.16342566309191179067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c96e6210825b3dadb14cce71cab6e50ad729f1134616b53c3de485df6e417a6
Date: Sat, 30 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756538993
