Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3014A134AC
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754387394; cv=none; b=iBlKEzRXsRp9j2ue19oeZhasUOEfWFfm06KJhfPOwx43Vyq5qjJKkR3c/lo2s2rR13zH5a1Z3AX+THy/VLHwVEgUEJRAK92/mVzNh33q5I+FMPm/2L68nTbx9ifjKZMZT8mrDZoZ0uE3hK36lAedRqnyXOlahUmsudkdqa2quCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754387394; c=relaxed/simple;
	bh=RcRQozLF50f1ohp9elYYcWc0896eyRPBc2nyEYefKGk=;
	h=To:Subject:From:Message-Id:Date; b=PphJCoO7b364Pqbw1r5tAXgnjwih5ePNka+DmJYTlFlTpy6Encmd4hTvRcE5Uac6m3RdUQqwlKNi1j6pxO14AKGUlhMhTYp00Sw6qAWGHxI/w1HKZRYQWzXXCZo5z/3NrwFaMcgT/pFscqsXDtPiPRRBTSwBOt0bh8LkgOeFuws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unqF8NdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unqF8NdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC8C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754387393;
	bh=RcRQozLF50f1ohp9elYYcWc0896eyRPBc2nyEYefKGk=;
	h=To:Subject:From:Date:From;
	b=unqF8NdAP8jUt2UMRtighBbVtFc1XwMVX2EdJ6s9SUfJNU9fKTtztFbbXgZvcrfw3
	 GuWhR1qDNDwrjecPukbk7zvFZg2JyFQFUr1V5rwDfq7mTBVsbuxLR2VxfDI+xSppLN
	 hzBEP2u44RSl0yRQkaFrqDMN8YNtSXs+dtfj3ZMysIfbtKG4FV/20nct2e8WbCYeQn
	 PQI17IPLqaTIT0Oa3QUet9shILceg1mTjiq9UgqJwR+ISelJCQThDz/FiJ3zlBKh7d
	 Wrih5IlFFhPpWDa9AovipVucBQHhss+X2e61kv8VXuQz5Fli6j8phJYWwlakwutV0t
	 iEZnha+ZXh5yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C5C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438739357.8387.993656198501971073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ad9e694d5d33b82088b54b568374dc80f3f93057159c27c8a972d0c145a776
Date: Tue, 05 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754387393
