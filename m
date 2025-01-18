Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBD57FD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737173154; cv=none; b=tuc4yFl9lIbXF+MBDnrXK1/vouHxf/CQXKk1a8ZmG2Yl8pUNQzG55ZfrcUTvWyyLr++hHBioFVyIcB0jwIbaB7HH++uckIiMdraSr38J5Xv6ED5gjgfaSLcngqQ2vKZRte7OhUjgX74dfBYkDRnNKY2w58dny7TquB3ipsvvea8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737173154; c=relaxed/simple;
	bh=rSygwq4SQuKjM5CHeFNasW3E+3OLie0utCCUe66VIM4=;
	h=To:Subject:From:Message-Id:Date; b=HI4gz7+S5tiqrqkohd0+MwkCCZ7DloJjAP4+CiKj0oxW0mb0FhAjGNC33SbC7vzLvelYEx5GER7fKXZpOBK+/F7+Pj0YGiLeKr/PXfDab71BmKhuOuUAHqWI4dM+3LVUUhtdVYgHdKg571VDjNkiJBRHI7uBdsLs7t7McKw/OLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmkTfTSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmkTfTSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E24C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737173153;
	bh=rSygwq4SQuKjM5CHeFNasW3E+3OLie0utCCUe66VIM4=;
	h=To:Subject:From:Date:From;
	b=cmkTfTSPMPHeO/uYsKKcECCQ46sSW4Qbo80zYJx8rAifshf+fHH7x6JYNMO1Zsy5m
	 mh0T8H9dd++rnwYgiZsQk1jvcGNR83ENoUJ01qteDI9dqu7PxUZTeLCiyvmSchauf4
	 PkAq3bQzQgTsXBoY7fdRWzfcj6bvLkCaq6Rk+FVh5ph/aZME+EmJl6LzN61p+gqqzA
	 N2QlcaZvgK+vyjbvKICwFRcDERDqco2Ub1ZNXbapF0wXkT8JHF7mat6ByYTheSn8Cu
	 cvfYG4yrh9zbI1F2PoiuyMiKfgnVsr4pS9phul35wnmnJyDyDDLuxz8TNG+wm/DS31
	 rM6OFb2WrYEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A56C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717315359.27098.455380288596846235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79754966fe5f8d55bf5cb55307635fab0224ed831e7d004e3a3e24ac562151cd
Date: Sat, 18 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737173153
