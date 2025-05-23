Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D0B22154F
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747972194; cv=none; b=nKYlmN7IJGVDVPHuuQCTei5aBPsMHXRtB9BN9U+IaAQs1iqdtkFldkjaS5IlUe2YbC+S6C3WE4vLd+BgmfPKEQrWYHP7ch9FvjEy/I1uV9ICoKestNFkZl9n9FwFccNwVXc3LWkllloHF/4WDEM97LrWBA7XSW7Sd3LljXJj6+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747972194; c=relaxed/simple;
	bh=gYMV3rpKBCEY7+XXbIdffyJ6EeJzBeCubCrijuotW6U=;
	h=To:Subject:From:Message-Id:Date; b=gCGZWoFQlnrB/E6AidD19sJUCUng79XHfaLMEz5szZXWBGgwJt5x+uJQ0dLrulABn0yy8YQn2EsNne3r13w2dQ63DkSmB11ojaxllD7F91zZvUmv0lIbJnfyxswVJVug+hPU2QCtEc2E54qJYmwJHXuornXcx3LjNLeiFFbfbAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVuMkBcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVuMkBcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747972193;
	bh=gYMV3rpKBCEY7+XXbIdffyJ6EeJzBeCubCrijuotW6U=;
	h=To:Subject:From:Date:From;
	b=NVuMkBcpQ6q98svY9HGnXXjX9NOYGblofhdR8FS9++YOWXXC/fhJ7yvxl4zfpzcPF
	 fXU1dCS/PNpTiyd/puUKMoawd3yAyirYTBvST/dyoPgQ0lLlRF6gBCluFHQjjKhgur
	 Y7u9F7Q7WXIp7hTKd1J2BHRoskxtNJPolWmXPRQL25txYphpOaNcF/rgnsBcGjEl5d
	 8fQde0uW88Q34n17gXqwwot32a7L6TJUn463M0LxYe+XE1S3hB64Sai3ArjxXCt73X
	 nh7p/AScuTozC6gIA9tS/45tsspkddJJrK3eaXp7Z3liHtSOmcsUBKh+P0jQ049dkp
	 sJX2XhOBhKDmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1AC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797219357.8800.14211661303157298690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f110be8fc1b0d3902540ad2d21845759b927978e91867ec76642120af2e8a7
Date: Fri, 23 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747972193
