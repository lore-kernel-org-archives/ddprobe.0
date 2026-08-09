Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680DD2882C5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786254634; cv=none; b=VuP6UpwQurA5kepCG4ZXEPny37fwdyDgsaHSRAMn3IhO+BXkUNmc98MhJO/awu+7GO7tFRrdr2wICv08CJORuAOwz6ccevAEADk10ts4Y/XH6bn0+Hu//LbsbZ1KLyU/eRiHYunlcPwZrMYAG8398tZX5pVkncVoIbNzdk4Ukhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786254634; c=relaxed/simple;
	bh=ZQvWcLyaxMzpRyibtXsjghrtwqpO965Ml1dXpimtm68=;
	h=To:Subject:From:Message-Id:Date; b=g50PKp12QpjeuBjJWT2gWQENTHvmbljq0cMYV/3UckNmOsIjDgXvtMvm5Ht22UJkzKZeQEETeN64HZ3e19VQdPdZ4B0s9tm/WdOdeCj+k1jEZe4mCxxOx+TasFMsaM85Gtd90Th7fA3gLVjTpjrifsYNkU+ow/+IfWyZh5wT5lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrekMraz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrekMraz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77C5C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786254633;
	bh=ZQvWcLyaxMzpRyibtXsjghrtwqpO965Ml1dXpimtm68=;
	h=To:Subject:From:Date:From;
	b=GrekMraznaDqo1jVbDwL3u3UiCNeAhk0eIbTgG1rGO1hy7ICw2BXIy5ZL+64Hlzlw
	 gyH+QP4gFpFDH1qnObUelIgKjluC8jb7z+klPln2PpeWSlJ6HYfS6eDuEEC43Vwe3I
	 WZS5Fj8Of5jltQWD/4HZ3FkjC5J7cm8Cc7SWmuZ2b446SloiEUMMJ8ocRi98IFko+o
	 mZO+vB0Mgy75qxoKHqZrWa+mHZQLuTbWgU4MJMVL3E8sHLzO+bmdYxrLA6Qhz4yjeR
	 vCeY1t1QyKD9hpBE0y6RcR9asy2HMcyR8nJT/mf52Cx9DPRr1SUkpQdyTIeILcVwhb
	 JVc6zki55fqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFECFC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625463368.11976.18429264687501562424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf2cf59c868ae35e227c2d7866263ee5fc51034d591674c4b891f8fadc2663f
Date: Sun, 09 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786254633
