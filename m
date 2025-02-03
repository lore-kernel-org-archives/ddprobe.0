Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4900A13C3F6
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738625154; cv=none; b=O1R5t589doNzLhTUCfROyvpgukQEvGA7OnLkFEjqDIbEZQPGYY7Trha83eNcJHkZKTroyp5vQzmfh2Jj9Dx8vdSX7OtUKqMlE+7NddgeOTJWa/4XH92j4nPubWLOc1dVcAccvcaKVx6ov+K8o9+vG1d0KvUQU12VZSTpubQimZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738625154; c=relaxed/simple;
	bh=IycXvj7L95YhVsxqUDMKGpd1xnBEFw/bl5hwBFGLDxA=;
	h=To:Subject:From:Message-Id:Date; b=ZHcfN9CRZok0/7RzrOyOKQLPXRnwbaeubeTKo6yYvRuwDhQBcMP7CgyYjyTpuwxKQVuf+O1oteo26YbP4zrGOFeQakm/0RjCdlCSU3igwyTyxQmsDVV3p6PPsrtYkwvHHDztkl9C0W1reAts7ibAd13PFiTVnJZatqvWwB1gDwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A99TIaEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A99TIaEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB258C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738625153;
	bh=IycXvj7L95YhVsxqUDMKGpd1xnBEFw/bl5hwBFGLDxA=;
	h=To:Subject:From:Date:From;
	b=A99TIaEJWCb9zIamDEvEDlr9adkZrd4y32Vf2p2FdF9Ctiv4mCjZix68u0eljmaf8
	 yP7gsghdzkLuOryStkVoOCmU/rqO73kTHcSGfyJj5FNN4kLoypvgahMLtVZ107GaDe
	 lFtgwFCB+/ctNWb2WW0R9e8rkKZSZ85RDe1yrqimmsMxat6dgPjfp8RuEXXuqP4uDB
	 yRsRDWGKkrblRXKsezTHwcF+x+0j0cuaIjRtO4nMuz/vRCpP2WiiFxlkoPRciN+lTE
	 2tPjyuEtdPv1xIQyMzMYF1GAJCYZli2xwht6B0Y4Yuuja19AceSB/j83Un0Jg6vrph
	 kA9lV5ohujqYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982DEC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862515361.14442.5417688630356500921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7eee4e5245afdc9f57551d2124b6d749284f59d53e4175196f73f6816d00b2
Date: Mon, 03 Feb 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738625153
