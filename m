Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCB9190477
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744535394; cv=none; b=GQdjn5eLc5pE45OjvQHLe7OUJmSi9CVnRyHdGWpSukcS557zdkrHgVOCGjUMyHjAucVA67pC61ejq6s5d+oKizdxtSBkzz6/XM6bPsq6DM2ClVst8CYXZIfOo9/072ILDQ6PsSMK0T9dkwZOQWhekOTNZkyGLpizjcyn1auv5iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744535394; c=relaxed/simple;
	bh=jrguaffvIJTt2qOCw6WZdzy4F+bRk/zAV4Hmm2+TPbg=;
	h=To:Subject:From:Message-Id:Date; b=O+dRzWs5SqkV1WPxi8kAzGqu99Iiky3JnEnWiotf9lKzXJ9JZTxQd2bZmoLVZeSCZ4jEvPqJItAbleM4pJFUfxyXsZZ1g0V9W6V/BjxJl8wG72ufaKpNkJz7cXWMplt/++7pEPQo7n9It3RMWaqzannUaIihPzbs5WBhxdVYIzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjCWAyOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjCWAyOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744535393;
	bh=jrguaffvIJTt2qOCw6WZdzy4F+bRk/zAV4Hmm2+TPbg=;
	h=To:Subject:From:Date:From;
	b=NjCWAyOjIDTrwtfmJPq9Eq6VJ15LIs2TQpHaG5waPeig4rfS+d+TV+TVcxFj0xlN5
	 x4bstQiAXyiH92gSuFhsP0zaf9BpOnT5nf1Hwv3PxBD7NaxLBvobfou63itTLlRzyO
	 /wSATXI9sDH0m93hbBQe6JyELjDfKXGCbFwkcb3DtffBuABcbLY8HkNSNvgz70Y/y4
	 usF65GvFQBPnWOyBzHGJOahQT3dQ0MY9sDa7CROqd1cnZpM9VR3iLMzoi0hB91KEcM
	 6uFrwN43cNOfUra2jFPOz56MaC3+hbXilFvJ3PiKem6aiOk7L4exy68IOqHcSonD7e
	 ZoXUCw3SNs3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCDC369AE
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453539360.23529.7183114955190241127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49f539bf5802f7f9e03a1127950bb42f41262b4ec0b5a37b14fab2ede066627
Date: Sun, 13 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744535393
