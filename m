Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9AC4A03
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723770954; cv=none; b=LrPcQNBjlXRt4cct5yRWXS0XhE66eYqkT5fK8KVhWZCwGB7Bnog6u+7BU0Z1oACmuXyYrqUgUBI7s504ockBB9TppqgQTS71TDx1NsldHmHSQ+uOPjvSYtLrQ1EmCltbGxoqkCcnREdhw4JBRlsgwnwn/Lo8q71xMgrdKf22xGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723770954; c=relaxed/simple;
	bh=m9Z27PQi+bmFZjU60HXd1oZccZ2dgO+QahelPkzCsM4=;
	h=To:Subject:From:Message-Id:Date; b=V9+X4/DGUXtumesP/aqSt3tJzbOlkLXgCGbXDc5x1MhC1bubnXPiq9hCYXGePm9aOZpoelRq4e5d7oZulsYEf01ZlXk4XR2HXtJq74EJjt0Lgwj00JS/A3XVG7XNC8WSP5NelzTV4YN5a1EoaftZCxNRrd1I8x6qow5LdlwlimQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk6+Hv3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk6+Hv3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF046C32786
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723770953;
	bh=m9Z27PQi+bmFZjU60HXd1oZccZ2dgO+QahelPkzCsM4=;
	h=To:Subject:From:Date:From;
	b=dk6+Hv3eswOYaQSMRi49gqjCMB3p2i0qRajSuK9atUpgNV9fvbI1fIYPpp26aHWZM
	 AAb2Y3Mz0FNGtI8BHm9JYvWX35h4MMS0UC0sRrVgY5t2LzseHgFJabJBjanHEQrSo1
	 s9Tot0HPBtCagQR9i/KiqWe6XNpETzDi9pE+B7G5In91GFNB1uLoVhjVVEXXckXvHw
	 0/oGvCsoPcmXLTpp90M2tEGgJ2gL+WT093zD+jOWW7ki5B16KTj0A0K6eTYZGY1fV/
	 UFM5FDFcDemeYemQj5HyYsPcAIEMEkgWUtuoNoE0ZuyWKiZXORLF9ZOAY4x0ksDkgf
	 I7OjZMtKftVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9912EC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172377095360.14959.13922217905109865650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44fdbb976fa2d9f65dc9a19fa02242672d1adf86c312302fcab38b1965629434
Date: Fri, 16 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723770953
