Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3563822129F
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760770794; cv=none; b=YUq16iXkaql3xEiijJ08cA6c/b1splPcSPjeRKgnCyy8bbtKd1flV+reSzckWTJsc/oKOcnJIpZk4mEnZIoAj7ru2jsanjlIrX58hGKBbx+OsIC8UYxI/VRnnvKYBspuAhU6+b/hR+tGiPr/Ex0kLgYi/z+OKlLYzgn0kjkLEOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760770794; c=relaxed/simple;
	bh=yHM61yc7pMNPgP8N4V9nXG/XyyXtab3h2KY7jq1IfC0=;
	h=To:Subject:From:Message-Id:Date; b=Gm8I+lsNjdr4TNaWXNmwOnZ34He+i7Y9K2IQJtIHECbmUYlhmpVslMNFykai5TuFyCsVsdWNRjO4vNgbKnsj4yeu6DfkxAyOxL/KjXLQnWAi4/Slo18fbXbl1mfgte3W4W9hl52avQKqG2r/ux+dLx9jGJBJpE/glWTYa6dVA+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kmrzce7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kmrzce7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA84CC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760770793;
	bh=yHM61yc7pMNPgP8N4V9nXG/XyyXtab3h2KY7jq1IfC0=;
	h=To:Subject:From:Date:From;
	b=Kmrzce7RDyu1Ml7zgIsGV+wg0RT8n489B1syZkBNBabZddONqc9hX/O0aQSv4p0wc
	 bD3cvjEowk4/Wv/xVxex65q1yU6cy/731aHgbpNZ/bdqlWKld725r5uOqvTyAHcvnf
	 LCKWydImCi+pHSg3i6vkLiaHHs6POz5nStWjLPuJ9LgguvE66lpE9cnTu9aobKZ1F0
	 06RFLb6CHISlrwyZYDIf65dUhLkip/Sx7UamlCHr3byNNfLLIz+l+djghI0xAJh8vx
	 s4DOm5uXiOytF9cslg82EYXNGV38mLTuiz9zQA4NHnP+Ef0yc7li+QCXzpsg4DqsuR
	 0p09HD0Q2Edog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97599CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077079358.15491.17130521910686849513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c6bff383a8918ba2084250cb58863889cb1746a9a3a244655e7cffd1427590
Date: Sat, 18 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760770793
