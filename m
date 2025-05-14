Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD227B500
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747238394; cv=none; b=sRcMW4zsjC/cbsU9BgBCQh+AuREEC7lUfzgU9ILD9YWHPOykqyq4SRPfNI4md2Clfb8miHhmkNkD3xD/9s9XodooLYSAdbKvbR8VWU+5QKzKtVe0rmH809FsjKwUdulLEUnqyDT7CWjbNk8cZK5Rmz7BnUE0FtEZvV7RIaVgfFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747238394; c=relaxed/simple;
	bh=oyn/HvmFSeeKYMW1q5zF627cHyRAMTTxROcuZyahIuo=;
	h=To:Subject:From:Message-Id:Date; b=OqYBYEor52dyeyBxSWLMzCKHOrwGRYcLXr922GpkvVZ3VsTFAEY0aJBaveDV9Q80Iq2u6RjtH/1iTcmKoUStNJ+r8+tZd/Hjl7mY92+j6Y++lSRerYuEhiGaQBRNjXPwCbEcw6kAGZF8U/KdQNJrBV5Pq1NePW6ynjEVJ68vaFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWLhJRyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWLhJRyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6536C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747238393;
	bh=oyn/HvmFSeeKYMW1q5zF627cHyRAMTTxROcuZyahIuo=;
	h=To:Subject:From:Date:From;
	b=UWLhJRycbJGVl2zLy1K1F6RlP38IXHaSqtYZ4XWIx9LTzmFN2DNAhi5oO7QtYsJRi
	 PAPXKHWOfSh/GJSdGd9l7Ti9iieKGFKxXFwDI6Au8Jxs6qK9Ym8QSivazkPPzd6LrM
	 jqHrjsnv8rOOa/ubluqnZEkgGzvpIb0W3iRIa/Te0eM7LP7jd7CM4WwTpIIOmWM+6H
	 80ymUe+xpURg/V2REegWPU6zGVJwY8HBUVUTXVworNmnv0pEJ0YTkV1qsZYnl7rslc
	 M/wtMSLhPmoeJ2YRDiIEpzHu/+9aqpPsyS04Yoq3+12gIQhIGtUFgC6cLGIVXjl9s+
	 xNUTHVPVurrqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F2C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723839358.20142.9625726702745504932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c232040af0f0f327482387c835cea6fbf4ee1e06b7d13c1564f9a30c8b61843
Date: Wed, 14 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747238393
