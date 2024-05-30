Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0802E3F2
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717086863; cv=none; b=NnabXCTa0HQ+DkhGV9o4tyIBuZ+En4qV2A1I62jUc150OZSOQs6ckfS7LP344xd9Rm9KogUH35mmvy3Li2wR/NRwUHGeEhf7n5JuOj6gFX2ZC+acyA5zn3mLUii1LuMINVHS4rdSXQmwOxMxdK2W81+9WGyngzYdH4YzQBdBejc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717086863; c=relaxed/simple;
	bh=KuYSoZnIXsrj4q1qDqykqLot8bhqUsiX6Pm8S8NURIM=;
	h=To:Subject:From:Message-Id:Date; b=dGEDS3r6sNMrvVtgPfqivoSGUF8yejUUyXviG12AYBfFtZYZdqCBQH5ra10/jjhgV5MO2sIrVVBM9hWZ/4pWHqznXWdw4bZsZbCJZHYG7I/dj4yuGEg7ofRdGV7Gq0cKlOkQO4uVW5G5E3r6ng+X+Py3WTvA/VHswPVkHxgM9GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjoJoplD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjoJoplD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D1FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717086862;
	bh=KuYSoZnIXsrj4q1qDqykqLot8bhqUsiX6Pm8S8NURIM=;
	h=To:Subject:From:Date:From;
	b=mjoJoplDfIJId+gidGQ5yMVEalofqo/NE4ou6OBGsYmWG1nI9DT0fbyRrTU7gSRWT
	 BI2MFbvN+SQnt2kGmUzxFiD4ct3FnczcdouF+Wb9OSmPTmz/yziYXIwSMe6KKpRTco
	 AJ+C2WJ1yTtEbm7VwfiPJLdfv6P9DkUQvchIZGOH41nz2O69rb/yNQGlcgwf5GJt/n
	 BSDhs0iS7wJRBKEWQCtJthUKh3wu5qeC64aohpFEmTlW/7vAliBHYBk6pLbD7q9T1R
	 9AEw10IP7ohI//k8AtptxyKD6Da7m8B9H4fTeJf8s51FN7GfbTjL9hgFkg5ZvBCd0D
	 hNxZ1yRK5R52A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9CFC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708686278.17685.869527408823509364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cd3a631324f2f556a6a056b75ccbea1013d3901748930847efc3ba48c81d9e
Date: Thu, 30 May 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717086862
