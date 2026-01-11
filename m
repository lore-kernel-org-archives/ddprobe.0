Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F251633DECD
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768151634; cv=none; b=l7bWMptzbpVhx9lnKvoOUssrW619TsZNnrO6ULgXbaa6tx6SOPOPmX3bmDjh6ewqnXtvQStXxLURlJNQ4TeFt2hxDIzB/CSA8xNZZbe3GP+gz5umHekcF+gunvUTBdhOsXrgSsQ7CNl8LUQ01Sr1Bcc31J8XpnYy1MlNELXbmoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768151634; c=relaxed/simple;
	bh=UD7F5fUvCNjWYQruDyNYODy6boABLExG6yJ8NmuvOf4=;
	h=To:Subject:From:Message-Id:Date; b=X2t30tXxSIp6up7OJJd/5UepVU7/2j6esZxTwA0vyspfTUlLnyriWhzWmoPMpsHxE0eYzmNnrr7UxXTZxC9wdpeOIAOe1JfOG4X2LL4vD/zXk+J9IlA7zLjTNEIjJYExQKw3oZa3MdKEh+MHnfv5KPv+uKG9Uv9jhk/MS+IGdaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4ZD6oPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4ZD6oPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768151633;
	bh=UD7F5fUvCNjWYQruDyNYODy6boABLExG6yJ8NmuvOf4=;
	h=To:Subject:From:Date:From;
	b=s4ZD6oPJj3kTj5Qq5zBHYut6JblmPknDhGB+wZA+Dc3GcC3BbbZnimE4v7zrcqStj
	 F3kE92d0yBeY7X/h7SeTM0eKVgVVPivgGxfNoYCa19zXy5qh9JAATze15K+dXuMOUz
	 HbIwf8PTQibIkk5WxcmRXAkb9MEdjSGJXculB2eeso+LRy2Vd/j7Tq0JS10hwsNViz
	 K7ISRJ7mUDrUNWq6vbj8+0B1hozRyVLp9g86x/uoNKw7NDJDojNqmMOBwxKQzLrpGo
	 nH6WBT4ZfD1fN19zpWjku+QOHLclhnhEtp7QGNM9ElQ3n9NCHDsfeZFTLTeFTB3Gc5
	 +lrgdMQuptwIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DBD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815163357.23148.16817772587898351257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd4b1505ef368cf917bb21d3ef02313e6690b47a5a4200c30b60c998c8424bd
Date: Sun, 11 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768151633
