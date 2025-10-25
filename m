Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C939330F800
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761409193; cv=none; b=qAakCVrB8FHgBLzqPMsVmsupsY1RKj9v8yUhCODXA3NpAwP4zxi+5mn/MgsVjS3X8gYanwlfA+sNEukB97lqSoal0ccXLwtNd93UlCm9mLTJamr/cDmMnn+YNFBxC2ZPArpeDQUWVmHewEwA9c8O9g9r0hcNkbfE9M/8M3bsA90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761409193; c=relaxed/simple;
	bh=Nx5Bo0UnBqop4GuUl/b0AO2ZBNhB9Mo3NN/LoaZWBtw=;
	h=To:Subject:From:Message-Id:Date; b=psSmbFK/+5OaEIk1jUj04MyQO6AbOX5sGKFernmb+dHbTRycdvLvlvLO7cVTDlLjvF3Arbaz0m5PmBVJ31VKtUklmjg9H2mOpQMH1SduFNXnLuAL5AJrDb5zIcSnjnlhOqxPEs2ejH827uvgetv2js8eGNBbIbKRLXy5mVWd4Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVlzECRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVlzECRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA201C4CEFF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761409193;
	bh=Nx5Bo0UnBqop4GuUl/b0AO2ZBNhB9Mo3NN/LoaZWBtw=;
	h=To:Subject:From:Date:From;
	b=fVlzECRI6KvhSdRxzLQW+iSUfqdXSPXnVamxS7PPYf7zCrPakTOMH2lBP3wTLRb/5
	 RuH/lJNyYUv35eSEhTjutKsbpu3Ht/z3WBgkRnsGdzoWFtyxQkwEqxjfbLzZGz39RX
	 7Ub7E84yZA3xFnfX92gkAe3Weqof83tXTgf3ADNSisFiEfxumtEbLRRTCYt926dsRC
	 CXu+x39ndxBSfhsznW6tkQ4nvbv8dfYnsg2/kgeO/kfh0xX10SV1mWWvdp1HM/IQGc
	 Tfrc8xNuS/h8hIZQoFlWUNv5ApYPUdFg22naRSXIF152sIzjRxOUVad+J+KfOlumqs
	 RNNJeqwpZ/a5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6B1CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140919362.27224.220585539456828785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c335dac7b5268f9c7f3b274bed5afa562e57ecd08ded59bf274374a21a0383fe
Date: Sat, 25 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761409193
