Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9542556F
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723239354; cv=none; b=SGIgYcarPXMYD0lkOegmbol0C+71AxXbBMa9Ll5sqGoc5aRZtxnETQAKgk3MskOjIOHeAOVpz2UOBHsyOy7R/L39KbmqRwei9bdLwJhrfiNWGN9JKGJTAZQnZQnh+r/uykFEh22TT6ZG1eOlyJniwijYhFi/CmpZtEK1hGLZ0Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723239354; c=relaxed/simple;
	bh=8bBRqvd1iMag8cx7H4V13wSH0xGZf+iD8fcdMI+H+Ww=;
	h=To:Subject:From:Message-Id:Date; b=SZyKbI8oAHskwbv1OqbH7bIo2wZte1Y2GRpIFlt0iS1Xj708+JNfukyv3JWSyUfUU1VsWCNJwXpHfUjXipGr2bkYrn1Y1YNDKXUhKTWnHk5XOJ3geV68My5FpyysgNLm5RHt+Avtr0HtSBjrpozc38gfgb7dGC6+m0HLjI1JZ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mofwSYx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mofwSYx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D93C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723239353;
	bh=8bBRqvd1iMag8cx7H4V13wSH0xGZf+iD8fcdMI+H+Ww=;
	h=To:Subject:From:Date:From;
	b=mofwSYx1Vz11RVFZzy5TDqJy8xdTkEH5C7l03mqsr5NvwVuXmhr2dMHG5AIjUMFy0
	 SOX+dREw9ajrYgAk28U8Y/9adX6179af5wT4VYw/rvkmgEuMc8t4m8y9lsyO1ppMT5
	 O4B1sluIQJL5xBaC+U3n7JFVExmT2qNCx4njO3OlHDD/PoeLPS9XSONZrOn5qtPlPe
	 Ddi2CnqAU6I7pKIh+biXiLVjT0nJ7PNCx2EwqJ/JRYi+v/ebA4ps9HoOpjLwFVTria
	 kYGasGJPh00DoNP0WLc3YhnqoAR50x2BjAz5VGFwspXLAweIfOmzRjtyyBHAXMwqeC
	 yH2P3HG/LkqpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E55BC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323935364.5857.12755371682047600784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77eba963bc18cc0082ab787b373c69bc84b48c5fd7ae5b2e5dc3342c822685ea
Date: Fri, 09 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723239353
