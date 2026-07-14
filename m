Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BAA492526
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784041114; cv=none; b=V0J5Vi84+M2//MX5lp2sNycO6rlhql/BnO79jHNTzWG0FqBOgJy8pvP35+8Wce+12LWyy9E1yq+eBuMMh8PezCcwPjhLfY4jMclQAZ3EhZVYD0mtgpP5uTRke5SZCSCTQarUME/Hac6F7PAapZgyAypczb5Gd5G2qLUEgCWSwJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784041114; c=relaxed/simple;
	bh=rZwhwRElkvZ8AyCwzTvpBFTbV4L6ReJzmrua/ETiPMY=;
	h=To:Subject:From:Message-Id:Date; b=E4d9+eHIkEJE752S2hMD6sBkYNQd+samDcmJEUNvG/r2ec9MADbfmB87tOtKrNUCMcfHebwfoUIvERO/duEZKQnqXkumq2Likry1Q+HrbZtcmon5nFswccyC200QTv0vEQ29ayofi7KjNkisEVG87eeFz1MnRFSljDtPlQScda4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBiZ4gel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBiZ4gel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D717BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784041113;
	bh=rZwhwRElkvZ8AyCwzTvpBFTbV4L6ReJzmrua/ETiPMY=;
	h=To:Subject:From:Date:From;
	b=cBiZ4gelRzxqBc0zbqyu7tGTRxrmYoOJQ3bp8Xbzqi/XNrKUUrsK0eoVhuan0ttQ3
	 CStXKdCe/lsF0MHF6DNha779AA4ZxFPI6+jV3ujWAaEmBp9WARNriWUMXbJXGu4kk+
	 5dDeEQwp/QGz3prhvRlvLJEEZZt7p0KOVBNnFjEBoK5sHunNXJkxqrj9d7ORqnVarv
	 8d96MtbJurJ/Ks7Onsm+HqeqCACREGhLzsD1rV1l0hfv4LTGOy/zhTAayNRrojrChz
	 utw9hQwIHF9VvaYD+XyBpraiiVfQukbbk+0W/4L911enTRRkoxc+Lht9pWWLgVSYjV
	 i8hV8d/OakzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF69AC44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404111370.2350.9720952514959992898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267b4997abb6410e063e8ef940aa588dd3007ffe14abf786ce17754fdd91e302
Date: Tue, 14 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784041113
