Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E224D3093BA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756208394; cv=none; b=tohcp/JOZaWLTWnCHxjIull1mQ3f859T3jEDvw4HMqVnG2x3l614a+ygOgU+9z+d3grzEd9fSE54l/fpBlUk+RM5H/j9Wagvw9R+iNoGfPItuziapnrHRrsk6bi5aNxql6DPDDpDd8YeRw0tf6sNwscP8xSy4j5AaWB7kJ61yRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756208394; c=relaxed/simple;
	bh=nI9SRIR6uqq+M+BfBVM597FZy4dqRo9UJIZOXzFqsUs=;
	h=To:Subject:From:Message-Id:Date; b=WYVDrBCaXdbC+pITahQ+ueX56M7m/WUwR3sswkLSkdYo6vtrG28PhaOHiQY/4dd9op+de5RuZf5UhKcJ3bH6AsLHaEk4QrEj9CT2Rn+H+qt1p7wDnpBC4qxn5cWRlgPVMmdHW5gGtRW9Do+4INy0TFZdAoI86pTtmGzN5E4cpQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paKeQHlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paKeQHlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B2C116D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756208393;
	bh=nI9SRIR6uqq+M+BfBVM597FZy4dqRo9UJIZOXzFqsUs=;
	h=To:Subject:From:Date:From;
	b=paKeQHlcFN64mqt01NU59H/FrbRBBdZEKjbhKGe3jDcGNXpV/nultSteUJNrRRBM7
	 YvO+WEAHbIm0rbaNNrocyLhxSVfSaIEn7Ez5jf/vKd0gAGEX147gNopHBPnf/AdsLE
	 3rFL7wygs3OY38M8PGxjTZ3P/XGQDro3l5sptpmA9IKMAJMCSUqOXGWgSsJeQMx6/Z
	 gqu6P5mucXFNQEoIB6HcZsj5nlHv+GeMuNie98lEIUQr6gNt/BPYl+kGZkp91YYaAL
	 zEFVfDjM6aySgzVRh7AMg+MGqJxn0y4+tgXrmbqTGqM8M9+PMD3oFWKkW2uIWCWifE
	 DvDiUDaZn8LCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DBCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620839358.6252.13986175719652557290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c950de559c332b9d208001072ac1b9e50e40549e6f95377fad98afc073eddc
Date: Tue, 26 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756208393
