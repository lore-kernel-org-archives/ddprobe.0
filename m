Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70FA1B9ACE
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718913023; cv=none; b=gkhvY9ZN7kBmkPGfzPu3Wu7eW7/WviWl7rZlUGI+izycpSoIUmW8dcayEJTdocFXSCHThFbdJPOAtOZeQj5kTDX/0DzCZMoA8zK88UdVZXK96YaIhe29PSgaea1wmt0mEn7Oeo9YO3cCvcVW8QBQMRcYfH/xBuTJlekV/dITZac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718913023; c=relaxed/simple;
	bh=lSoRMAirosm8WVq69bjyit2Y4TxFOviV9cn6EPAtwT4=;
	h=To:Subject:From:Message-Id:Date; b=QPruk2Wlb1QHptQUg9dJOccROY7rhNpfhB2tWZtbGEU4QMqHT+etQ3ykGrRMSBs3M5AeUNlkKWIUksZ7MZplvcyiqGS7ZHVRD1cbsVQqgJeWiGiDYTNMbduJGI7ipo3WH/iR8kvzIYL6dELBa0oGmudcQqNgYo+23inNqAfZiKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbAP6WJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbAP6WJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD5AC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718913022;
	bh=lSoRMAirosm8WVq69bjyit2Y4TxFOviV9cn6EPAtwT4=;
	h=To:Subject:From:Date:From;
	b=RbAP6WJ0PJmsWa1PkdmeVJPt0Cil75U1LL1/9utDN4Kf017blUcoQZ53ZrdwS/eji
	 EYs8lxw/bIhPHkDXP2E/8CDe0o43baHRxNvvcUzgVe0ykr0WlvsbpXomJOeaC7yIOy
	 6Ni3+9izE/5N9uF2VUqTXak2NNhtOdKSVPFL/oXZpRPnTxYiwJ/sD0qAGWcgk3GzC2
	 fbqnnyGgo1BcOyqkhbSK0TOB+XqY0+qGYtwtJ1bdxkO0aQBmhHoMFTzSptYwz1+DlG
	 wywZ3tIRvVnqO8rE+q1czEsExMZtnPqZohs97BPHYhDA/Npf7l73csH7YdvhvIinqu
	 q5tFMJsfn4eLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2131C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891302278.5519.5772396231255214020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ee8f5f4f974791aed20cad87487841233112bafc2b1c10770902efa4183bfb
Date: Thu, 20 Jun 2024 19:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718913022
