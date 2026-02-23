Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176C834C990
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771834494; cv=none; b=d4HOQRc1HJyvUcld9YDxMdwxEgwo0REjWCRTBPUoN+tw5RzY+siCGRTlYp7A9exwGEh9aegs3uRzXuD3FruJ93lAWhzEeRtJpKr4CFbaFYpA1pIIn4lys1J3UlJyUhDtKuD431ZpWVck85xJedVSahDwriChs4dQmv5Hhlo3sdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771834494; c=relaxed/simple;
	bh=QwmhCjvJIrjvbIO3MFPvK2heoPIPiGE2pX1B3Pa93Qc=;
	h=To:Subject:From:Message-Id:Date; b=NP75yXieYzUTcxUoob+wJrFdQpkmY9N1nK7xT665ojZgEA4Wp8ZqT2Es3ve+8k/h28n1L6BxVtTg5P1tPwU2ZZ9tddE2iNFFNsJFnTaDVwiHtLX3KoXhfNIanYhieOHG9jRyr8Boax1EfW/G7lA7KWKFdPHWeBFCQqFgSyG4zi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5lOsJ1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5lOsJ1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5139C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771834493;
	bh=QwmhCjvJIrjvbIO3MFPvK2heoPIPiGE2pX1B3Pa93Qc=;
	h=To:Subject:From:Date:From;
	b=C5lOsJ1YG/lcV+ynDKRtiSTKrnufl/FkuRpUZEPvXrtbqgb3mbXrGpIIcM77NrcfV
	 HFC/KoUXaP4230ZtW1LQrrJ9l2+C4voyymywzaVecqtOcMtuiYT3+tqsJdIPq2J6Wb
	 hPlIZEyJrRjWFOaTSSN48sW5tYc9PlfvlOwtuyOFo0Y9MxOQz6n5gcOf4DFvf4NXSw
	 XfS+t7C9mgojKE96uv0QAHjTYLwfP8Z6TYKn0o7Qzi42TnjrraeVvMTo7rTJAUK9nU
	 W2/P3h/LM6G5B7qGXlzWhCRERH17JeJiJ4DGBNS/XTkabg9pNGHBSZyKMWjO2HiC+5
	 01nm06F652shw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92378E98E08
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183449358.11766.4054164245270837271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6002740f4ba14a3958ca80699d7dbaafc3af209e7512519947a49585183f084b
Date: Mon, 23 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771834493
