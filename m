Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C3520AF62
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744687194; cv=none; b=ezdAy5LOFr8c3JVCOXKYkFSgezrNt6NLUFZghOdPIN2dyxq59gwJidzZdgOFXQLAl4GcbizrM3b3/f7tX4Qs3q22ckUGq3GF1gcg6gB+8uJOJ4Ui9kox2o6jg3lFCwedXfz1UIMgFhv6g3HzPxaFe1k+0r+tvm0aeVKs3OaDmiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744687194; c=relaxed/simple;
	bh=j/xlc+2XTGXmLM3+JEWVr/dLvxfrYAPdAtKq8EzPF6I=;
	h=To:Subject:From:Message-Id:Date; b=FUhppZMIsWA9LhPQ4lArgC0QekCPpDeGrgf81O2CBmpc70OfpU2NRqVGri/D7ohpwF2CW5EjLoIRtXhBwtdJgG8YwgGN4dUhJkMg4Q26oN2N38y3lUedfl5lrmo8SduCWF/MMRZG2dddHgprjZ9oica3jGufd85tsjUoc1noeo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOSnHz1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOSnHz1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C94C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744687193;
	bh=j/xlc+2XTGXmLM3+JEWVr/dLvxfrYAPdAtKq8EzPF6I=;
	h=To:Subject:From:Date:From;
	b=SOSnHz1w+MojniSEPMNX7DJd//NmvR9uFq9ZkK5pRwxFOMKgUTgpCRkl/wXoRJoY4
	 Zr+f+Gy931XeIiPsBy3bTWC8kjSOmQwqMK2PoQ1kt4XWsbZVHVhWGZb/e/xswEKap2
	 JW7QHR1L56ylzZNkxbZbJt0UWMa+yypKvgjneQOPeC9mQFnPg14rAJoV8oGeftUnR4
	 JR5Sh25fWrmCbECMlCHIspHKyQflMJDKdEJn8rfYmQJfudZmmxUPPr2tGhqZA4tHCP
	 G1H6f1lX2fhjixIK/yVfmyOKR/JFTEwkv0CBXjXqGbkeD1Wuh4ZqpRG9fnr7G7YLuN
	 6USNSc9WcXLyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE99EC369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468719363.9635.8773841665080445588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f237d6d0394526097949b27cfa65af04c2883952c4fa83a6191e5fb5b6cb35fd
Date: Tue, 15 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744687193
