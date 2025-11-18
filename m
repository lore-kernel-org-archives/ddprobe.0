Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7578C3A5E80
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763483514; cv=none; b=A6csdVWB2YY2I2HHFsUscjH7Z307htS0FQLP/FhA/tCcWP92C1Vbs/pLq622bbd72VKW0r7hfWER1zs8+W6pIrt2ejlvHg9juDjs9o5/1IzWX2rbR7OKMJfmvC1aZij9eEbERrDy6iUpxPYmR+Qnor+s7WQG8kOvXiQokIZptbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763483514; c=relaxed/simple;
	bh=2DEudLTJzirswp8WDWEjIcUd1qCauuaJf7DpQQmmUZA=;
	h=To:Subject:From:Message-Id:Date; b=ITlRAYNQIKslTZXQIP2uHhYjn1HrO2C0sH9BuDy+qFcAPZZ2W5DXN7c1PYfeYMPUBhig3b0+B9k3Ac5biP21q++70ATEukdGBnEGfTsfV+2xmpvmF2dLGhjjRDik3tk7DbHeqD1ZlLXdhp3sdJpQBLlntab4tm1ufSaZlSUJO8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcRjOfWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcRjOfWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30EFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763483513;
	bh=2DEudLTJzirswp8WDWEjIcUd1qCauuaJf7DpQQmmUZA=;
	h=To:Subject:From:Date:From;
	b=QcRjOfWQPunBmSqihzme+eY/bx3Ahg0NVeglDTfQjryy/rExqjC3/Mo/2W3z31Gji
	 XDfgwiXERd11BJ8F07h1NZwikhbOxI+uAWubGhv9oRzhT31DEbJd5o6qhmD6NFB5f/
	 NdRA+qhAUatnOyicOv+7lsut7XTNkdLC1H0PVMNvS/V/VoTMI1yHSQl32PjmWoWWED
	 Tk4AvslZlT8cfNmgdgJSxjzyArlaGztjQqvVPSc7SY3DBCw2t7f3MmV0vUtu693Dt1
	 4YoA2q8HKKrRkGoPlo7RhfXX1ReVmdXi4ehLntn+hrQ6mE0sMmaOOO9vnvbgIk78Mv
	 JG94BpFOU68pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F1BCEE334
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348351361.25346.15363620402187300445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b205ff42b3c076aa2ab16edd997eeafb7b39f1649263f278ccbe3c4f6b49761
Date: Tue, 18 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763483513
