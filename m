Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAD223BE
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725248754; cv=none; b=KKzNWwUG7Vsb/fmDwKY+BsvgujhKE3RwS/YXRdRMTdFv8ecOcao3jVCoNcxfG+W9ISViM9ZF/UxM4GdHNSD8yXjlOoN+2ZhrZP6rP42EF1ekhxenzcOQq4xp9xJmKprBdQV6jZRiV3Zfo3v0gX+jLXQQ/yN85eH/53av2ZC+9iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725248754; c=relaxed/simple;
	bh=Lo8Fkov/27f+hENGSMzTLglZF8JAlIlZrr/iXZoDAmI=;
	h=To:Subject:From:Message-Id:Date; b=DyhBkMEqqRtR4+qFJdyjiwdscQWfsktzHHpSS7ACTvTf48X8Oi+HTzJtohFnNKTqpp0SWxbsJ2ZmrSOfCpiCoQ2fJNsNAHiK0QZNS9za/t4ijoq8UbJ9s3aI0G6uIKHzdeJ4Tu4RAGRpIZptSi5+wgb+0pMYqWZInQwJ4uxUvzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pF5N6ua9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pF5N6ua9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F26C4CEC7
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725248753;
	bh=Lo8Fkov/27f+hENGSMzTLglZF8JAlIlZrr/iXZoDAmI=;
	h=To:Subject:From:Date:From;
	b=pF5N6ua9PDV6Z/4oWmIWwJMwmqhfgUHSTK5NiVLpNz3zIqsxX7mY6RvurOy1W+VWj
	 exC1ikDbvOBgCuc0mt78vig0lrZJm7MyaA44iw9/IbF29HxZTs6UZyxilgaZN/Zto8
	 AirLqock7NJd5rE3cBohpCFitqdByt5OJoYTV87zT67qLCKowUkNSFN1qFfr2a+p1K
	 J5ovwq0/yNxlGrzTAOpmBf7X7iSskS8EU0NjjRUnI5dCziMcbQruMP1CeJAaYGgU+f
	 VPqI9I1XoCOlW0viIuVFf7xIFUNvqWrLgP2ld3yLiCCgM5gHDGbVL5dPX0buPkjP89
	 RYe0KVBejF9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C1BC54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172524875358.25921.11925257759838943345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb4d149191f8a594636ce5e904e5b2f545d8ed72adfda394d3823c4d3d90e7b
Date: Mon, 02 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725248753
