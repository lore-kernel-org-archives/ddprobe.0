Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4778B3D564A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785148834; cv=none; b=EzA9MHGg/5+WVewRe77R+FxObawrqS3hTzmMJJ3avgdEy9TQSJyT/Oz0muE1TFJFLmtA1E5c6oVePji4RVdXrzpSKCeLAI1eakbqycCCFWPGNCHriE1XnYl3+ykdly0PmefOeHtrwlkvzlDsk028dWMyi2A+SCSFH+SAD6msN/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785148834; c=relaxed/simple;
	bh=kyb5octfgMx1C6bEnjwVd/LmzdZ40C9JP9XuXOdtp1Q=;
	h=To:Subject:From:Message-Id:Date; b=uNPzpXuqYBHeRXfDZo30sBE2v1fF424LuAFbpsgB97YlEmJQ2GBbHFi5Hakqzm/EFirGyk5vz5+9ou2El/dFIt6HCEN+JoNKGWbSWjY7y8dl4m4oRPXhcLOh0043+BxVkL8XT4/jTNo8y4N73/fzjowZRlTRtq6ixzAD7/waIwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIyv3Urs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIyv3Urs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E40C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785148833;
	bh=kyb5octfgMx1C6bEnjwVd/LmzdZ40C9JP9XuXOdtp1Q=;
	h=To:Subject:From:Date:From;
	b=GIyv3UrsKVJ98jyrkDOJF4mBjciK2iAaQUlnOMWQC/IoMhE2kzbbyByuw6TE/3APp
	 V86LVD9oo1I1LmYtEShuNW5NuxN+J52zkUd6AQ0h5WW53uWbzrCZb68kYzU8kdb2eE
	 VmJOTkAgcg6MfelKFPqR9+hkpjKBBHxOM5nzBRbXq06iK0By9jw2tfTIgD6HieggIP
	 jgjGdOnPtN8rYpzKWOvtT2QOsCjAt50BWAcc35I2m+0mUpLtK5gt62FtqcoGW+WbkE
	 haVL7o6Wiqrio1XrVF6fpzJRrnVbEV/edwyETwzBzllhLv6ByvL855bd5TgxlkE52g
	 +zzxlDi+7fxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFCBC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514883368.12488.399262415432019997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb40324728c1735e7911a4c1b97ee7146706c9a4df67380caee358c85be2cc72
Date: Mon, 27 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785148833
