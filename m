Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352302A1CA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748812194; cv=none; b=QNM8OiB/MWhI7uFIiDXcnkKFIKn0bPmCv5Nw9W7jlPUpsnOhl6M2JzdSyl8EnAcgqhQsoSMa2hQHUpH03hJmKjQ1BaJHaXl+e6oe2tmkNZawWLiTaif3TqTK+3IKf9w1C6hzuJTFp6KbU5ad6jqo0h8vAOamo1mCqmGZyu+0ffk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748812194; c=relaxed/simple;
	bh=3g9tQZ9UHJySMEGHoSQgeYYije6UEjEuTJv9q2L/RRY=;
	h=To:Subject:From:Message-Id:Date; b=pyhnVGLUtRoxZch2OmiLXj8nfS3tdgMey0giNQFdPytPE/PFee4zUkJ5SjGyFgAS6Mi5djKHG7MjZnAEoVpK8Q7SMkV6IFjW51P1eRUEbXwEl0F7sftwkMp9HSzkYKnm/xAYjdK3Ca/wO2eyU+mjDBf3fvqk+BNNPCRwRiEbShw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3ZrxDP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3ZrxDP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748812193;
	bh=3g9tQZ9UHJySMEGHoSQgeYYije6UEjEuTJv9q2L/RRY=;
	h=To:Subject:From:Date:From;
	b=h3ZrxDP3hKsRG9f3SKsmASrntqURdpnjXkxUhHT04enNI3wa9T/dTk5C/pMNoIFYz
	 bb63DYD2IwIQmhJH0aM43/y+D61B+BDjYtRlHVpoSl2b3DGZWWjhXQAp3LxDCZaszM
	 3+OTYPYZjBMSEX10LeaiTr6AgnPXnASURTR36M8dW1Y3ypIh01HdVYwkzO22SoYKU+
	 buFhdASLxmJdIivBu+WBYVpZ99PJ498xSHTLVsNYvun+m1EaqXZtIky/QpCOpyoEYs
	 6JxkNVjrA/Gtx+cnv9qcWCufh87S2SZYpJqa6EGPiseDxXqHrdcNH9E01gDO1rBm4j
	 xw1qaocIb4MzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F638C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881219358.24866.10799574824071145253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ea8b30c04938d5a9b8c9531a46208e8decc73571e23e5981e378a3f7998b94
Date: Sun, 01 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748812193
