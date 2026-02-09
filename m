Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248252E62AC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770669834; cv=none; b=mAkwD8hm+cKoPq5+gIx6w+h8ha6vTzx5xruODycnp2wXT2xGq1bcrn/wX3XBdSktxBQofOLVovK6fB79QhXMC5k2uJ2q+L3mrsycpB6jB7isMjFacXE0ZykKRetodkPz/wo7PbVs4mF1R7AIr6dklRkC584oCzCA47o+LjBjgbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770669834; c=relaxed/simple;
	bh=xg2MxCSkwfcc9dJbI3U1OhiQAGWA+6Bh6EyAe98qxKA=;
	h=To:Subject:From:Message-Id:Date; b=f5sb2jebAKD1EQpN9zW4BwrxJXXm6tmoM81P5SQ6/a6D0c5kCzR0B+fLnw07zKghLhMswtjG27LAk1yOi/Zn2X5dbBVGKNVWDwz3mrHz3a9YxnruASTk/iMcNDrsuNLMnfawPILSKRGnHGpKQrBnivpOgZZHjyrJjRN7LqXvyfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/iHq03Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/iHq03Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7D0C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770669833;
	bh=xg2MxCSkwfcc9dJbI3U1OhiQAGWA+6Bh6EyAe98qxKA=;
	h=To:Subject:From:Date:From;
	b=g/iHq03ZifD9e7hbiwIeIEUAh39txIxdDeIs4HvPhF6zFHVLiabOBrfGy3pEHeh87
	 O3g8A+/Ll5h5zIScrDwdYqfAryxnp0CyfUIi+KdMTZSlPZ+qZ+02bE0/QWVCcxt5WU
	 2nKgx+wf+XRRWAlb4zkqRDZilQyhzz08Hhvxp0RSb6n7TP+vl/KM6yxiOOZMNgBBgl
	 94UCD4oJAH5pkkdelMU+LhCFKRh2A9OP1ikEYHy6dZn3nVCCGayMOEithzzd8bJhd6
	 emE0RBfLPHggNrCWIbYrHBs3HpIVAg6/Tp0gy8G+YDqj/y4s0422nhuuY1S9wkVXco
	 rKxrUsVE+hnmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA18DE94606
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066983363.27210.15999035563702945179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde9d6dd91a44d4a96d0ec7382b9bf3872d427efecb8ad726f61aad0ec759ea5
Date: Mon, 09 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770669833
