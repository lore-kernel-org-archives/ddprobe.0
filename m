Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A162B660
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738264554; cv=none; b=bIxL0Z5opY7QqKQYWOD0jNtrGESNRIbMsbfYmAz9FudPpF9AMu00aEWEAf3I3gt1ahaoPufdhZ+vqFcjPPgLZdP0eamrN7Xnd0gK4Ass4rIpmkTNF9zKX6zSWjqlBF1cuzp+q9Ghso5X9GotVt0KplJDx8XKt2ToTFlAU3xaq7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738264554; c=relaxed/simple;
	bh=IIEGWiyE+scZ9YMbXD4CfzdefRCv7LV4ozqD2TKrXTs=;
	h=To:Subject:From:Message-Id:Date; b=X61xCNT3pxqADauw5M/Agd/HPmqt6sUiUTkWSsmaO/z4kp5Jz8sMJMDyH7B4M6WE476PjUsiB80EvwfiSMPPV4gzHI1a15C3XvIFyCvEntb1O8opcA6daLkgsDEnjgtDPWP+GCgpTlAwbW7a4dzWJFD8scEz3Cm+6Kmw5QZ8QhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEKrPDwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEKrPDwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5415C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738264553;
	bh=IIEGWiyE+scZ9YMbXD4CfzdefRCv7LV4ozqD2TKrXTs=;
	h=To:Subject:From:Date:From;
	b=PEKrPDwDot536SPLQ9nZRR4aN8M6sgKgMoK7rwLff8Q3CR5lCITbUkMyZC2XuKu2l
	 ko7kA16StU8iJSBASADqm/D9NLay6zhX4NO3iXgzqLO7mfN0h4DCw7m7HYLYTJumFc
	 +DvIxtlLIe0nlLroiCybYe6K5cjL2orVCmYwF+zywnH7eCLJQR53RZKKPxFGy1SHJK
	 0vqHmDhuFb05gqYPgh5iVaweZizEt+DZEDoUv4I08jmc1ItNzkixsC66WF0UXYaLTR
	 isetOpUtkpHqkGX5qQzD1wXDZIqIXY49b4R1XE/KKZLIBKccs7SXlgyDn8BSf4mtW8
	 AV0a6Y2xjgfog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95EDC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173826455368.4462.8013177471794600554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172c5c0ca817c9f4eb267be0932f25ce5863f134bc8ed0d13a6eee70042f5c17
Date: Thu, 30 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738264553
