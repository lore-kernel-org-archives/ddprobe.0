Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA801F956
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745028594; cv=none; b=KbNKOCg2L02ncDbuxlfBq1UAtQbh+A6lzjjO7vA1lD/RJsbSFl9KOkNW/k1zK6/3HZFeVTuM/0hROqfsuwdhkH+t4NTdCGX2ULsgc0tDG9WSudE3qYL2U7xoJNp7KgzXdGQaf6Aw1YuoGEJZtlWdb1CWnaKZzbF8OSYV8CNPtkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745028594; c=relaxed/simple;
	bh=alG/eTwjk/VGWf+Je/tAmArN0eIO+qsaBa40otdkJ2E=;
	h=To:Subject:From:Message-Id:Date; b=eQELRdbyTccOwYnrEiYyd3yRSLTXXLVzeNiSSnNhRBT4PbJa0H6iEc5dlaQW8dZOeNJdtkccdjGh5FTdUcUt5tnkdpQVEcXtb5japDTrTevVDxziLGBSgdigOrY2k6i+/DUWESOR0tEbfKxxIwpDhEU7gkipWh+l8X6iZmHzbWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8R/Aq1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8R/Aq1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3CAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745028593;
	bh=alG/eTwjk/VGWf+Je/tAmArN0eIO+qsaBa40otdkJ2E=;
	h=To:Subject:From:Date:From;
	b=c8R/Aq1MCJ8Vsvi2faI4SxsraY3ciQ1A41Au2Pjy3hazwT9tQUyYNOuSWERih09Gp
	 3bbiKUC4o3aYpXLbHDXiWg7Nl0YnCAQTumchuK0Z65WssQk4iBHiaMQupI0W9grsZV
	 bZj46gOOdD0fXPGBJdVOVdAlv8WRU8+yn/zMZ6yc3AsaXN81Pf4iSolprt8yXfGs5c
	 pJT5Do+7XM1D9Mr9lefGjJSqGRjvWugydkrI4WlICoTa8E1YlY5u90lFbeNKdu502c
	 yirKtHpzEFYjVgwhy1GICIqwj2c3wHWCDmrkTmMBFW3ZaZcqmpMrttR1CqOFjqfNhG
	 OPJrf33rzMMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA5C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502859359.21484.11473005123879568120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2399eb37a8e597e35d8ba82522888e3e4a280c637aad14ee1d2431be491be656
Date: Sat, 19 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745028593
