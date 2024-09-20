Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F7A3A1CD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726805753; cv=none; b=BEIg3ibRWJwnZYd1napGs/kbxuZCUF+q9+c8qNy9FT0wUCcyjVYp4tCcV8wqvwZo42lTY+pfKpC/PNTZaOyeKfBBsqi/LRodwe8M2JgwGK3MAw/xMnTNqfaLjArWqRr6wfgYXCfZUwoTYYr8g4REGB2Nlq8IUkf/XooXmkW11ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726805753; c=relaxed/simple;
	bh=Fu2NC0Zqun1C5y9CH1j0iSkrLx5OiFUBfYEaCcz1YnQ=;
	h=To:Subject:From:Message-Id:Date; b=RcMpa0cTJtzLaFTx88PpN+EQEP8Oz24kPTjN3Qo568rHyfTXUYuxJgTy+IhWv909VoVCgB7m2L1u3W+U5IFL7eS52MUr7FBxmHQkixEZROtOtlexw5bhpHMc0lS3orEXqc704TtXj+FKtru5NNx3Jp4/Ljdr7i7V9NOIphMx23Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otGFCLy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otGFCLy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5B9C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726805753;
	bh=Fu2NC0Zqun1C5y9CH1j0iSkrLx5OiFUBfYEaCcz1YnQ=;
	h=To:Subject:From:Date:From;
	b=otGFCLy76gP8Ie121tRMh9uznFJGK/GBEs1ahMmCA/4WHzwUZ2RUS8nzHO9GRjsQH
	 DysRV44ppBDAlwWiWToxns+ZJKFs2s6hSqO0YID0XMyrJaCW84p8uQKp9xJRoSSoGu
	 ELEuX9kh0nd6i2R9T9NHQoP/TH4K+HvoJpSbnivans/x3kw6zXmQ5espv12fko6FtL
	 89aPIYtptXEhsV5zPYjrXS016S7qPU/eUcZ4wj/P0b0hO9xXykrRNL5uWWWvSM6mYI
	 Fhx6GJ97dRn0zsjvRbhGZLn/bfNjXmA687zr/SLFclZKtjiD/oygdgFt4m5dD3lY4C
	 EwVuqNOUuIThA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F257CF58CB
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680575360.11577.9995598694438123108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb465b11e8c4a284e2c0bef3c64d8605be0376f965d4e65a34e6cc70d53ff191
Date: Fri, 20 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726805753
