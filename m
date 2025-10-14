Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B0E26E70B
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760422195; cv=none; b=XtGNkaY7ccKsq3Z82z5pzqdKi69IPhAkpytMzM9hkmAvwjOtaeoRIalKwD2q9WwFJzuDJM5vSX8ebaCwRVkTuutPj3RctzbVU3oLVV5ITYX46oVEHnOa3ICiiQGiBBH12N0S57+OQamN3ZFWoCcwAOTIGbKnhORxpZa3wAL64fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760422195; c=relaxed/simple;
	bh=Bsb8YLJKAMISmQgi+gP7aM4owzOhxsVGr/Fnu/DfU4g=;
	h=To:Subject:From:Message-Id:Date; b=rsW/GA6Pqu64f1I4eAAC588QLoAGn4c57p79n7iuJOlDoO7tczbtDDfaXrrwBPXElqRf89NglegtKN3Dg97PD6RBCx6HRj1nTBLrw64keCX4xl/pR3MRxXdgvvzVY3S5zsp7cbc9BIQotaz2xC/h0qYrwyWeOZfZHJNgxiuLWG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbn58MPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbn58MPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC91DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760422193;
	bh=Bsb8YLJKAMISmQgi+gP7aM4owzOhxsVGr/Fnu/DfU4g=;
	h=To:Subject:From:Date:From;
	b=jbn58MPirex4w+q4aHIkYwuqpa1zoufTOwoQ9Dg2HQvD0aU3KmZ29E+R+TQ/77We8
	 FdNAw6VqhXyF52cU8U0v2HSC8et4H0LCZbBL3Nxw/OuPCHAi9n9rmh8YN0xS9zbIjz
	 5d+7k4qShpHJlP16h0/JT+1qEs8Il+sZxMFuoglO7zw1tdbr7q/2Ak1rNggO4SwF8F
	 BpfiE+gK7r8qe0AubMKaWjfqa3f4OOho5GeB/IIiyoFLNg/FgCfJsoQzregH51KkW3
	 FoLB45mkbLXk6OJBtt2T7jCkRGc+4XPhDD6QnpKtpGuZ/vgVy46UMzX1UncsY0Wv8o
	 +9c7AoyJ0nBYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8DCCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042219357.16041.707582550680921921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fab9849dd931cf0de277c84a54ce74d72b561d790d02b42c3c500741639ae06
Date: Tue, 14 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760422193
