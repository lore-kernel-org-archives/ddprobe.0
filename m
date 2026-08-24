Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606C7364EB0
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787602234; cv=none; b=tqZwpzeT5GPQlKX8T+9WpaQY2I86abTqXF+wyhZWrQjkHxdBLt1DMzjD6SMwJbTGV7XLZbJfzj61rHqgFWOmqqLaPjB7fKB+SG1OasZ/MceNSrgj5gzCXgksmAka/PFxfQ+giY7O/Jy27gv+wNQ/vOzPufo6/y56CWtEBgPPN2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787602234; c=relaxed/simple;
	bh=tvvFuvmwrXQWNOOH+yhy4BVyNRqQX0zPc0UJFTZqBNg=;
	h=To:Subject:From:Message-Id:Date; b=svUHeTmEVMs2wc3vjcEj6Uy6X1FHOQk88uIrKOFNdPxkoDdwamUtWXAD7tYfWMiESVsUjDaXlDumM2WXAHMGJCwerKkca/lTxYO5OO8Gyr8KeSBFVuYtDSVqeKafCOhHO7TS0/oS2bHzzGX48pYFdO/KQda/rKNYy/B+OrTmFRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bitbEJeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bitbEJeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0717C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787602233;
	bh=tvvFuvmwrXQWNOOH+yhy4BVyNRqQX0zPc0UJFTZqBNg=;
	h=To:Subject:From:Date:From;
	b=bitbEJeU2P7nkoe9NT1IOnewl4fsqD1lWydo4vrNC4OarXGTiak/YXZWQD/wtUAj8
	 Q94Jue3jU94ao3X4wyFVjEZ2o8gYcH9zEPP3H94+IBapdX/81BXoz4UjQ3xS5y7yvg
	 PDlIJ+YECuS/FcgHprHlfqq8xnbuMgck8LpLDYsEY4XWtF1OURThCVAwkPbf/nv+do
	 kNniyymhvL60BfqHUHaWfUwxR5PwqjNUq+a2oYWMZqcrMFFbDA/0xWaQ1tOLcqFGWQ
	 +D8Tpdf7kIH7xMC9GiA4ILIp9FxINNH+3HhdEE+LJ20/K6/DSaitU1SnLwGe6waxbg
	 kw4QuQQ4bd76w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F9C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760223369.9107.12906157055720083633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1412fa0dc979202efbfcc512aa0c439a3edd56631204254a130207325229718
Date: Mon, 24 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787602233
