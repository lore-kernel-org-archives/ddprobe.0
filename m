Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393BD37B02E
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790691634; cv=none; b=BWEMzF7AAQ0cb64RSWtVDvsqDrQFtuxBYTNNVeAILxGSOkaBF1eZoqIEuxNNiG7FPM91bBpGjsz+F9zeOOs0wzrfWzWRjpvIkVWXOpZYlIHf3OUP+pIs7lEifGwLKoGlFjxDTlYxI0XgscPdo67d7amuMzkgmW94Dk5+VWuVcG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790691634; c=relaxed/simple;
	bh=DeulRCfHvVBNhubKPYc936gOuRzcB7MqprUooqeQ4+M=;
	h=To:Subject:From:Message-Id:Date; b=XwLi3FkhBZSXaBNwFfOr4UugSzhOcrRDL7WIo/JPH5AGlW0retgPtHxeYyZOhfI8Tmp+oo1912xCy7CxUqAq3dWggM9l/a6pXDgPFK4ol1oD8B9v2tq1mVQM235AJU/QS8YTa2jAWle5PUk8fO0cTe3dUtJra6wPXhrFKTG+f28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7Tjie4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7Tjie4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC282C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790691633;
	bh=DeulRCfHvVBNhubKPYc936gOuRzcB7MqprUooqeQ4+M=;
	h=To:Subject:From:Date:From;
	b=H7Tjie4QQ81hEjOq6GljPEZe/HSId20sZq8QaU9pjZkfgfOlNh5ruIPLJE+jLcbxa
	 F+AICEbkAqMeN+MtYbP4Pt3MGIzYv0lE58ZVqkegKUBPUfVXze5snVTZF3glZb8Dgd
	 BCEKntHtjtXbT9qbsU2+26lo6zUtMisawOZkot1kzyOz3Bbx8FOZkYnCWOaCJpIeXi
	 q3YkjHSXgbnriQFamdg8mp73MRkNZAGkBZRX/iMHbvU50SCB+SG5y84cvqyagB9Yyc
	 psRoNFDX3RkR3hWlpjORdHBs6cTPgLqX53Yx7wHck8rrPmhMgCZIxZlcYYVF3iviMW
	 iJKqjqm6K7MQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA529C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069163368.20820.12166281881440938059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77011928f4824fda8ccf125cd223b8cd8716f5312da1734f26ed439e91cbc227
Date: Tue, 29 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790691633
