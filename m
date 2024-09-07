Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFC6EEDD
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725681954; cv=none; b=kJM0QnAI82P6qcSbDcgasPrrwy30g30JRojGpD2k6FwvXAP9jD3Ax6mPB37OaS6NfYb6jrB21mrC3fwJXzWfE4xSMqpmj2P9Je1tgajHFmkOM25oJJCH+8XmYKzqbJSI47yt8ImTGnzI4z48JOCvynR3GxpzC1BNdhXfxsqGIm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725681954; c=relaxed/simple;
	bh=NHDlpfzpwBrmlx99MviPcR3lNyIMy8uTCJ1F+xS0ID0=;
	h=To:Subject:From:Message-Id:Date; b=AprMG1FOmskVCdYzR+wgKn4r8+WfrhZ5Gox3unUsnkDuveQNDVUz/n7V0BrHx/184FuHegEzXQShWB2iogR6xonvqymuanHbzMS82S+GIX0pjeMtIBPkAqBoT7N7OQcKlc0yCPdOQATDRuElqDsfNXYpRLPmdEHu0K48nbcvjic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGB0W7iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGB0W7iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE186C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725681953;
	bh=NHDlpfzpwBrmlx99MviPcR3lNyIMy8uTCJ1F+xS0ID0=;
	h=To:Subject:From:Date:From;
	b=XGB0W7iwl3VsGvRTluKxOuPp7mFTgE6d04Qmt5HcqpYptQxBxtEFyxXIttJnhe0TO
	 6HiqgGOSMBrRN9GqFtvcD9tlZEB20ul6h5cwmYPyz6xodyva17makpLvlyzks22IyG
	 O36RPHIuAdGi4Doas0jC/pc9kU+9pQzFU68JRL3Q+ehgGgc+Rg9hs17dV4ou21ka8W
	 e4P/KlO2NhzCk5wvfZvzBi4mWOi81SbIKiIdh+ttFbLDkZ8CaASTS/uOe5z835azDa
	 UMUnUkdzBz4MsvRgnqI6fQg1E1Lle/bnAejKnETKDH8b9Pkun2YWGvibRjhBL+LMDh
	 RzKtuzS3e4Mcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8708CD4846
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172568195366.12693.14603085269230047338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a317d4737f15980f7cd87f632f685d83ace44f32697603652122c6e3fc832ca6
Date: Sat, 07 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725681953
