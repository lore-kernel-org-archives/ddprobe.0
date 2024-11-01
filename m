Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE1A14A0BC
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730447754; cv=none; b=ZsR1ApVNshBma0v+GYUcGn+b2/XoFUiZcu5TuYbttpoBossJw8Lo9ydsQq8EMTTM/6flUGZdrXb1CZrPuZ5+rku3mpvCXnt3gaHYZKwb6ZEBQN5cw9Z7rHUAgIYN5nDRuCvus0wawVZX68WkLOQZqJW5JPogEidsuxL4ciMEiqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730447754; c=relaxed/simple;
	bh=c4P1Wmeoht13oG1YtAkPlewXpwRakM82y9GES9WaQmk=;
	h=To:Subject:From:Message-Id:Date; b=tNfJyG8I8bKhjUzPQYq6w5JYjYvgSfspKW3IA9uVWlpQ7o/p9QjQ+il3IlEJrQv7b3HmLjDWG6ypv++XsmIGYgwSdVipyMOXmvc/TqlXeJnID+Uy9/Wh4r0vC9bveQU6GNgHJrfUJW7pDv2MbXwc5LCpTlmgvHQnQq9YzIaGcLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezfx7VKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezfx7VKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A924BC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730447753;
	bh=c4P1Wmeoht13oG1YtAkPlewXpwRakM82y9GES9WaQmk=;
	h=To:Subject:From:Date:From;
	b=ezfx7VKUklpnoAMY+EKapCV5Lza3s2J7e8VTU3hUUOGT1/IhL/paeSlvFzsvfPwER
	 SjEWgY0xVrE0JnKA17LwDKLec6xeKcm5YxejMPtluOoXAk1jmq8ulLxnUncGZxqvVN
	 pFCOVx4T1p/07qrijpDM6FaJRpO7BLeTCLxj86jgICp7RdqBwsLS54VxMxiobJePg2
	 fD2qsNPvGNn2mbm6PWKgrELz69Ok6rcWTSShYJfm8jkJO2ByqX+MZ/yZHvFe7iOCY4
	 g9h1p+Q0w1a1aP0fFR3fQ5YgJvRaTLzeClJntWxAfUUsmn3RDOcGnha6jWvORLcKgI
	 daNiJbxuFSrCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97966E674B0
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173044775361.30190.1040363549791319382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8aa0577b13952a8d1e4ca8f0bc92f199c5ccd13e7bebed553f09d695339bb3b
Date: Fri, 01 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730447753
