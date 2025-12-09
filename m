Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231552FCBE5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765294974; cv=none; b=cjbWBx9+iM2Cn8SAfVF+WciKNLzWuuNP3FRfkzSnLtF7kmUAn+SQEn8Wafr7u9KBLBHjrBHmkyamoHvueYAon3mv2QxhKxy/rhrWjz8SLXo3GZBy9f4GqpOEJ5dg59f+z1B6pmthwkejdZ3OZH+CBPU2wrYYfcpGz71Q4nLdmtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765294974; c=relaxed/simple;
	bh=HrAl/CxLGaBBtBQeLxHblbmWHwudQP5wrYYkGU+Bfq4=;
	h=To:Subject:From:Message-Id:Date; b=abtuhuZLbLft5+gRy8rhyYwgGQ0wJ2Z1GxjTwqLWd1hq+0rl0VU/epmKjH1ZN6//jcHRLbMJn8rMUSGr53oqrk9uWR50+OPadz4KRjR+TZRCVd6S/cIejdiFfZ0xFbR40r3dzWKRMm9LN21cNIwZu/ipiuPXDMV/XtJa93Xv7zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYPBPGHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYPBPGHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0533C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765294973;
	bh=HrAl/CxLGaBBtBQeLxHblbmWHwudQP5wrYYkGU+Bfq4=;
	h=To:Subject:From:Date:From;
	b=qYPBPGHnR2WujVMtqsWnpgMo8/5U1cDs0VJnqTfdw2Nr0LyHLNuv3ae1qWLhBE8Rf
	 3JY5BnFtWW1XBQQ/CSXZ5Aa3NzQeUjscmsaBLQxPcl14IIWz/b8D12j1TNhle2Fnw3
	 o4CvwkiU8+k4YSLqM5kJPn9bjAbOM1zhRMlXCKPqFYxeV43sclBaLmWKj2ZKkL263H
	 YWWx/Z/qswZ4ty//u050s1D8tFPOu4ysFLMNN/tvfEwN0V+yUEBxmuWahrT94RK7Zn
	 /0q3cbIsIiUuweHgZmSxxsNQ8Yl0t3e0VQKNDhvezKw7pOGQANnq7UO5g7YG/U2Ax0
	 Y2GbAGAwHmJww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA9D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529497358.10140.7837248085793014303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44256c57d63cee4c64b4c3bfea1e136058424b9e35a88ed295989c43043695fb
Date: Tue, 09 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765294973
