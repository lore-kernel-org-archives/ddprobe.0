Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649B2D94BA
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781273794; cv=none; b=ZFJLZD9d1a/h9atMeG4IeLJa7NGHU624SyzNA8I2RV80VQBzqD7bu73rYkFcFwvs367JttYL9Ti01o65dBnzNva78n9pSrVAQbKIZcGWDmUol0mePwBxnsW9ZsIe0rSGdwjCHrY7V6eU5ENFLN0Aw91jNDhlRPBYHn8s/NGOCkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781273794; c=relaxed/simple;
	bh=QQB5dbBs2hQqCeGfKkDzdnHo06SrI/Tigvpw0hFJTDo=;
	h=To:Subject:From:Message-Id:Date; b=gC5VCg6DRC0A5I6WjKPmW0GPiMPeUr6EDCky3wjP11l5fnAiDNJKU5IlHsIyg1OW75BpKpo6/1T16FrZI6g6fnZ3TWTOM+WlcMLHIaGFuRvfbsUgfze4TihgFuoZcTfnQqeF5dFKKkOBC5ODdqBf2DDUyfRLoo33wcSDFMf6YJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8KurH/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8KurH/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2725C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781273793;
	bh=QQB5dbBs2hQqCeGfKkDzdnHo06SrI/Tigvpw0hFJTDo=;
	h=To:Subject:From:Date:From;
	b=A8KurH/B1B/NXdJTMcirj18MSvxBfflBs+GAuAYOZZNtOnffEuXQvryVJM9iqnWDh
	 qAjsKk5RnWlUo9mIk6yhM5Mi2MAQqMyqjxEFTo/St0qXDrmnBPh1JvfhGE/P+tK+fx
	 QB+rlWyz6o7ZZlKVjaWa4FbxOYZ6n0RIV1612Y1vgz9TcMaV07gl9NyqzhYEySiVrg
	 IDcl1vvVjug8ocNs4kGNF/xSYNDaBazBuwkK0j+PcD5GwRhEfq0+v27qhK7T40fzz1
	 0iSgKIxFScdqOizm64YKjpk+CHtgV3QCAwLZkRutu7ywzo1sFgNuHGNz1bDg6O2ImU
	 A3sXmJoHY5jyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D5ACD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127379368.12462.9119733172707524669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1389ad876d20f9b2214591b190a04dbf81ea69a4f98e0094cfd351596f02a05c
Date: Fri, 12 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781273793
