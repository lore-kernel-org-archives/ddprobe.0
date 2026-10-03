Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460C526CE32
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790997636; cv=none; b=TFdf+pAKNJ+mDPt9fTyMlU6oyWdBXxNXsshw/q9RvoqhedX1p4rmS6Tz45xLxg7SU4EfDScpQcdP3lCCyn8pWlP7IPA6z4895iJg4W4w2mPFXRcOvPWgI96CoB8df1KHh6h8oj2xJBgyV8jCNS7k0DLUI5F5gwM/fgG/Dt/sqj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790997636; c=relaxed/simple;
	bh=bnmyQrme+4PZKvJwPxCY0gu8uvbhgLAJvrgr5uqS49c=;
	h=To:Subject:From:Message-Id:Date; b=KF3QD8nKZiMei4KdmY5atAQ53ZKfCkFzCqdfWrPa9woZxvKw6UgzXECGNu/ahXxoUfczEupCI55gbnFOdHmk/Y4ByGO8ld0rNr9pQWqRbyRQa/kIdy0jr0zlQ/h8H6pyCw2zCGPpeirfOeIKy+kWdVg8OHhlEPVQbDlh86lXlVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaNxgwH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaNxgwH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FB7C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790997635;
	bh=bnmyQrme+4PZKvJwPxCY0gu8uvbhgLAJvrgr5uqS49c=;
	h=To:Subject:From:Date:From;
	b=YaNxgwH7ik+e+IbjN8DQpXtwVkhaci/TYYMcv3GuW9iNc2f3vIVclN7+5Mqf8uOH5
	 wbvZHFNeNFxMG1T5blCXoDLDxNurhFMkmOCYv8Za0MfPfLO/chClRBh6ghcy0KTC+Y
	 T4hfNWwqJi1Os/uhDEedODF6Z82chprLBeXySaWOxqyL5ipoE1r/gCQvJ0lidXBA3e
	 m1tvx3RG7sxuiv6WRkbUHXLYoxvtyC1lw0YVGCF9OjEXe8mqGIktF9HhBe18sqJX2n
	 vQ5KsA3FmODIptCDTYqTiSm7Ds3JnZnV+AT3d973NvlQFhzcwylohMSkNfcMF9sy9R
	 99+nlLa75u64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC44BCA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099763368.9430.4297538736601854093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa957ad6d0ef9f48ee9fbde82f324c83059a01430b310b7f2b9c8221508cbc9
Date: Sat, 03 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790997633
