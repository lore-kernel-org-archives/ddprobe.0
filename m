Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C47223708
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748882393; cv=none; b=oE1fXMOWWXJSrNyqwaW2mqJJl8sGMjgYVz5QZ+nlzyU7T4yEC6HowEswC4iRcGggKTHJnh3G9rk49KvpGY+Ah6tY/MR9gSKIZ/xlh1dfSRl8s9wGuPSwzmWezM97fTHas2/938In/Cb6hsgp+8epYt+NnKrkxTl5jy/ia2KBuiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748882393; c=relaxed/simple;
	bh=DN2whNFgcEY2lR6xvhU1PeYefZgKK1Utn1SCssasCRI=;
	h=To:Subject:From:Message-Id:Date; b=iufwn7RcZ+10z2sWs4IpVmWoVqGmsNndsovO23mQH3BQe4oGb5SPZJ/6dXZgxLWj5eJgZodz9DPcnkCs1eY79mTSjHCqzIk/RA3aJxFeLyq38HbtOw6kCWjC2Tq5B2CHAz9VVamkLI/oTA54Ik9Q3ZyXrJv0xXjkLt6x5aFR0Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNPWKrGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNPWKrGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CE3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748882393;
	bh=DN2whNFgcEY2lR6xvhU1PeYefZgKK1Utn1SCssasCRI=;
	h=To:Subject:From:Date:From;
	b=jNPWKrGK1n4h7gcuETPm/JZcENcNsjF9Dgo46cchFMd3xT9udS/5wATcGRRHUsExm
	 dhWF/gsLmXnOinQ2NRgKIrieHzoXRTT5KVR7Q8nSMhhnx8nIOEqu0YyY2B1jq0OUFw
	 KL2VLgUYbg4i3OWx+5x+GnDRuPvCvaWyFZBjx28kuB+HBq6vRnNwgOnipSb8S+13hm
	 /c6iz/akxI8Q64h+JvsrrL/i98tOCJRuYxb6Cr5cQHltp/cfj9Us5J/sSSAR1Jr+zl
	 8+poChAlJpe/y2+ejQ28XoUIJplo2+ZdfORWoRTOvhJDE4EPLTO4nVXsZse0UPSpwm
	 BhLS8JCVttCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A6C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888239358.21160.15358146200999295553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe6927eedd9879404fdb7ab059640f16d3d77de44acb5412d6bac25aee100e1
Date: Mon, 02 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748882393
