Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F7823E340
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754294395; cv=none; b=Utr5Q0DHAHLx39LbEIN9eAlGprHYbO4E952EyiYtSS2ak4S3oe5oovbyjU7I1RlRht3SPU3RsBSwILgmo3CdFSUVn16bKAZ2c8qLXvcSWfEmZfn+ZIxd9yzaTm6cI8aG0aQ0O+R4bIM3s4wbTsR9qI/Z7Eqot2+P0k+S8+GYa0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754294395; c=relaxed/simple;
	bh=qStYY/0zpNeAjBFX9vicro6JmKXzmyIrMMI+mxJpTb0=;
	h=To:Subject:From:Message-Id:Date; b=ZO4W6MlfuELcL9y4jXo6XVX2eNor74nOIddvcNETw7jYF+2EwGu0f4uyXvboWjBC84TEr7uY9M083cau9oMcLUCn4BZ4Jih8TyhbxvONVbhbrIdiL7MeIpOUt/I5e1/R903nM+5xfaZKyA8Qvt7qI/2TrWyTa+FOs0/h+agGjFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIrrJmHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIrrJmHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6780C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754294393;
	bh=qStYY/0zpNeAjBFX9vicro6JmKXzmyIrMMI+mxJpTb0=;
	h=To:Subject:From:Date:From;
	b=uIrrJmHdmxdTEsIWjBP3tF10f9HggbJhzGHVsIbbkHpz3lF3kKDACsIVaKgMId5TA
	 wsPeoCSPnzInHHySEpCuX6FRuXDVCtmSIShUcVkKitY8lU0rQU/L2MW0Tb9oopSV22
	 Meais61EOlua9e0D+jYkh/g3zSSOysYLDD1UrbSPIYXsowVvcURWRJDmmHpOwYHvnA
	 yHJri5FJlMoUmURHvneRyALeS8q7UV3dtAAYH1itDYZiqol98d2M03XCOh5dN69ezz
	 fBA0sSor5KEx6Ia2B2t9IgeV1T09omAI00lr0sKRGSpBQEqoEl/ezavSpsdEaff+1x
	 ygN8YfwiQInIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A1C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429439357.25526.5502264110408734652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0cda0b0fd36a01b87d7ceecd28c2fdcc0250280ae65fa55c0f86b04b39659c
Date: Mon, 04 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754294393
