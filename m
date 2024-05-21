Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4111C2262B
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716332003; cv=none; b=R6uRUhexb7ZDppyTcuyuithPLkrYetR7O/1mUpRe6H4AWuEQhoOnjkvU+NFFE/AlBYE9PsjIA2sZP/2ue6C4kOxutbITM3R+UYb52aRc7PWVK9eWO4EaIxUZ01+qNwhSDUTrwOmBQyetm3lXvanQMYDwUMfzVS8B7VQTLrDXgXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716332003; c=relaxed/simple;
	bh=cq2Y8TOF/wbxaevaYMKxi++gWpzxce+Po+456Pq+P8Y=;
	h=To:Subject:From:Message-Id:Date; b=NX0kqZyG5qc67BTq8xif4WqKsWFfNRToRWXCymMaT5WjjiBEoQDEkkKRF3l1lD77e9j2ddIqLgj3oqJH09rusw7qlOWC+sHcWSihRtwiX63fJJDh25Bc3teHHutKi9WUC/Eg89LRRRDV4gnlmZ0MAvOwvFGRSYrKRc8+8DJkhBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+q9By3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+q9By3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D038CC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716332002;
	bh=cq2Y8TOF/wbxaevaYMKxi++gWpzxce+Po+456Pq+P8Y=;
	h=To:Subject:From:Date:From;
	b=K+q9By3J3EUvoXm7oaJSozboMMFqHw5DpVSlEZ2QVRwpdSLNVSm6K7feoUQ0wSmYV
	 EWK/dFNTYdioKo1D5AiZBV3uwRTRxJj/+YC+QAxKp47dl2JV2XSCJf5WvuU6NIUSF8
	 M8PsPUb8xnBYjAqdedO12npQ1o0TuzsQVm723sptvujTFhDmKq0oTBbYr04WfRAP1O
	 hnwj59dQKsgF9L+KbczkUu3q94N+15PbgEkUopKz5ag94s1BcVOFIZmN0UnqruAb1q
	 uRLr2sM9ThpykyZHfWEWfzLcCSWIgJ2PHOUdgd5K31H7BChX/Yv5dV1dp+XepAbetE
	 oD/scntdr29YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE43FC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171633200277.19944.11854036354986145678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b402c7ce3bcfd7fea96991e5299640c9a4ba9bf4d160ed1ec35494c9fd819f9
Date: Tue, 21 May 2024 22:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716332002
