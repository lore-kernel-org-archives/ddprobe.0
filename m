Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FD337D115
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776083254; cv=none; b=rAqz8Cn2Xe1l4PFThOauMHKLZIkXU1o2IM5NWlI5qyrWGVueQ0KpDgPrqhyJEnnYBbGHnk940UVkp6wGzlWAGZBxoX65NZw93vwTBMMvnmVOd67GtnRDZutErfHRLJkvVF5bfQRcNqF0oq92ftoRjSYpzeCF9Dh3ZgUvUzXKj9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776083254; c=relaxed/simple;
	bh=l1OuCWN2RMqJA3LAhiLVHO+tbATQi+04mRtQdW/16y4=;
	h=To:Subject:From:Message-Id:Date; b=G+b+sG7UK6pNrb22XtmQttKDGgfWREE1gAakTbNpT/S9itU1GYMsbVXinwuJUnHO7M64A1/L8E3+7OOd5SD2Ckk7sflgWZEWQxQCFZTdWEhAUUVrwM6Bx+yObkacqm5vAZzZLjRIq8LjLzCeMuXhLAMjBiRj5eaChsauHE6piiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQRBKp7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQRBKp7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE42C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776083253;
	bh=l1OuCWN2RMqJA3LAhiLVHO+tbATQi+04mRtQdW/16y4=;
	h=To:Subject:From:Date:From;
	b=lQRBKp7SjDlxshCdogfzdnQrVRKYPeMO6gBaIX3hiuNN6QRKPfM/q36SntC67a9pK
	 D6AFv9kAU1xnj2o9TCE6siGmp0n4wF7EE67PNmyCd8Ef3ZvmFVOVlC+wcsCccCAKDH
	 qppStZmBGXIN6mnmykf5fDWX+Cygifc3w/dhcvj/8xAL8WEmoi5LH3PLJd7GAKHxt3
	 Q0DYmsmN95m9JqGv7CbnTbUzWRNp59Rkj/HgBwPPZ4rti7bFnenB6oJ98bI1lSwoCB
	 X6GyGpfbCVv75vJvmvkC65XIW40bXjymjocoZVqYRmUGcYKQK7Ret6D1wb5jMxxiq6
	 glDN2zTswzYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F4F34C4E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608325369.11939.8166173584281935127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70421ec9dc5990f11bdee843108ef67ce256bb437ae7205a266ff590abc78c3
Date: Mon, 13 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776083253
