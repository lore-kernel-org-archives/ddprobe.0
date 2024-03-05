Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AD923758
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709666297; cv=none; b=enOZAau0KJ4rC86rikhbk7ccU/p3Th6ENBD8VBSvKkwAAFtzErCU7Ly3AFZjSUn47q3jrN5a4/8KBcHijVsEMmXKo0qyL7uKvrGbWjKwMT6ccUsKG4gbo4aUzaVoO3YQfwnfgBxWZkdyUN9j+YkcMosWnevdf9O5UI+bJkvGNdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709666297; c=relaxed/simple;
	bh=Fu81Jjh95AKwzkzgJ3RaW4EDUElkXqaMzpyEbb29Pas=;
	h=To:Subject:From:Message-Id:Date; b=mA4r7KejI8ABlJSmYY+IvD8Eav53QCHl8VQVkVdmibs6KkUYAfUqsRsPYfBDU51JS9lbdZC7xUWto8bmfK6/BPvO2D5B8ovUhwT/UfoCBrLFppTpr7IY360rAVlouU2+ijM3ayvb9XTH9e/26wVHAI1ZeYMbeVIFYw9cYR9xcIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgDjT6Xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgDjT6Xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB13C433F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709666296;
	bh=Fu81Jjh95AKwzkzgJ3RaW4EDUElkXqaMzpyEbb29Pas=;
	h=To:Subject:From:Date:From;
	b=AgDjT6Xbs9K7FVKOsqojVBKQeZqa4O8rMXyIXAumlwChkFHxuHWUgtnA35D1VcHC6
	 GEbaU9oeABE6ZrzkZ5ToES/zKQ1JSV2BPC9+s7OWtokBoeIhR/S3oJqNUl7udG+nXt
	 3A3gTI1HQKpZC0B4EgG4AAbh10oXQhII0/nUfi98W9j8RRWLdcWi3uUnvpXf+xSxsa
	 bc8bd0J8HsCOKNHFrtWWxNclS4Uvh4L8k6vyu+JUVmuOblmT1bt/7DJQU7V7cQLhnm
	 NDeyVR7ftERwuTv5iFaO5p+e84FzbQMNzsxXjhT3nnuV9d6gaGyaxpsbhNaim4Nr1L
	 +yfq+z06fPlxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB92C54E41
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170966629638.10939.4438555589227659935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e00408470e2a6cea2dd052c6e8e7328940a62d50a4aebde457ec9e628c41d10
Date: Tue, 05 Mar 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709666296
