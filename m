Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B95419CC2D
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732535754; cv=none; b=jJz++9lyciuROZjjWWSfFBSlOeW8XHxfXqkT6lLw2OE7D/Qw/FOc1s8iv90OHMErIv39o6WjzFwgbzWVQWnhgrlp7cSt1pNeijlFnV5dNDFNI6nqlyogq5sbwhwbU3gUdULaFHDhX9ij8H6SCuw/VoHVxtwa9wCY+0dmLLUel4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732535754; c=relaxed/simple;
	bh=Kz8yx5J7/XRz1FGFmEDU36y78offrDJqoXq+U7Q5Dwc=;
	h=To:Subject:From:Message-Id:Date; b=HQAs9sJg3jU/f5ueXNBcUhSp4qaV4t91D5hB9J5LiUPGp5sj8gv/hoad4omHkvpRyv9AKnZhDsigQFSsxFSY4o3mmF+BgB3mkueYhswiffMJhmSfBb1m2GEbXuL0hI9HZFKYVrLtmGk7Io8s5w4kGI26yMMyNRjqpDitSs7QK8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtQ3CpRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtQ3CpRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FCCC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732535753;
	bh=Kz8yx5J7/XRz1FGFmEDU36y78offrDJqoXq+U7Q5Dwc=;
	h=To:Subject:From:Date:From;
	b=VtQ3CpRLuVr4beDDCac0kXWU3XF4yZOtBVYLWk4GivSL7opOzX4SWFM8cuWdoV/tc
	 b3m5ho9BdBWj/X7FZgdFV1j2Lc+lC7Wic9w9XQG5sxcwWk3vf7gvF5aI77mUC8Oylw
	 JGT8Q5MSN20B3LWh9dNpP03/wBJ0qPBlhIleWuD1h2rzE6ZYH2oTF1tQ5/+5yI5+er
	 aW02bqILEisUhrfBjlP6uWFdFfibBcfgV46PZdL2Cvmvx+E9mnIj/gr47hmT022OWF
	 lit70n85Q+ADqyV/8G08uli41x2wFwPG5DoOAI0tBQLHqv0Vixu4S6IPl3eKdbRlAP
	 bjyv4fyBcmBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A038BD58069
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253575364.28292.13418900155838390593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650e0884c78afaa0877d12c79d613c14a35437617c28d5293b05766113dfe7ef
Date: Mon, 25 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732535753
