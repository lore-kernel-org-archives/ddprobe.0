Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE9D3AA9C4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783072114; cv=none; b=fg0NlHIMv8B1x6U7T7Lw4tQYp3xJLULq9tPdJT6BlvrfRoM3aIrvv1IzYLQTb9bOrrA6oGKRcddGy8ATsHnLlEVT14a5412YscAXCP/M5gVguh21Kxit5CkrwzZmjPT2WRjItFC//S1wUyvSVKxbMFI2GNd69hFPn6sMHATa3tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783072114; c=relaxed/simple;
	bh=o7sDSAXL/dlomaahMnDPwqKcBmljJihcg15qjBd9bGY=;
	h=To:Subject:From:Message-Id:Date; b=buA52czFjwxjzG971W6QTp3IaMwmpQ8DAKz8/fa4xTddl+WL0J9wXy/o91zQy2CUuha5Xn8qTkxQeuSj5s25bfhrZvaceZdXh9ENCmVQixQKOoC3MHnaSo//V/PTiDB7BmMBiVg/VNXQEiIau5bhQHObhu0boLWh6oPtAolSAxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMHVKcj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMHVKcj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66ABC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783072113;
	bh=o7sDSAXL/dlomaahMnDPwqKcBmljJihcg15qjBd9bGY=;
	h=To:Subject:From:Date:From;
	b=iMHVKcj0yI4Ejhct3uanezlDwRTERbg7YqHs1e8YzBULYzmXbMOM90sYwYZD0vyz2
	 2v6cOyC91DJyyqkwANf5+K8abJqEdbnunOtcEP7+sojAASH8Uc89GesYLQ7sGPl8ye
	 6Jf5KYOnJ7gUekXcT+kGqgayjk9nt38m0U3nAJP1/UXMElImbZL0+zJ/ZxFVqyOL4L
	 qPaqarFcAp5ctb8fnthArvPJndeT+jvzxDMChBE7sqMoSt+KsTjjMG8TsfO1pBmYZx
	 TvZfJGaCOuU16isUkxMazwz1liBgsQlrKNkvhkgGLKYWISUg62WJdXWeO9qY3EN+qN
	 iqlLh0t2640tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD6C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307211369.14899.13488621207211953139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6388d8d30bf9ae9ce7ff547e0b0d066f3a44cb04cd985264be721bdb105324b8
Date: Fri, 03 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783072113
