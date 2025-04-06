Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432382E62BD
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743949794; cv=none; b=ZFpPGwQetwDj2417irjOSHed1O9K6+y/bJWC6ulxyz5ws3RNYzQFor865NwX9bmVu549RXn6JdwfEklvKoSWn7ibrOUcf4dMNHkw66uuxkddZzVmRJVl8GGR8QKnX/Z45MuX8oX3YdDWXMCAxuZW33R0bfA9SPEysYnxglau5eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743949794; c=relaxed/simple;
	bh=XG+G8Lttt1BTSk3lVP4q3EKPWGcx8YFDm7ybdoqhcTg=;
	h=To:Subject:From:Message-Id:Date; b=Z1eoLIqQ8Q7egwDa56mePzVOfZd3cWTwccd6vXVJIbbc/26tZ9qemo60xpmheC9THRYkEuUGwdgNBbnuDmvJap2XLmT+JNSy430w8a2k/3BmLg3ht5Kj03OqBNDDFZ1DkLBJR9eYagVwJXyeAexJJze9EQ/SWhpdEzEsaQn2uW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8OHmkjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8OHmkjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A808EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743949793;
	bh=XG+G8Lttt1BTSk3lVP4q3EKPWGcx8YFDm7ybdoqhcTg=;
	h=To:Subject:From:Date:From;
	b=Z8OHmkjZ+dJN5m3E5uVl3DnnD9vgj2PfEbSP0G8kPW3JG2nuhX7GKLFsQfQaX5mXQ
	 7cfUSKAbrCQYK/Ijha8rtE+ZS6WOG4xrQpQUToHA3avXjESssL3UadP8XWdkxtGz3A
	 os1K7hc2Zm2Y5niLKppIqxWgPd0DH5E0TPQGdsM07y8WMfbhz3D8OPuCTED5ApOJTi
	 Q9kXBT6DGjlkgUQ9U8CVEOgGqbLflO6DNt6NzDIuYL6j7EsogiV0PuNSnKRQWgBymk
	 CSzrRba48Fv82R0lBAWVG8Gr5WzUpeUErPaV/1g8xokIszX9P7aI1IrpUZHZqkhzhj
	 QaB45HDbi0hhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93392C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394979359.6651.10550363811633740043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b2cdb28b1d7636cb02cdf316b11d7af71d0a5a6ffcf9f42b858b353b79184f
Date: Sun, 06 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743949793
