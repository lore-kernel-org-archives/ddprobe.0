Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED3117543
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735734354; cv=none; b=KLoxDs+tveKmEORMDXR60X8wxFI0glbejCULBW1XrYTzn3laz+9VEsVjtWSpjNJpg4YApYd2gIgsdykSBk8bniJ0MSQ3NZyHCLqhv6qvln+GdVqjyY7pexxFrceRmA6fxK9ZY1qiUUs/W3Fm6isjIPOdayZ1YU6N8aVj3a/3K+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735734354; c=relaxed/simple;
	bh=dWR3HgIZZANAybG/K+NSGRIFg9u3YLeY4N/4gS7CRM0=;
	h=To:Subject:From:Message-Id:Date; b=hBMSrHrAeNGjpcyk69iigMfws2n7X3pqntc+PshcHzgcX8hUulz/wbL+DgdPNxfoMu05AdxsGj9V1qoXE/wDLyYijF+20JrIGfUQj+Z3kiZViNAs0KdhWp4Z6GE9HLvbGPZZX+laMIDKFEj21jPCYC7ceFGp2mve3UzATtv8cGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izBmCy47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izBmCy47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DD3C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735734353;
	bh=dWR3HgIZZANAybG/K+NSGRIFg9u3YLeY4N/4gS7CRM0=;
	h=To:Subject:From:Date:From;
	b=izBmCy47bqgpHu6UPUaEM7BY1I/VrlEreF2Ul/2PsA5+kAsBTlFkGBLI6iJq/2kfe
	 Q59Rs/BpM4ZUrEoqszQPN+e9SwOtinz/jkV2EfGNn0cbJ2Sk+/7Y4/0Tz9xFPEH+my
	 Ac41HgvAnDxNGCoCcH5HXovAt5cAUNk8TbUlJ7ifDPzJ3LjWGCxI+HrQ3pHSQf/nDH
	 EQI4/eEwk9ML6kYc6umIpQXw0xUrlm9cX+khjMKOl0MelKt68sYv8aTYLqc8pWrNHi
	 naUgxsnpvdEVXwxgnGgXktMmJWEq5EOoE+20Ev9nGIFH8jZVG2kI7/LZNJaLc70PDn
	 FZHaAk+cAaE3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE01E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573435362.16336.17771799264759025184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c98453361e31a0ebe91a87e11282c520df2a478460dcde9f60a905f413041b
Date: Wed, 01 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735734353
