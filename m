Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B96829992B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782481654; cv=none; b=d9mqPQzX4l3Qd0sV2oDQpS555fr3TYz7NBooqLprXQWyCO4vnM/MtYhf8JGbmEbkISa75qUeWpTi/9n4dyp0eEaV0Zg4UTSiDsFJnQXP6U5gPFdY9ray8GRjolQJDR2s00ACsa0tjExmtSn5OCgebp5GafbDmg2x5zb/LCtuIag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782481654; c=relaxed/simple;
	bh=wDKVTfjSo35yhtRXFKRyl89FOQumv52rk7cKp30gAsU=;
	h=To:Subject:From:Message-Id:Date; b=kHtzoGyc9ke8vMmCN7XYBqTHhr1NdMw9bB1YpgTlf9EjMNxSMzoor9Ox5BsqFpAxi0nMv8VArIGOyEFbtEWu5GUVrf1itJsDS4WUKiarS1UhuchATA6vTE5JlYzCcpjUeESgSRMLxAPtnYPs4CRT6lnDXRUWpbnhy3br6CO3h8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Upz2yPbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Upz2yPbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D468CC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782481653;
	bh=wDKVTfjSo35yhtRXFKRyl89FOQumv52rk7cKp30gAsU=;
	h=To:Subject:From:Date:From;
	b=Upz2yPbL5SD2y5ia7/H8uTGq7C6jtH9h1Wm6z/yjQn6uJhzhhDUjSRHygkmGBvhhj
	 +4r6Ob9wUMa0kO8AN8FhgG9TVaOHE9eLsPdKg+VIFNpmraVYStqVSOA5Uj97fGAYdp
	 Xd+D71agPpUSWYmlU3BPr2r7+HgQjHD3yW244bc4k8dTSuKrDMThbjTLpZOlu0atl6
	 OWn8my59NRHaop2XesKaQSlG10s5vOqZnaZNWUAmfs48A5Y2+SeEOyPMCq5VxLgGnx
	 fcDo62dSl6iOLlLVDLDelTLmLrQqgqUaNJRea+BkIPcCfUmLhcL0cJ4ruuquOdW87/
	 EIwMSKjNLHvAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D35C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248165373.22247.6890916255682576902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5bc82820a523b298278535e1c8edf6678594ef8657191b57a51090b7e583428
Date: Fri, 26 Jun 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782481653
