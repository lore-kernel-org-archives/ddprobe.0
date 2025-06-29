Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FA6194AD5
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751176795; cv=none; b=mlyV/+ofmywZS+ig9yuUf/VMqO8O/bVI6jcYCXy7HVJhMBipvUW/Esw3xnHu2xyG9VdiXtFpytp4yHQO/0cWqg+UGA8O3v+QMudqqqkSRcqbEjgCteySswJD4eWMgagUXHG/OLuMrgQ33y0p0TZpSzzuTbju+C656oFKddhcqTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751176795; c=relaxed/simple;
	bh=zYVV/cbYKe5DraQJdVzHckOLfWzyBTDkJYuPJsBWbxw=;
	h=To:Subject:From:Message-Id:Date; b=D7mSiubzFE5dV564UMP2fRqBlRrDmFMaf0Hc0t6e0Tr3/WsQ9858MFFBnrCWX6WwHE89FnGufOOT80lNeQEsqnHJVFqpo4SgKhupQthj+nvkkJutKHRqqRtBkVZcCkC9JOvS8TuSKT34624fO5i/QWzyC2vfRwp0iQMFq6fGO20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Odx+1nMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Odx+1nMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A831BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751176793;
	bh=zYVV/cbYKe5DraQJdVzHckOLfWzyBTDkJYuPJsBWbxw=;
	h=To:Subject:From:Date:From;
	b=Odx+1nMgAoJXiTzy2We9GGInsn3Jd9PhaKUGJzEmhXduG4bnlFLzUAovRgIiwAAiB
	 hKf6Q+hE3BFt0mN0qsvW148iXuP9WIyT+78sSKz6P9/AKnSM7CWd7FMUdGSIG9JHpM
	 ZvKtz+JAxPCTEf7Vlx1BdrL89SB5McEtJL1EaFhkJzK+7NBOCvqKv2ckPNB9qajMxZ
	 4mOGkEJsNof40y3phjqgEUmVNkPoQ9BgbvMmg5mkKd95GO0H4GXZycjAwZVwsYGIhE
	 DvYVd5ElSk4iO6YZqxtAxQfHMQIligj7XYVjQ6UWhYi9XqNW18V9fOKTty4RGcSrSt
	 R6trsjGCuANlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96758C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117679357.25673.15394582150931271692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a2ea4d10c9e8293e4b87ee700baf2ff3be2eef3cf105658ed95870c03c6d33
Date: Sun, 29 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751176793
