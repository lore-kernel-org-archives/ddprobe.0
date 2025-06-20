Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CB01EB5B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750428594; cv=none; b=Ep7+I+N6iprtE0fw20hV3Uld/h3wWKmjMog7mooCOIVGSKzbjivpk5nVW+poGhf/vZpMT3haRmj+FcG8YL0lhA8gJxBHoC9nnE/7T2h5Dl0TPc71htMW7PfSYKY6no8JikNy2Rk3+NA6DkMmqWdkxQs0I9xjhLKUkGfoO9i0LuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750428594; c=relaxed/simple;
	bh=cuP2BkCHETjYhE8pvaQ60QzPsQqZL4PDkGpenPgyiVc=;
	h=To:Subject:From:Message-Id:Date; b=VfCCfQs7WFd52oHAqQIRAPo/kgqs/kz2Gd1u6k7snq9cxW9rB8dipi5TnrDZV8T3B3b5Q77zOIREi6QicR8B6XMS8BqNACzBN0nobm6RPzcUo6sW8kuITCD2386T/ulQ7E79MzV8uZseWVhLTuAaVIZArUKD8rX+0WfFYtqce5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd1lOfIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd1lOfIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E04C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750428593;
	bh=cuP2BkCHETjYhE8pvaQ60QzPsQqZL4PDkGpenPgyiVc=;
	h=To:Subject:From:Date:From;
	b=Bd1lOfIBpzmHQZYVm2VJPVSeB+fZOO5Gsw8q8I7mUdXg195AFOlJjupkltVuDR52K
	 oRDDWJNHgTGsZWH/2tSH9AAOlzzi4NjG/fLe4fQkehVp3UbF+Ni58oyqEi6e8RANeZ
	 a56XSp8eFKn5WttTPhep/QjzTPuKricMxBbXFo0lp7I5b32UpDVURY/Jlq1XNtMTCH
	 Lllce29t6FUFKsxca+djDRwTMx2y4X2sFLmf/75qyfZEVElx2wD0wDzW3vqkrVQx8a
	 50a6hckDm9lug18sbyNgXwoGQHe6pp/wrCVZRNRIzggnoWGfbEPpolwXf35sz//jtQ
	 ycqzhWVXBtBdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CAAC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042859357.7294.5696835962496892320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbbb4341e611a9c772a6935513a8d732d546eab0b446239d13c5d3cb81582cc
Date: Fri, 20 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750428593
