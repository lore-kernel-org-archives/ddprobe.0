Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2303714AD38
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735333554; cv=none; b=mIM4QuLlmKK7SpbjoZzlATaZS7HIAI5pfsvSWKPkFFejuXIShOHcwbv8UeARJwkeJ6RbrkCRwLyfe/fPVr9uDQTK19fuLXiXvjCfXkKJxP9HFr81Fg4egI7iXMniSOehwQGKNRFt2Bn1KEOzqvF6zbdFnh1Gcb1Q9z36UdTWV7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735333554; c=relaxed/simple;
	bh=KR3PT43anwljoWqunjdyLsUjIf0OcGNLDj94/RBr8kY=;
	h=To:Subject:From:Message-Id:Date; b=BKZCi7yFq7NhxZ/4054LR5dSpMdhMHRFOBqRt2l1JYruTqgJOAkI4rljREI4QU4uqCSfMnlXIMV9fdFCfdfWeVHdyYNuoy7+e0+7juHBcmxwnzKiv4VndUuDkS4emsyN9DO1VQNHgeFEsazs2TsK8lbTrQz/cONeBMaH3JvEOpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlSrcXpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlSrcXpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB80AC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735333553;
	bh=KR3PT43anwljoWqunjdyLsUjIf0OcGNLDj94/RBr8kY=;
	h=To:Subject:From:Date:From;
	b=QlSrcXpPJJOEqqoXzDGczfUF3FmzKCzcuira6Cm6z/gOm8GZmPVDaKErE5qoCN3Be
	 1fyhCQPTlI83bap7W0UWWa7gDh0q9d5fZu0kjtiEh5OiTm1t3P5otgmGG9GeK7qk7U
	 LSit56QiEBj7Yj/hEF6rPQKSJ+tqeh9Zqb/NZFaL9Mt18p+nrdJTwhgUDYuwRXWsV7
	 yHgpldRRjY4O4gnqamT3EH9xGIcDYBTUs4qQg6dt2fjIwU2h4q+uDyx57wlo3yniEB
	 wjbjmdNrx/+Qvg/E0oxeN/uMjw7hlDaPf5jqemMQw0NDs5FJeOy+Qz8Zv5emIaQp5I
	 Q78eBhn4rrV2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F3E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533355357.10682.13684507079118437886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23f2cdd7f727389f98205d51f4f435250633dbfc04ebedc789825e6e7040445
Date: Fri, 27 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735333553
