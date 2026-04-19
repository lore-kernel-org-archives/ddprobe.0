Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F7E1EF39E
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776640654; cv=none; b=j0/xx2DkYFFfyT2kouVQ8h8Kz8hQPD353asa0F9zlBwdpa5wFf14On5GlLfYR/Vy4PS+Iy6nAOuz6OR/VqJdRGWWQLYuV99kma4HaI3xtMa+zHA6GGy8+0nwZ89G593z/unJEUQgcqtsjWgijTrwjchofJN9O4+ZMXgg4w4rVuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776640654; c=relaxed/simple;
	bh=jlSHY2eN/iLh5TaX+wG7fn0VQRiD88EGt8gh4/r/rMs=;
	h=To:Subject:From:Message-Id:Date; b=DWcyZziL+1Vc+RqDK0xCwkE9nM9F+EM051T8tSRyYvq5MvS9iP3Z2EUvv8p+itBIteEP+PtocXB/8IMexhRgFao2q+d7llL5dtCGZG92wT7KH+FELQQhGLO4pPPmGh/hSzagv+H+hd+uclFP7OQeluWUNfrGTYl4CTxfF5OBYHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHzI588n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHzI588n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF132C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776640653;
	bh=jlSHY2eN/iLh5TaX+wG7fn0VQRiD88EGt8gh4/r/rMs=;
	h=To:Subject:From:Date:From;
	b=CHzI588nPjR9bhJW8TrH9kec6VyT4wDTIY+4B44/dFd1sA0CJ2ISN/itLWvE/vKvf
	 TD8NksCjH3N3WeqYL513e/6aSX45JPD0diVACnoWLyntvQwss69rH+Q328JwVbKz4N
	 SqKPX3+PK9eN0cSVedAW02yY73F7LES4vp71RTiWdhKxNsPnBcUEVZ6ZUZYETrr6JS
	 Czl9VlKoh2al4+F+z+9Hy2LvlBkzcgcCs3oclZzzrTWDd7jbZ+E9o7oUWyCSHsODgJ
	 n5tehaSYRfMkfBCFpDRlwAKt0XviueBuQay+KFuUI6YuF0n+kl3l1NFbrV3Y8PhU6j
	 +u3Q9rGLoBJIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDCBEA71A3
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664065368.6354.7252597103133496804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079da8d13bc1394435366b9aeae4a8694fe0815de11341b7d30376d660fb6ff3
Date: Sun, 19 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776640653
