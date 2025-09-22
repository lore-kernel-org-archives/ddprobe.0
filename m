Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2085929E0E5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758541194; cv=none; b=ESBgEfNTKb+x8PuLWVcT8T2zUA4eo9myW+gcL95Rtq1OP+NJ7rn0k67cIpcactk1PS3F9OdrhymcGimNnaoGp5PInsDi1byO/rY+1EhcDZLINerlv8xKLClB9fZGyVR6PvYDTj9EoODxhhXMiVEmhEPDlvLqfeO27joWLoCkfNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758541194; c=relaxed/simple;
	bh=WUsG9mfAkv1noUKUDaIVceCCkhY/srFhMmtXuVIdxNc=;
	h=To:Subject:From:Message-Id:Date; b=Buwjl35U3AxiIt4wRmjjj6YhwoYAkZmT+AlHetcDgKMQWZjnKlT3Trwidy98RXtRjRXavw3Y7NDQm5hA9hDDNAt/OCxSdQIJ+AHFWibmViJVLZ48MilYeOs5Zwi3+hdzxcZh2ZBFu08n7i4Qi8Vb5V/uQfK+OUBk+YAq3ppxVHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWMfytJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWMfytJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758541193;
	bh=WUsG9mfAkv1noUKUDaIVceCCkhY/srFhMmtXuVIdxNc=;
	h=To:Subject:From:Date:From;
	b=RWMfytJgkirf07lhkt1nPVIuCrndnTWBJq99F9U82Jp6fymkJIiYAmDlUQmYyUKxj
	 hL8mWiPjxbleQmz+lboFYWGNvWitoxEMbpjMb3/SOUvc9Fj8ayUHSETvfxFMUH8AVX
	 9j+6reMKWUVuNy9cn734Gk6cP/B+D/LT0WgvuJtdaP+SZ3p973Q7FDx41m+PtjLQ6H
	 ulPjKD1jCyAPCxwb+yxHXDbiS+a4OkSe9W/pHPQgGa2NXE/Vmu5nOrXkWJhYF03wlJ
	 WaA4dWQiEoh5lYSVMbcUWyDAR6smFf2N6G0NSEhAP4x+k5kt+0lHN5Usne9dV5lWdH
	 ChjZPGeXeEzEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F035CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854119357.31887.11151661635687628330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caae397cca20018f9b9dfee0d1598d7b9563ffc07c18bf6e9ee6b9419488c291
Date: Mon, 22 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758541193
