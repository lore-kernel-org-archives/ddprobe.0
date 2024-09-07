Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35578DDA6
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725670554; cv=none; b=ieoM3/2535M/ntcTOwG4BkyMU0+jqgMcU5Vbj63rCvJsni20xwqqxPIORMfdadH+Gafduc2cmyzjpOutcDvqHRV7G6DPvzPBMeGbiA8j//VU+5UBkmYgjJLmQG3TBoZyQwKJMSqaspEIzjqNjgh9IYbKIFebrV5njiSPFqgd8tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725670554; c=relaxed/simple;
	bh=RpUgBOiv+An6lblWj0BFPQtY+5Md2fOHHelPcZwASQQ=;
	h=To:Subject:From:Message-Id:Date; b=WN6wYR6boCb3JahWP0LgCfiOTAB1sb/a7YiMS+MQhARyNxsNkNc8GgOx9R8vQfkeD/zKOBIXfGXZguCybsbVAj0se+JBDIgKUno9pw/O0HcVtZ1Xw//FzaAD6gmLnaYEovJEys8MOalff45rtzlsf/hs38N4H5+xerSYUGACgM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSVfTMyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSVfTMyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A26C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725670553;
	bh=RpUgBOiv+An6lblWj0BFPQtY+5Md2fOHHelPcZwASQQ=;
	h=To:Subject:From:Date:From;
	b=kSVfTMyc4zZ0FxwqaA9xqK3ZK7dl7ZTA09lqau7CMfGVdV7xA0/D7lC4T0TMhGkaT
	 t/m1VotHsB6lMEHYCgqLOfMctumWstBuVFjHlHOOcLpDUCx6jqHjgwUhBZmsrk+vaq
	 jQgrFyzdpdT/8z3Ubswf8gaf/NFEWI3yk8BuBHpHrWuCzWjz77Q/5GK9COVtYRr1Kx
	 aQEhufZOpxPDpy2RwKPBqlJJZwd8uXgz/IhK9mohZsKjMBT+AyXrOekJk1+ofhVegh
	 3FACy3mDhw/MqHJRVzugc/SXWBh5p9dPWqchgFTLS2m6kqzt8DFalW+sxY3lJ3OACN
	 DN8JJlqDDPDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0988E6FE49
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172567055361.17469.18195687513558731892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86eda6e4946cc4418fbf00ecb6f5ab70d667300c160ff6bcb96979ab80ece84b
Date: Sat, 07 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725670553
