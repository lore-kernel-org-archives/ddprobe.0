Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D87719C569
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755180595; cv=none; b=NAKrSIXiVmfqMkSEj2j6qbHEjDPfZGk6rG2MUHgWeq+BcwZyOA8YFOhTBmcGs70jsPI3F95Yxa5Lxaq3rWG/iVw9DQI/9e4aE4Fln6mjZWQuBlI7k2qMBNm5ZmyxfH75B5q+nJR5DQUpRJ8mQFT6wDso4EEQT+NeF5rH3y+2Hl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755180595; c=relaxed/simple;
	bh=PoHWglGltzw1T5QQhrfIE7MTneNGeh0hnpMbxgB6/a4=;
	h=To:Subject:From:Message-Id:Date; b=KjQCRXaHSb2EX77CqUuTBXrkkZFmKvQqcSSApUjrSRY6p9CkqnJKK4PM6Z/13z/F/0V/MeW3dFhoD1MQlKwG2z5+Q8OOr0miEMfLiBKtbUQP1lCxqaLZyi/SpWS3dMa0jDKD5DXvzsDrADaJE4/3Ha4ALrUkDQDjg2nfCLs16Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnUl0yzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnUl0yzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0C9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755180593;
	bh=PoHWglGltzw1T5QQhrfIE7MTneNGeh0hnpMbxgB6/a4=;
	h=To:Subject:From:Date:From;
	b=VnUl0yzZ5VkI/39cQPpONPawFZyC2U2y1LuCrimCLZ8ILrV2lt1m5VZD9cDjuWhpp
	 Pcnm57NtOcliXAuSRn6BdDDPli7S3AiifaIIihVs9j03ZvAdhlPtOzRay/zCAMm7L/
	 06L/fSPr2qaDRfKASzl07k9/+uggcK3lOSDG3dbw+Th/dzNc6uwuKXiTaQDlwd6AM7
	 yOeOe/aPVb62CoFOpFtNm9socVB6UVyLRay3/vkTi8GiY9QgY60ekXNqH/LXFkQwNd
	 y5wwrfKdlrZ2ORsMRblxefchH00/TmwBdk7KoPMnZ0hS6AZKWe6xti5Z1yAfpIvykR
	 W//0+MzeiUUGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004BCA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518059358.21744.5157873540460744156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbebfde40e08de5308293f6fe6e8d4e40b00ba82f3e97e4ea7414330ecaf761e
Date: Thu, 14 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755180593
