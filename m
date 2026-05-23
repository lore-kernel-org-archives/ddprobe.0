Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7143438BF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779498154; cv=none; b=So9cSSifL6CMkbFjp9KSXJ9m3HL55SHuBKZEPyQ3s9t7aOzhUDbbNfN48pxyV18Dp/5hFqp2F3bsY76vcX4mPEaGOlQgFm/c/SunCmKYKiYHqIOIP+orYKyrMJF5w5gzyvlhu2tD3118H6RhWmt0CUEipwGgNc9D3U+/pA+LqgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779498154; c=relaxed/simple;
	bh=eLJCzqqHESy7EAVjaTm8cRmKp8W216HBmaJO00/PFjQ=;
	h=To:Subject:From:Message-Id:Date; b=azbgDQTuuFL+FIQRz+X20njsCDJXyF/Il46S7xEbjKoVoOYDIEM9PH2kJxbeaQai3Ukq4t7RaVkPRZntAry4wTgbCUedAxMUPe6mTEeuQLO8HpL/JhdM/YOD2KLSwaEVqYSjpK26KTamHeGA+8qOL37fGhg1QRi88dNu5nkeNOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+SBBP+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+SBBP+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86B8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779498153;
	bh=eLJCzqqHESy7EAVjaTm8cRmKp8W216HBmaJO00/PFjQ=;
	h=To:Subject:From:Date:From;
	b=N+SBBP+GXGf81B2jI/4nR46qgNljXlZawAJ19aJ+95DLnBtLS/4lahfQ1ZxeO6WHJ
	 S9svsB5xMqxrbNQwcGohF4ym8zi7Ws4fstHWUYnb7SDWka2jH8tHVFMN3hd4xbM1CM
	 QoKEdK/5kfm15H1ygOMbvxo3XqPPfxsERqR6nRyNy1eQVYVAS7am/488xMFTXCPMZ5
	 B7x6qePUK6n3RPCAMKXVljouRlL59gEMFp5VnOIzr+Zmr7wTDD0fk9RpHfAbvkPSWe
	 pzmrrYsIsmUfcL0l6O260aLX2wn4kQjy+zDpSuzr7x0MKp27n5yiya/EwNkXw70Fb9
	 wUjbSLJ+RHGwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB74CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949815368.23700.14809375985614894729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d314b02b3eca760808c89511e1a5a8f0c786dcb57cb36529a0f52781f0b79907
Date: Sat, 23 May 2026 01:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779498153
