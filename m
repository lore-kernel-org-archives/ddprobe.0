Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB561D0490
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727876153; cv=none; b=Eenhi9h7l+RzgBNoV9d4P/Y29PLTxM7vVzRv4K/WcbNeLHVbf67VQ0C+Q8GyHTuC+OK5ShQjPYqh1PoJTSBInDsfNktwUbmY23CFPLfbBBpXXDHBapgzVhX7DOLOXKkxZ2MR4u6UDoe42iUWT+cmD+5QXANbe9r/PeiSUex5oN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727876153; c=relaxed/simple;
	bh=2F9OFPioPNuUfOC78+66ys/AiWQi4XZYKJPR/EZRMy4=;
	h=To:Subject:From:Message-Id:Date; b=jOd6yEOdepu2Lj6lk/9+nbtd+1k8d3ODZYtEr0rB8DQyK547S4FoGJrGYd6r99VRN0EYGPalKyRF1k60EHxm2I+/RHH1DoLxk1UrzTUBgR+gPJkU3I2DzYvBQUnZQIOSPyVVM0zmXTkeVnrcN7CxILm4dyT2dQVs8UJNK260feM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLJfBAYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLJfBAYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6108C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727876153;
	bh=2F9OFPioPNuUfOC78+66ys/AiWQi4XZYKJPR/EZRMy4=;
	h=To:Subject:From:Date:From;
	b=bLJfBAYjuKp51FwiwqGQKuzqBeq9s/6VKSF1U29dOP2Vf2YPgAbQTJ108CwCpNkaR
	 CpVJZxJ9XCILQZEmMMW9oVN7nQdr2Rx7JXKm/9YGgyiY7KkRYhQLtg4FlQYRqVhR1v
	 uJQOIQbo9Prlvwox+2n8nh0mWU1WE67aDPFjyuFLn9/0rP+Fc5et5FBJyzyZU3SpGc
	 YNPd39UzMPqjG0wOjkeaHhJDgzuqBdpYLu3vZ3agtZBVkfTfLeNKW/Kb5xSHUWbI2F
	 9Pxkruh0qi93jNrKPTkBUTnuoTi5s8EhBR5Wg96ZNsSRDlnzlkLi9P/FjIpRCkl3AZ
	 9O3D267H7hZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964BBCF6D25
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787615360.5201.2539728636459950091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36702348aa5c8f20c55a7357fd64034640d9c80486e580f72752367c988c921c
Date: Wed, 02 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727876153
