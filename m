Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB8B1BF37
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712981363; cv=none; b=e4S/7k2hmeqraaryU9fLd4oQdc8HuLWX2CFk6sqpWmc56Wvete21Z7h4L9IfVuiRLzYdDJ8kNqk4thRLc41Rsti5jr8MTBz6XPIL2S/UwZ59rqLXfr4DUbFb/EXizE/aAQZLxcr/wjffaj3+jI0hV/8FsLaBc9v5ROOKZXTqxQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712981363; c=relaxed/simple;
	bh=VctPK5om5VhESa1K9HSexFJXeiKRosZsfA8ccahzS2U=;
	h=To:Subject:From:Message-Id:Date; b=ECV6e4UFTv8kSV7Bhx1ltSN+5C6RdBZlrzHsCo830954Bed9xnidYpwgI4mSH0gduB4LlSe/ms84thkhduh3Tk9Cel40jZirGRlF4lLM2rWXBDmOM7egHBBzDVc2n6x7oVdzILORitNa+3rKQ7wbBZaF6XKNxH0uQWcDzfDJD2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shohva96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shohva96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD13C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712981362;
	bh=VctPK5om5VhESa1K9HSexFJXeiKRosZsfA8ccahzS2U=;
	h=To:Subject:From:Date:From;
	b=shohva96hgLrwmpTS2o8NkFTyiAmgTjXPvjVv6b2DLDrSC/oDPB8mx/lTyccqcvqA
	 vRLi0Cw2SEYOBvhQhMcYjf0yTeQoiRVmOna/Nz/mE0VLtN+D9inC84CmFQncJcNi2c
	 ZhsJ2IE8Wx3zCc3TlISyb6SMsPLddDu6JxYa4djebPxw82HeaHCXJR9gFrmyCg7XSs
	 eSpnX+BXrdwLPmYeIcz831+Z/op2yWzxPHocIrLnMHsz5iU1tbvtZvtdTsIlBduQwt
	 zOMQavyh08Ec/k8xdkjjac1xcR7U/xLpaKgp/Kv0iY0p3FtM6GgaNUd+tr0Px4vi//
	 9GJX1lvebBbqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4867C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298136278.4345.13444491908936617020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2451aa76b2592c1791dc47de9bf854b81e14a384a4f275f2024a23daf2f29ccc
Date: Sat, 13 Apr 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712981362
