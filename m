Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F2D197A8A
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744839594; cv=none; b=qSAg5ASsu++QE/fWFeDkzjTjSjdaduHR8b8j/JTUdJDqdm0sE7yIYhMVgsZizR/WnHWIZuN4Dy9gZfkjk7dlI/1zvn15h9sQjkKt7Rw/KaLFhcxOj31cTV5XybAxkNJHlwiyZt970qSASFp9ponwppbo1Jsm7YbBZizCFAhuSRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744839594; c=relaxed/simple;
	bh=jNNFU1S2KaMqCyIcW/F8fHBF+/7gzYSC8PrSpLT0Tdg=;
	h=To:Subject:From:Message-Id:Date; b=WF0Xt+3eHGf6EXpYlARJbllRR1Jk2Qtv5xT04Fk24G4CvuvSAMdtF+UN6bUBo28J/W60Z5kdBN+vHjtw9nClNSgd7wcNRNsp2QliM/I0p5dT68O9jRyFmxNRFHZTzOrQk9l+EBXMn8PJ8Q7XMzetg3VSjX+vnqzR4slF9iGHY9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0Jjvtxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0Jjvtxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29BFC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744839593;
	bh=jNNFU1S2KaMqCyIcW/F8fHBF+/7gzYSC8PrSpLT0Tdg=;
	h=To:Subject:From:Date:From;
	b=R0JjvtxzONKVbRbzWFht/ww2CCBMKjC5/KL1Nc8bivHt5EM3pbWD3Nkv9PFgUJFmo
	 7Ca+l5x+Dak12mtc8t7LDWYtCLpd1kU6PNUoexd7zgbMuL0Xa0LjYzDPG0lkouF2rE
	 g+UMAEa9Ra0WduI3KSDb+N23F195lpmSXG4k7mCu3DdurMOO4IzWBhmBzSR5KxKnvV
	 4/H/+19L6fN+2qot/eDwv2/pAjOPLFNQvW+/DdQmDgjQMwXeZKjpUMO3pl48S/Y2Ee
	 ncTf+2h6Vx+qRb2UeNg2gZ0mpErq8Bdp6eVEYqrDxqVB0hsuZdl9FCUqepuYJRE6at
	 SXU+dCPcoy/pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B6C369C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483959359.22406.8833006015795792955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82fc25ba2b254cc72de9512632a8592c8bd784bc50fc00c5d59f942d9d080eb
Date: Wed, 16 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744839593
