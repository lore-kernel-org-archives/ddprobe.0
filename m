Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF90212564
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784005114; cv=none; b=hA4IepTcUXJT2FkcqiZH3/WL6ojVJdkAQiPJmcj46FQk9YLjZyvYxYzgN9lzKdGmIvzKAV7/U9eO6hHBVlKYcQ7IBdhRWabLg0dvKd+/8Ulpqs9OvPEaP+iruOpLhqtv/CEVrsOjoAwxWt8DhYg1Pc0yHHR+cVE+3tNadXWZKWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784005114; c=relaxed/simple;
	bh=haTErBp7I41tgAiKEy7VnI9pQEZjMqB1if1xJlFWTug=;
	h=To:Subject:From:Message-Id:Date; b=qKkgnb5PAYDvqyQG2XEE4XH6DXxcTXmwWLpcTMDqERFZQyr6Vd7ab9sKxVVB/Jxe6UeBfzmCHHA46OPN7g3ajESEwSp3M7hu8hLCQivTSZZMRXkgKKtZmSVwXFhXXLJ0W330KG2uI1OQzD035ByVtaufd192vbZFqCdWE3Qogjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQQq4OOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQQq4OOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49B9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784005113;
	bh=haTErBp7I41tgAiKEy7VnI9pQEZjMqB1if1xJlFWTug=;
	h=To:Subject:From:Date:From;
	b=EQQq4OOGXV4pfVn62DQOQhLgWNaZR2SVecO2OpEc/nZ8n13DYE6dSfLLimAjnxNwZ
	 QomdfZ8ovraMKlRT7uAUDNUE/N4oPOnc5NDL9ti3fUxheanQ2L1qqhxNa6iYFmXAHh
	 ol8DdqMibVoU042mnFhMYkYefvNCBlj81DmibEIURb7JXssFjWHNJIvhr2JhRd+K0h
	 f6Ni23SrVGFPgBGf5GDXroYaMXQcoPJSMq5KUj5aKQTqYjVls3fa4jEfDb7hbvp4Zq
	 TmgP6q5TI49qkiLPFZZFWGh5yLF0pDtLAu6jzhUbfwumLICSW33utEbyTCeFxBmpAG
	 pw3Oct/Zn7iXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC49C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400511368.31966.4435839127653682292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fd733d1fda327b359db5bdcf06d2ab1db5fd766507586d0645921d5d03ff1e
Date: Tue, 14 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784005113
