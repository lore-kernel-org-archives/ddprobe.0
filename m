Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AACF74C14
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774205094; cv=none; b=tsyrNI0yuLCJiRAVSA6JpnUQ8m2XU2b7XSa8xh3W6bUlYZ3HJZvQgty39fcidnCyu9d6gqbpo7Z1gQx5zKlqFBSoEon7eol0WfZHf646vrrXiI6pfXJrYYocOuuOr3+h00jk1la5bYzzTsvy0ep5dXr932TQlo9qi30Fgqr9UuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774205094; c=relaxed/simple;
	bh=k1T5/B2hiV9oeeboOi6+S6FRl+x2XxtrwoZhjwATgoM=;
	h=To:Subject:From:Message-Id:Date; b=jzFE+SPOFMd31vi/mruDtHirUdOu8S0xucbf+EDlYFTuQ6loZWRJrlOJUNcJ9+gE3ynWooDwGrWQpeZEqjqSBdIUCd996rRa2xw/iYzFqO7rolUaU2B1AxSgX+rV1R3tvSue+9fESajesmhKQM/P3cbP1ke9GB5gLo/oZ33CMc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s83UyVGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s83UyVGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D22C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774205093;
	bh=k1T5/B2hiV9oeeboOi6+S6FRl+x2XxtrwoZhjwATgoM=;
	h=To:Subject:From:Date:From;
	b=s83UyVGtlnsGQPQaFOq7Jco/YlGKo/i3JxRvpNm19gc3TrEWbLh75FpkeUt1e9hJW
	 vWGMzJ0XeHhNUJ7t9gVdO+bW/klAfSXoiw7MrvNGcVjnVAXNH+E84UGXzQsxHWB3Ia
	 012/o76EzzxHFhx3Itt08QvhG/5NvY8LgpBjGz/NJ06plNiNzcBvyL1Y5ZEXcDQu9+
	 ygzm3bRtlNuG2v04NZUaSWvpeIiSw/7m6d/x7Bz77mCXEfX93d7gvh1WD+tJPW6POw
	 wdZDqi2WLq2HJ4ZtSCaaehqVKN9ftADq/BrDK97MOzhvYDYohpEl/3NtOJN4x5EOfC
	 EJfGBd6zG8P/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978C8FC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420509358.16137.8173154854344562982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c0b93af6e49ff0b5b5e0c413e5580e99b8544e1dc0113cdfe4df2bc283739c
Date: Sun, 22 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774205093
