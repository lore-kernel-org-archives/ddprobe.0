Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F73C23774
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750652996; cv=none; b=sb3rfHP/cjXDMehIbFjafq2KE6RzMXABChrlqxNYnKxBiRFZNKqJYISxyEFu0qs7BJJjk+PJwwteAnVBzaptZzn07kGTCCTSZpI13Vj7gn2/g/ZKJGPKOxANvFMwW1Ak70TpnKxUGAF2TP8xAJfwapVFaqdYKvdOQjNxPM4XxZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750652996; c=relaxed/simple;
	bh=dhbzTBGM6/MxZl+9op8PmBrspZDI6UZ8zY1NYE3dtG0=;
	h=To:Subject:From:Message-Id:Date; b=DsnGV7z8t92ildAUymggTHud3nx5/za9PRV811pYFXrdQ7iUFR4A5UCFXElHYH31LD0mWWzDhszwUD+aZNM32KLzXEBqGn2qJ8MqGiw/Tz15JAEwkq/mrgd9d5Gh31Eo/VUcBhO00yyJFwNqbKx0rSigdXsESVYyIq+H4XrJDI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwDW59QC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwDW59QC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750652993;
	bh=dhbzTBGM6/MxZl+9op8PmBrspZDI6UZ8zY1NYE3dtG0=;
	h=To:Subject:From:Date:From;
	b=iwDW59QCadKny6gFp9zs0Y+k/x95nm8lrEZjwrAF3sk9ZpAfIstIl1eKM7d2Jgf+X
	 MZxn4mXe7r4DE7sau1OKpa4UYEmZ9I0jVPqiVZurQ9iHY6EY25dVrBhRIJDhr+jKLB
	 rtoONS8VClK0reh743C6WBaksmza3o0WZenyQmYM5ji0BJh/Wy+0O3yX82fZkR0247
	 qQ7v95iKGu0vpdblubLevY7iG/gDPeDPmSQwiTz7Owv84MiJ0YhWP/B+B1XGYEBz7B
	 WEUONyCO6zeY6Loh2x9+ZlwnI0xGePKU1rFLdio1vaXxZAomVnEdhThjFdfxCP1aMX
	 9Cc2NOG7znEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE96C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065299358.26406.4721077670825929960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59f48b39158555c5d1bc852f5ffbdfc609abe1fcbfe6c706a7e778514f1a3ff
Date: Mon, 23 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750652993
