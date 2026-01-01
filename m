Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217D221D5BC
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767307434; cv=none; b=b9wZIXISqlp6QKdLo0n4MT+lQNk1ruVjlTd0b5oaEztciKgBKGisYyTAjh+BM4xZ6//Pd/2ZiqeTbUNeKFJhxZ+4AeYm8tBlyiwYuFji3r+6QxVuYH/28EL7iG/ixk2zOoOk/vJv95qCAdbpkvL0SY+1VixzzRF7OigXEf50pIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767307434; c=relaxed/simple;
	bh=Am2hMp80YEgxacDmUW3F3GkVSerJ32agrCIfDq4LmEs=;
	h=To:Subject:From:Message-Id:Date; b=FWKZ4zZOI0+F7SQy1RIy13ze0DbODN2b+/kVzEm8moKkDxg6dJSB27ep9h1RZauEZznEMiHx8A2y/XtTbtjrWV3pxYn6UuK+zb/7PESgbg/tvHc8Zt7Pjr8TYN45XNofxcr8leYmMx6rjWIJSrdqHr+uWFDguAY5dpFRHLkYBG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bf46aOkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bf46aOkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767307433;
	bh=Am2hMp80YEgxacDmUW3F3GkVSerJ32agrCIfDq4LmEs=;
	h=To:Subject:From:Date:From;
	b=Bf46aOkOjZOnntCKJDN/f5cKMgdYpA2PWCdhKmzbahgKE/GGH0hRIDXNZCI36qoRL
	 +qxf+NWkxmy9/Y+9FZnTTST9q8vFSrA1ONiirZ51DS83yD+OLW3Qch/9EO4CrZqLuT
	 +Ma2z2lvRqILIl2EH8Hh2OFD26IgnuJje02NAvN00H8vwCc4k+LuZq7lBNg8Ic8bLH
	 hfWmUXtCwwzJ3oQ43Nec2S4RItqcQ/12PqzSCn/2Fd4ANpkQ8NxWvSAsRbaaErxuou
	 Pdsg8lJQmFZkPs43/Xz97wPQf9B1+XWru2Fy24InDxabR8tQyxhWm6PDkbgbU9jJt+
	 NEcEJhEw7zfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E9EEEC1C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730743358.30652.12442364901410120408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83da7e99b52852df6acb2d8f4f373df7f2e59edaf469f34ce125a239f2b1b19b
Date: Thu, 01 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767307433
