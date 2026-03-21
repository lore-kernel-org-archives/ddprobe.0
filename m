Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A4327FD44
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774085694; cv=none; b=B+5IIioKVOE2ljs7S4/IyV3c3TgmupFrROfsCSWdT9kTaaLnJ4TzR03dEdfqCmUYY6IeNiHB5eMomETPu803b7X6c6jDFUXdrtO6voBJCO0grEYRLqG5KhlDWW9khUJ2hWAs7qQl5r4cwc/BWSN2pcazFN3fyTReicNdXiYu/xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774085694; c=relaxed/simple;
	bh=a/4BVI8+oqmmTskxTOT2AEL//24iTRbcNnQVsXSYP9A=;
	h=To:Subject:From:Message-Id:Date; b=Z+hHD2KAlf9ZOULpznjfrTwJs9r3J3WbjCjmhZ1o5XTmiQ0UIIUdBQ2m3U5BcWHJwUMHUD21uU/E3R384blKEdskwzpHOO2212EQvflbClqUNWsuyihDhbAy1PeVCy6jY/CGxhqbRN0PA90gaVeUIjWQ60smI8B6iefEmgLLUOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFxtqePS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFxtqePS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A58C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774085693;
	bh=a/4BVI8+oqmmTskxTOT2AEL//24iTRbcNnQVsXSYP9A=;
	h=To:Subject:From:Date:From;
	b=vFxtqePSPHrTerqgd+PAiXDoKyFEXABbI5GUab2K9T3LAJFRNRu5+A2MD5k2t8PFQ
	 khvbiGdAPbbzVsNzqQrE1It4jBAdlXlt3uLV5BIfGnwPUOEzjoDULJINBZybz0Mxy9
	 p/jZHj1x6QAJqeOJDHxn7pWe0CH6hyaplzS5ipXd3hjsSpcDLKnXuxbYMHMWyUa7sW
	 MczrdvtAZCI0Lu1GqWH6jHCmDZj6RAIeLwhoAVntVmXuyvwH+uX/VthrcnSDMOnNGQ
	 3gFEFKQ2geIp96Y3GgQmW+MW9yTrCkCLineQiouL8f+9wwl8GXyUDBleU1wXVNL0Mf
	 ntZjWxsAv6DrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5AB1094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408569357.18083.15068038828059384168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d529aa9c73efbad105cd2acc6d65746293ca3766c96ad12ce37936a73d4121
Date: Sat, 21 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774085693
