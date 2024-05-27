Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717A04C85
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716783263; cv=none; b=TDw8BGhfTojfkre00+dpXEln46piBu4iHSpEzpQJm2V4zsbsW8wTFlneI3eiFXY0puHmvjOM1yXU0av0WfPD09mb0R/BOnnczpkl2jxi5zDuNJaIiiEgnDbC8IRgtgjzzex3XRU1iUtQCi3RLsyrVMUE/hWNGkNR6vgLtokC0K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716783263; c=relaxed/simple;
	bh=UOvayl7gIy8a40Q5N5mx+Kd/+0iCTP+DKQVKREqtE90=;
	h=To:Subject:From:Message-Id:Date; b=rQpyYovFQgjD0PJJJNRHmOj6Nj3Bs4W2vZpjHVYaqfrKuO+PY04d/GRfXELiBQ6HCGJO0MJ97qdBV7C6249i7xVgsfVjkGjiy0QjDANeeVjAzc2D7HQYxkbvMhcMXssgUrH949sU4XA4ZopQ7m2AIG7MY9H8F8qxvSZMuUWz7eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUADPITL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUADPITL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE0CC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716783262;
	bh=UOvayl7gIy8a40Q5N5mx+Kd/+0iCTP+DKQVKREqtE90=;
	h=To:Subject:From:Date:From;
	b=rUADPITLTmKTyzxJ8kemHe8BrDQVfrsMKabojKGSlhq8GkfVRwx8Sd2uOICc6ZorG
	 PSKsq+Ua1N8syW7NhzdgG9Zek5LvrjCKZS4nVZ0MXRGqWR/0fTdmllbHMAdCwJUW1g
	 wrHzunttdcUNWlWgAfOauRbReLOW/lPiYUWvkEbmSqzQE1XfbxN+ZMnLYtLmgjBkdZ
	 gDLn862JgCCianLC0aycaxQfwfiQ+QvOEqR+w9agfZEgePJmQotrOOGAOnsi5x9IsY
	 kq3OfAJWl95kKbByVghmzYiLr6Izfu2+KKFHOmNf0MH7ydbZneS8ko8TgYyu76V0E1
	 JA/wbRT/ySw5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C682BC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678326277.8010.14221282706634427893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a891a7cb08f217ec8ba6e1fd47d811b00c97af5bef906f4dbaba2cd9720063
Date: Mon, 27 May 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716783262
