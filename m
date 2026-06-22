Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4391B340411
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782149794; cv=none; b=UqrMfthkU5OHbDUdcaK2zdm6mk7hy3PRLlKsFhqN75JbU1Sg98AX8nuNh/CvZ/mUuWXWxamTaxbxj5I3TeXJ1rIUu/eA4ogM9UviF4P66T7g2CTJKGuJEXQp6WFP/GjjIXVHNPaQe4ojzEx6Ld3628Xw00y768Xtxcbz32QgMXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782149794; c=relaxed/simple;
	bh=mqaqufATVfW6/WV99q+Q+nDdQqmJi2LYj6/9cdJPCR0=;
	h=To:Subject:From:Message-Id:Date; b=hUb7UF6e+wZg/DY0eYqrocd4wIAsM5q4bR90EbO4uh/C0vJVZ3Y82lEHwCLd58PL0YE8Vf8Y9ao8Wz0sO7dREg8gxoAYwyBJQkPiFN2oxKTwkP1OW0NyzCHgJiZw4+vqnlC132ybeUsz7Wd1WRpxlVSrjvHjnxfo74GFMsiOzlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAuSnAMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAuSnAMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC8AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782149793;
	bh=mqaqufATVfW6/WV99q+Q+nDdQqmJi2LYj6/9cdJPCR0=;
	h=To:Subject:From:Date:From;
	b=CAuSnAMNnCP41uJZKEoGRI16NkYT67eCc+ICKk7eGjdd9GhVQOvqTXy2AZzaOhveT
	 uijVMNxw0ntWac1FgDziolXUwqdV32wRqXPve0AY3Qy6LxF/VUC3W/oESZLvZmgjF7
	 D3aZfdaeAJuizn/A2BWAu4Fq8/gbHmFlf1VGErfQHrYbxAFhzwsDOIHJWo11OeI6KW
	 7DTjXScDjJLPKeHlA8a26aCTJwog8mO4EYhjf7lmtbyJlfJDpRQgM4XbKHs1oz5/0n
	 il6t2enmPDYJk7uIqd8OVyQMWN1DdNbE2YMgD/qfF3AWjFqBWrRl+K9ath8bnuZA3D
	 pRUfIOsJE+8tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF0ECD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214979369.32386.12994112042710452755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7b1b06002c28662551f2a95067a3f2ec30ea17bc81d0bcea152fdc6428e66e
Date: Mon, 22 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782149793
