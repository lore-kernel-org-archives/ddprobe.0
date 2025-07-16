Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20438188A3A
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752691194; cv=none; b=CmrPv7i2Tg/4ties6GyDzjGPBrsxLei3GuwmbzZA8IQoBccEhSK+xwG/edhWCudGUxK7V6LHor9ZsOHbqkxel58BYRHuMDTnD9jtWe3bpiXWBcaRJqcwX0OlmyPfoUi57ApKhhVbFpKgiJI1CWmuo6G9ZKEnVmM9HK1EFynjsOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752691194; c=relaxed/simple;
	bh=EcDfPLn8l64d5ZBoTN+OvwwW8fVOMV0cYr9AhUGfwS8=;
	h=To:Subject:From:Message-Id:Date; b=pMsRi75FRB+iNMnYzl5yb3iBNrPGSFqxutVcxvTjNOi56RtTBBGgmYsjnVeZ2YaLtIUWCHsSAQQw1hWCHsTdK+3SWFAckpmHUKIa/82TeANkMRE9rP0TVgeM4N1kjGYInY/Guph1ap1aWyo94ZDaIXffpjQTy1SkIYzLoda18tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixLI7Wg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixLI7Wg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E89FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752691193;
	bh=EcDfPLn8l64d5ZBoTN+OvwwW8fVOMV0cYr9AhUGfwS8=;
	h=To:Subject:From:Date:From;
	b=ixLI7Wg6izSQ3Umzml8V53QMWInJW0gdBJaBsNHgm7ZZ/6vqUYRPOd7yCG3yUYjys
	 UNUv4LkoA5xC4Sj5tGY747y81Xu+nRFY5T0mBaOpLUyIe9EBTyPoPWbHStgMzbzclB
	 FrXaMC4VBOhOGW0I6Vubr9Q+8al+b3FttBw7ABPuRugI/ZbmCF7d4UfbUOSFCPYFHQ
	 8hSpW/qkTBgm3zpXF3cPL7y7lAmOW1GhLjFJHHLLXAtowExIc8JOjsdjNVzPo6f37z
	 EEADYMBhnbjBHaHg0lljhUza4CwG66hiuOOPFtj7fe+EQbl9TVFCW+YDrpJqRVjRcR
	 TSKCK+XFCqUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD1C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269119358.17555.6955316649398868852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56bb9bb5b1a47a7e34249a85f8b3c19d85f1a8b7ab5a53c6af7adab9a3e7f2a
Date: Wed, 16 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752691193
