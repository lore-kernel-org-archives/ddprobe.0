Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3441A5BB4
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742255394; cv=none; b=UHc1Yr+LyICsfv7h1u/SrZtrDx4eCrmIkXSYyUtCAvRS5KRll6Hub/XipXZI0u0levDEmgnYcRfXC0BWxppjq7K2qe7lsl9QPtHHr+BflF7yuPqtt4YwTITn5zsY1pxWrp2vaMGI26fNI0rXv70IsTku7XqRIeJQUOm3jVEk22k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742255394; c=relaxed/simple;
	bh=3UqVmg8XS3xcgAL7iV50b7dc5+oLXc/T8ayOjZFwT8M=;
	h=To:Subject:From:Message-Id:Date; b=YHqMTiRMrUBQvJiykKsAMAq1h6cOjxsSBSRBgV4jObhFMf87lRK9CBUiuerxJ2OLuOzduyaJRIbxM25iChyamFnENoHWDFR+Wr8AZmN5rei8LBMXeQUIqwE++isygfaFCkfdMqfOP5BdsSQOV4ighRaSu5Gg2lze0z1HzfxkGAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfxGjrDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfxGjrDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A9CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742255393;
	bh=3UqVmg8XS3xcgAL7iV50b7dc5+oLXc/T8ayOjZFwT8M=;
	h=To:Subject:From:Date:From;
	b=WfxGjrDskUMfsJeZCOD/J+9Ysq5rmKKmWxTUpZfAUhTMtfXQfZdUdLKpomHTBtpnm
	 7t5yfCk8l66pkrBKwklvEHg+JcsHYZfLAgdBhjp4RH71FALYFumdhXA2ZXxUKi9wB+
	 KihWdDRzAupPzzSaa6U7T7urEa9gtYtKuEw2W69ptI4GKvtgqvjwZwOM30vdGz7gCY
	 eu3g+MzUSq62WPYC75vUVp0img8OoHyqAZFnADueBrLbDgo+h5xirX0Jo7eTvpJPoB
	 lkUgZ36eFYCEFbdfQxrxuB1ELWcz5gfZ3oPGZRGNZ/gcZPwRkbEexW4LNNUjyxcMU3
	 +TXbwzwGKPN0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15F1C28B28
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225539364.28002.6132059170687871122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa35247366a9f9f2375d36a564b787cd3e988860b95269a7e699bc66d2480d71
Date: Mon, 17 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742255393
