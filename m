Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2051B12B94
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762538994; cv=none; b=rmJIp/n71EezI5LUwR97droMsIH81dagQ4LIlLdahq+41NC+Bu16Gxqc9xtmlMjVcl9/mg1RB2s7gTgrw1ahBzRLX4+Lnw24J6JIouH2t1/srmq/YQesT2vwoII0clH0Beu8TEHQ9TRmRayO7EAW1hJ+j3xFsUAPA4b/mmbDVCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762538994; c=relaxed/simple;
	bh=xcMNDQvfND61nsk8cT7Krd1NnqUwuKNyhrqEby/PbTA=;
	h=To:Subject:From:Message-Id:Date; b=ij94bz0r7+FUD/hnSV5HJ+znB3u4eoUqWTpB1a03G6Oty8qG6H7trfGpbGTA63IQfrefUGx9LuuZbD8nQWOUrrowl0O6yVFbKYXavuzmmwr2xkWrl83JBN5703EF8pmh9/ZVbaU+t3l5ArhDAwkRzISFO6KDMUBk/GcyWyX0G7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZ0ZCVtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZ0ZCVtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A232AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762538993;
	bh=xcMNDQvfND61nsk8cT7Krd1NnqUwuKNyhrqEby/PbTA=;
	h=To:Subject:From:Date:From;
	b=QZ0ZCVtFYHXuF9DQa6sG5X2Rjdo+InGqeDkmXOQPuasaaTuNcO8nexvquANltXtyD
	 uLkAdxEojuQkbwEsgRXUQqorgPZdFoYZ1UFUvuDcJNlcFalPLfUBIO0QFwe4v5QoyF
	 VQCLNwBxvTQklJFuc/k58IhlUKPsny+WjlzPg8XhEtYfTrQDHVIeqCY6ipFC5hHI+1
	 B7UAM5AE42ZMCFLbp93uuDtLdO8ZnyOdvUx0wSMn7VUj5qszVC95Ml9xfJga/noc/p
	 C13q6MfdE9R9RKso2LEUoeHmG8jzjQ++DdFnmeKnVYV4/6kvEEmoLK4brh9cvdB2lS
	 t4MSKUc6HbMzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97226CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253899358.1086.7547914507640946281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b53e7fc0c7cfc8ea6204e597abfb9c5be653fe4d32063b0ce642308a3579b6
Date: Fri, 07 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762538993
