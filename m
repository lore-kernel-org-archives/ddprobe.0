Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D822E221703
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760429993; cv=none; b=gnxh3tcTMnR9X/PhGyYBXnPUJgatBdTnnyAWvo8dWSiKxLpV+1jDJVduMZ1ZqnBiGrl235T1p9B/yAgg2CS666/BjCxlkBfcau/guWGikCLIgRBJpsMDuUacVDzyrZK+tbc5OvH0Lc8JnF9EtPUykzJWjCE0Q7bdo9uzoEcvk90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760429993; c=relaxed/simple;
	bh=GLll8+YE+QW2hvHQ4izmCyHnMwI+rbYw8eAkIzZ/8ZQ=;
	h=To:Subject:From:Message-Id:Date; b=Xgk/oznKzmI/AFx78zJyD08vCanjdca6NnPzF4+yptN8S2x77U7jKGH0IzawXF8kWcOAI8TFTQAs6HPjEMPn7LzIL80/fSor7pKa2NPxG3xnuclbIf2vcjdeBJgy7fdrDIXJKjyHzeVLkNfZWZmCCCjnaEF9dUu83BZLBC5QdEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2UVV1ZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2UVV1ZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B3C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760429993;
	bh=GLll8+YE+QW2hvHQ4izmCyHnMwI+rbYw8eAkIzZ/8ZQ=;
	h=To:Subject:From:Date:From;
	b=N2UVV1ZOBv+h8E9q9BT9oNPIRLz88EVTS+Iq/ygaMeErf2663ZCgdVbrUwVZdvFzG
	 ccp7LRPoZbjA86nXMFAnZ9no7VoUkcAlsGKLtW3NgjJsWcxggIIYw4aFmMVEtGAy+z
	 TM5EtUJXZ/aSVfInlATDJBSLs5ttgys8FUZH3f3FKzAGXEt3b6VyzKoVUJIrASRozf
	 ERnLs2yjjfRh5qsPT+GYaODXo/EGqjHFMZk3WZ2WCerl1ghly/k87xX0cV795Z1JuU
	 0IBJFh/mxEKkN66EXIRwyoU6j9AnT3OpbwVzE+PR5gszGBEDa4NwH5SZSoBZW0c5E0
	 bBSWOOGe+myAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90087CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042999358.25047.17670047752973691279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4193a401fb98fef54bd6f4f92c6d67b29b4f70417e54cebc6764dbb19b0f34
Date: Tue, 14 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760429993
