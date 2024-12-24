Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472BD2F42
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735007754; cv=none; b=hyE6qk0PgiXqqY5WF+lqfbfSUfsZmFh+kvomsiJBFRhqB3q06mRfpjJbqLc/ejfAJY6yRC+2PS6GQXGwIS2GmzE6KsEiSE7mCFjo4hJMm3BBALoPtqZhSZVJD5a3v9JS3vD2iNK5MSY8viIOrmFlNGUG2WHDrcmfx/jktlcbTXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735007754; c=relaxed/simple;
	bh=iCeGSo69/dZaeO/ZXnt8iVNLnJ9i1xAGMjr8AH9KGw4=;
	h=To:Subject:From:Message-Id:Date; b=kbYzdwWyf7AEmLcc+q0zcAnGwUTzWiVvXSu40nG82F88Efg5Zx/AOMldHTSwC4jneAXkXzcrUNPtClRSCLB+3YWQEYlldkDjUFC0u9RBYaDmkcDgrYc5qy/HKzpHatjdf7g8INnrupwUbJdYs3XFhPcUXBhjbiSI7EiPHQO/lJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moqc39O5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moqc39O5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1574C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735007753;
	bh=iCeGSo69/dZaeO/ZXnt8iVNLnJ9i1xAGMjr8AH9KGw4=;
	h=To:Subject:From:Date:From;
	b=moqc39O57k7/K7zMkOnnH0ecX1r3JOV4Mvt47cwN2kUftrfUs98m9qJW9/7uE8nf/
	 MXN4naitWwAz2tiUndkjZAUJgkjAUiEFM1JGOWADTwPscpe0mn6vO1CT4wqnMIXKaz
	 CAJlLgz39ynOd2uIRRwRFNwfGqhFJInLVXy10J6RYu1sonHux2nLZOlle+K6inO11S
	 aYeEHFe1piT42R/saZmb7y6k2BD9iuWfU4OPwKNoVSbImXdTy1v335/YrwW7tyn5mc
	 MrSQopJf+2F8bKzQ2mBAK3YGXkoLN/QsXM/E2TMAwQMWFcvBQA1/stnLi3i8bX2A8c
	 POVlZTO5VfwiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E336E7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173500775363.32570.9212689310006203958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f139de367bec330d99163611803baa8741ea632e1162c2e2fe539ce5985aba15
Date: Tue, 24 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735007753
