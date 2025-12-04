Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8E72D8371
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764890574; cv=none; b=iDMW7CAy8dLUUFTkzOlMCocWWyNAxkNoovwqgTLHDGwOHL+jP79tcLXGOAs2qYISaZuTlsJteTzNy5oP0UFuCkOckFF8CbDw4vJ+dpAl1LTH1qtdN5sN9PEXLSKYrui+op4UcjMS5kITtyvRJoHeESChRJ92pu8nuQkiQ9lmEJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764890574; c=relaxed/simple;
	bh=eLclrKUDI6j6lHwwc038CExKSHPh0qga4lpBWUes7oQ=;
	h=To:Subject:From:Message-Id:Date; b=YmZOqsTa4jKqined2fg4MlSPrSAqH5zNcfXBoc2tv4OUaYZj0yuHh65ZiDbOzC9X3GChQ2U7+BNGVtOMHDOklG/RWiab/KbYS3xHwM8bCgzV1THf1FmJKF+GkcxYdf66diUUfibwZEu8vlmce+mipXfX9frItabfOB6W2n5HdaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlwmYOXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlwmYOXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F0FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764890573;
	bh=eLclrKUDI6j6lHwwc038CExKSHPh0qga4lpBWUes7oQ=;
	h=To:Subject:From:Date:From;
	b=qlwmYOXP+6/n6nh4ONhkq+nmg2YkBwYKsB8qmEo4/iLRWh7hNJ1/uQWjn5asaTuMX
	 6ZJzdlAJLJhOB37AW48So9GxHJOrqzOq68ExqG+WtzwACyoQMBtBkp9AbjH+QBC7kx
	 EVvwlRPEFeIgWNdOwylxFAHzB4J6MPxG+PfIXgA2xDMBrZBjaL8GrwGzt/rQR/pZW4
	 feMetkcQEyP+7o6rdvsHJbUiEI2JB2GUw/oiVo2e/Eq7X//5HY3Au2NNSWgVqbuEST
	 NOfLfF4XdDA/E+MweSbOZA066Tod9l0uVjVIuBCD83C11N89UTA9CZyMLlbEpfVDiK
	 v7U63lcbquFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93700D2CDE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489057358.18960.13331199892018643728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc65a88d72dbf3ef9bd77b167b945f84a05e16c02355d32b8e5807fce966fe3c
Date: Thu, 04 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764890573
