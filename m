Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380DF2135D1
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747734594; cv=none; b=LBOrOWw+Al+dHmkwxKwqgCO3AzvxarAUX8EdcEJGgoukhdwrakmpttdUlXTNI9EgtLNgu8x6AbsAMKqp67vZPAWj+1QzbdfWuh8MLsie2lgK5+/hOQhi37hRLW6jLsWJ++tfQj0Mvsc5V6b7KKrIWmgFTA6vmJ//O7n0ADJx39A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747734594; c=relaxed/simple;
	bh=BUUCuS3zdS+TxxdeSmh6fWtPMk9kthpzXyzBmwVcgdU=;
	h=To:Subject:From:Message-Id:Date; b=SlVICeWd0Zv+uZqDBKSRRmJawxvmemgNrwsFIYcjwR90dEuTHdVPxo10BtLi06DkswnxBg1ffRbBjaQodWbVUKLpNDsIbJmskPj5L97bxedCTeFMAHdU6DImWSMbvq1QJcX9Q8WkWVUXmzVfMfB5rkZyeM4lYVvBzIGXvQtNkTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ss2HXDnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ss2HXDnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747734593;
	bh=BUUCuS3zdS+TxxdeSmh6fWtPMk9kthpzXyzBmwVcgdU=;
	h=To:Subject:From:Date:From;
	b=Ss2HXDnN++Lgt9xLdVNHo0tVcYV7LUQ53p2eGCuIsiq79KD7DFIhBJElnvyeXs44q
	 0SO9JlpXQKYS+peyhzWD7Bl4wu0J8KxKA3HHknE74gTvDAlXryhBdAQ3VV+uRTZ6op
	 qMd+PSTbqOcjcZoCk5at+MUROTeVO7CUXtVhptNfBhAwPzY8QN/+V5xBhniKsNdhPy
	 85QdWQ1YSD22IuS85TzFIyXANiyU9kptB665qraB2dAEAr/qcCvFk6/uE170xrykUO
	 mpfOATLps8DBglTPncPX5+THjOxgyHPjhUroDc2A28wzeZCuGC34pJLXOr5z3vcx9q
	 JSpH0QtstLw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA99C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773459357.24816.10482853136991089069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96972f8097f55e425207e8a03fa8d3c4a1ffc9b5320eebb8ac10552be551a69c
Date: Tue, 20 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747734593
