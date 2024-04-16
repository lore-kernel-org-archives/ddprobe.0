Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D03984E0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713308363; cv=none; b=X2S7Kx1LfDcorVRxTaJ3JFRqgSG+Bas2SVU9pazplJAkLT/ugeTM5BZn7snR2xtkXGqAJtloEMtlV3PzJRe0PeFowOadvLmjFQBXViibZbjxw/DJ5YoDfoy+/FipEZ3i7dR1d0i2wANF1JV0p6iptMdj6eWTBofW4AZD0IPuAdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713308363; c=relaxed/simple;
	bh=A/7+vPO+urRK9ZNz2E3Oq/BduEnNDde2ieP/t0RUGmI=;
	h=To:Subject:From:Message-Id:Date; b=sKSR4q0Y1lYJdlTXU0lGY6SayzpEBXOWQqggsjcGHu/lVnm7k1Ylq8ZSyx/kh9+fscbwKL998hc2F06WycumKDsx4LYdUQGuzNgtUgPLqSEvkJSanOUOcGhJGKb+Fx3lnJlynTKMerArPsw6UT7kUE239olX6T7OLFDifOXHlzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/4KqHoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/4KqHoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D279AC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713308362;
	bh=A/7+vPO+urRK9ZNz2E3Oq/BduEnNDde2ieP/t0RUGmI=;
	h=To:Subject:From:Date:From;
	b=i/4KqHoCkcao5VPghRjQdjT2qBLArYoa1U72c3P0hwoVc39s4BKlYKJu+cy2xnHFp
	 P/q3UNaqblqXKs1s4Dak/0OJSuKwtanTTXWq0G6Qv5UyktZROEGrQ12Mjkc4Gc5iqr
	 5Aannx3rBrmOlV5+pxG7WoD49e0dZy4R5vQqUmpvEAPIHA0lYzfFgZgEsHwreCGb8l
	 dQYW3UG9odLDSV1rlfxO7ODPOvKw487IYFfTa5MS6wQ+68MTgA21/o1FaeYaMOvpXh
	 Cbq3BpFqjtc94nNFrkeTDe0bwRefTuQc6IFm8dG9ZbpmVqCifg30fQ1QZvnEi93gUk
	 oW/UTLgLFYGqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB580C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330836276.23288.2755554985634482774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50516eedb91fc95c83371ba2dfd8be6d8665c36d25b6c0a1fc8ea3977ebaa5e0
Date: Tue, 16 Apr 2024 22:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713308362
