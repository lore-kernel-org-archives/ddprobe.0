Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1BE1CD3F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737992154; cv=none; b=Dpqtp4V18reHONbqEf6wyJYkMCIbOnDQ3KlSuUXgqredjJQ+/KKHmyPklx7Qp0wOqYEbpPWmR7Z/GS/+nOeU1svwxCpj4ayfHKPys4G5yYLGTan0RhZJBA80oKR3PruvvtjqnaJLTEEC8UpFMB43VQqn2JDm5U20omp2zZ15rNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737992154; c=relaxed/simple;
	bh=x3Bj6lx8GmswUXAccnNbzrJTg2LWGo3LIgz4FhjSp/o=;
	h=To:Subject:From:Message-Id:Date; b=AWox3kzzbGR6ye9QZJY/K9pjXJPxlT+I3rCgeN14UJDm6YGxbAcjMkHDDcSEqaPNzKCmCeYRsraBQ9jWJ9UebMzd+wX5qkI+SjI5U9uPmlPR3rbu5xWSIdRzH/RwkOLnxqY+n339MNCkXTVgtHDNm0eVz8V4ph8JMVDMs9SmdYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kb7fNQw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kb7fNQw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A6EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737992153;
	bh=x3Bj6lx8GmswUXAccnNbzrJTg2LWGo3LIgz4FhjSp/o=;
	h=To:Subject:From:Date:From;
	b=kb7fNQw06i3xQSjdHRd9lfvZ+sbFsU15crBnQAvgiYgcvvEuLhNdv53lbfHgi3q3E
	 QNNL7umgChQDUILsS313+1kq1ZkF9Aknq9b9WoxLbkWmj2k+WBuN8kgk6Oe1d81gDr
	 NMeTcte8RAya54bVyfheSEqInSiOM7qk65H/AO6JU0r7dzmc8PhFG9kgdJSPOey3j0
	 j0R9XnEZACbkc/lPYc6Ope1655mBUM0my4cFwmbx9uSV9eStINklAUk+OOmfR1/5ZH
	 qQC5WHxNGMHL3PKP4oUQ117zsuL0nY95PhWS5AvsiZPjFvcus2su2qQNIKHi/CCthU
	 tmD8bIJnkrHVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5215C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799215366.14234.12391313774207523787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cae518b0bbdeda588dbf76ce8922c3591e88e615d1f94cddcf56fa92b18a4c
Date: Mon, 27 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737992153
