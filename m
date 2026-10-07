Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C19F30CD81
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791335434; cv=none; b=ji/Cpm07z8bVY5n5uOn+DePSPnr2vBLHSBuEhpQE2fQ9LSMZCmWrH8qmdqsXBUa1dsIAQMa5LkyNNPjkjaW6IfseO3ce0VcJMzXh+Ny/kk0A6i9XdEQlibpHCZckj88sTkwF/uJNL5ryTXA3k8LRrz9+FAjpHJcr+LTt+/G3t+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791335434; c=relaxed/simple;
	bh=n440tQX044BP6vhLOgzmPWCji2BGOAbSVhYf+jngeSQ=;
	h=To:Subject:From:Message-Id:Date; b=IHiXOHU0O11xbm8wHyf1+iQR2F+dscBVF/BmtxC6ku7VngMx4p8We32zkdcb9E0mK89MgzDWCqxmhJfr0hjLX4jjiGuLwmykKdMMpgFLs26Ri+gKxctDFP5tShuiT8bCIDA3AjTM0mk8TYJCx9b/ZXbj8lkrQrEZ9YtqFgEVlhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+eIHNT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+eIHNT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF56CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791335433;
	bh=n440tQX044BP6vhLOgzmPWCji2BGOAbSVhYf+jngeSQ=;
	h=To:Subject:From:Date:From;
	b=q+eIHNT1NljmJ3lerwcxtcCX9l64zIu+bZLvPNQPaJ/2ETYXyp2x5P//Laeq5uLtZ
	 cIE286iVCr1uoN0Z+eSv5lReFgRsiYbnBcG7IFcpiWkIzxqBLCbZwpRwhnsAThLwvj
	 aXeULsKtFjOy/rvVYHMOSqfxc3CTCpiHyfeMEvNaEDVn0Rg+/XoVU33sJrxfenEL8m
	 ReTXcrTm4qJObpdfUHxEB4tlfz/5mDzaGUapayxxajuPlzXCAMEng0Xq3kZ86zfl0P
	 wKJusXq+wCe4NjlwFj+Yv0D1BAKXPZKsDuEtR/482zhPGn7u9UhTDLzVqDnbDxUlW4
	 SQJeeMZxpv/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9CBCA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133543369.21607.9686505184342600057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d22ad84dee7b3ad02dcd1e14b9cb7fe88b5ef9537093bb590c4250a3a8f1454
Date: Wed, 07 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791335433
