Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D49235045
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769462034; cv=none; b=N+XJx0w5IdwLuFj0GaUhHMr45Ya8XykgNhShr37qMQfSWcEp6nW+HgJHlHIflLIG8xCVxNY1wptgwHTthyluYW4E5qz6bTgcypwZdKgcxsx7oxGmMz9KhEmt+rYvgB/+8Sf3u2LWppIQm3R3tIcPwhxZeoOywawEly5x/dXocFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769462034; c=relaxed/simple;
	bh=pYI41AxxtsiOcTQr4o+Lrdb+2CvZ1qKkOHF+J67eVk8=;
	h=To:Subject:From:Message-Id:Date; b=g8HCDBZq08JNmegZINUXyllQVi/ns923SQV0sNk/EmeIvTmIfRNXyLDU3b/BHOcWiLdNR5AM+ryBKXELX1674LnHMy+qdygltBkmvQazpsJpQ72+2Lep9ThYMQWqiP4NUHfL48Ko46lKH7af4tdm/S2iTl/CqjFDg+z9odEW4ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGoPh96J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGoPh96J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC69C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769462033;
	bh=pYI41AxxtsiOcTQr4o+Lrdb+2CvZ1qKkOHF+J67eVk8=;
	h=To:Subject:From:Date:From;
	b=pGoPh96JWFsgZQNSKpOJlFE6qNtcJ1fvMcJmbhgw041WCGnykxRZUjIdf95cFaiLT
	 0sLMpyb97XAN+zvhcSAvgfVuJbrGXtDcRT6ToJShEIx+4pXy1yxj74kWrZi2iUk92B
	 i0ANLzkhGBzM+vVSsx/y/NnKtAZNag6YoXsnkBzO4g6IZSV/3CBPvLzwiR3RL5xhwK
	 GfOzerlsZp89Pjv9CXTACHmpz9HvIdP+sLHV/ih4RD+yf3jSoume3BNWHVftT0P8iq
	 yBfOJicBt4AlDG2wN0hlzw3FFHgRluHgxugpC5EiKu50vlLls/7iM6eNYfheghtU13
	 ezdSkuptKpYBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90332D1951A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946203358.9013.13805744650941537186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1525b2c147c93d8fb8cb30008349cdcd0bdac10390be331dbad35df6d8e94731
Date: Mon, 26 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769462033
