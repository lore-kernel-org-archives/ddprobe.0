Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0448437CD29
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773327894; cv=none; b=tv8kOebli2VeJ94FFdo9s6I3FR0+XhCP7YkGtvXtXkpbuy6JFnYQzsHUjCpqm59Kd5QeuANepzh9mafnsFXRFOxCMm7XmK6iBrxXZzw5gD+QwQCC41B+e7QukqDwWPWRg4Hk3xRclxTGZ+l3VkcyMsRU3LM9Npba7AbXV+I5CzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773327894; c=relaxed/simple;
	bh=1C6LRU/IVQhqs5pUn7fIR54OPfTNt6YcRdkJhTySUiQ=;
	h=To:Subject:From:Message-Id:Date; b=GBZEqYwXsPDcIj9RMHVDWm2YrE9uSmWb6sqqGOKHl8QEbpNg2v5jyg7eaB6ycrg1Ivl9jUyg/ZqrMxAiK0c2OYaSovRJqC34M6kdfFV9lwSVdO/Rpa1YAXOzJslJV4TIncHFln1LkNGQqw3bB43XTkztHuHmCASC6Lebjk8Se5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEsK/efp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEsK/efp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE30C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773327893;
	bh=1C6LRU/IVQhqs5pUn7fIR54OPfTNt6YcRdkJhTySUiQ=;
	h=To:Subject:From:Date:From;
	b=kEsK/efpy2cn7HkV3uN1twqZ7keonJwzaF/G5cXEH/gc3f9sb+Hbwxcmj/ZoT2YyO
	 3TcQhVTHfi2LbEooFNINffgBPhD2DaHSGvnjT+xgflfObOZKgI1ZMtSYgL+F9NY2K6
	 fuzDnoi+jTpo4h/dWgKpksDOrGR1neQZGiPVc4QFtpMwzSKAhMSfz9OQYeSgDL6q9n
	 voHNsjSUK0XYWTnij4QglDr4CbB3c5eBvmbYzfGANWMBhQVBUvKkN14WIKTSwyxQ+R
	 Hw7ymmR0t2qBqCJm+lXcvnHWwSuXmh77r2M7zPkK34rGiupLS/3kx1h9cLFFArl7tR
	 d4ZKmOFq0wxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912571067040
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332789358.28369.8045146005210367762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c7b5c65c83043725f0b2d7080d1089944e5168eca233aa7c38636e62d7b07b
Date: Thu, 12 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773327893
