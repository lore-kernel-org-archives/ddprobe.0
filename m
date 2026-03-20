Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064B629ACF6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773988494; cv=none; b=AG1HHWp7lM8vRJqnUcirkz8boEPGkiI5TCMcjaf9YVj/0EEznbZDnWZ8vLfRuFYZNxE+AtRdk6kA2NOrHY6CppCNFaA/bmZs37JGrQEOIZOGsnAlHBkfl19DlNKV5lgLOL/UrOBgsSz/cdGXtNmGbnspKug2vqKcgx2IBNoX45M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773988494; c=relaxed/simple;
	bh=4ihlI4ls++r6aMUeptwON/nRT3jU1u7vHVr0ZIherqM=;
	h=To:Subject:From:Message-Id:Date; b=ITZIgO7xjNJaOJz5cjDbBLly0FiZ3MYJZHT3zgL68B9xd56GTx8sgY8/bajUHON2eqFOl4qAq9sWKwP2BHm9TtOLt+pTRCeBysfifcS57vBGmBx1h3Cq9lELOfD5ZNnEmmgM+v6CXuy3daipbHIMHsUuPyZJQnFEv22csEL1OHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i23R44mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i23R44mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773988493;
	bh=4ihlI4ls++r6aMUeptwON/nRT3jU1u7vHVr0ZIherqM=;
	h=To:Subject:From:Date:From;
	b=i23R44mgNtrNxAo0eElXao2Fa4W86wnYYQtjSfoprUV6Vch/IkzXGunl3FSrivf3r
	 J483j9wOXj6ldwhhxEmbLAT2fXNZPFGLlvQDvR0Xl+6rAKQqBhzgnwIw6Q8antIYfp
	 QO6XSeIX05uV4S6JH3LQeQO17YMYMZB9ChWW2DpDrKb/jfS4uu7n5gz1KInLMh7Z1v
	 lZvxXjxZ5PNcZ7W6exnAdbLChWK7CqGWGHIB+zg+xb0CmdghCZ98o2rtMZViAZ0sIL
	 6MrF/dyZ4euLJ3uSPiBBIU2i9A21Q4TW/FoSXas2gG4TyZtsDnEQcpTsj2sVGQXt0B
	 TvSjTezVKS0mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1D1093179
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398849358.32384.1360979029401245033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933080701147d39d7608efbaf1fd7bf5011c5b6bea6512999876a6f3dd0cd753
Date: Fri, 20 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773988493
