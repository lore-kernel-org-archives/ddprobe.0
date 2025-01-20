Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408E2383
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737414354; cv=none; b=BYvL4HPsXapfbgTc1tg5qF8kg9lu74QobKKUYJs6lJXLC0Y66CqrK9ID4ATQeySW8I9Q+fEiMizXTk2mWYJUXYpY7shQWKt1xmKYFhUIAyx2pZAXzGfX5AlPJmFfuDWK9k8RWnebaXqeqdsAvGp1BZcAacWBkPUNI6TfUwindaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737414354; c=relaxed/simple;
	bh=j2/ZUdfkedoYVHq2U4+m83vuh8WNtCqlH1qHJ/9SZk4=;
	h=To:Subject:From:Message-Id:Date; b=dBtOK4gn+2mMhyYGIH3N8dNCUcZyg9Fdjw5LyE8gcnmWX4iL3qlNi2i8QTg1SKm17l36xlxtdNxgLDP6yVxTstOrqBL4YlyDlkY0Vak0/R3SzwVs4Azj1Tzzv0lQ2BH3mzCDNgiT+Lj2nKn+J8FMFQiAfeEztAdXslyBMQ0UqwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbrla+Rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbrla+Rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4374C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737414353;
	bh=j2/ZUdfkedoYVHq2U4+m83vuh8WNtCqlH1qHJ/9SZk4=;
	h=To:Subject:From:Date:From;
	b=tbrla+Rl4jdVQzRIDm07s5NHUBtd9MlyUE/PiSnDSkK7of14oIgNhss1EyYp4p+S6
	 lQUMT+jB+NoM5KbEHbbrvwtDUHJqcWJTThfqMW4XLSBO6OTcif+KsnorOEsf0f457L
	 ItcFDt2U+CvxPSmOpwDUIxEuN3jm5c67ZHYop6yixq+1fMawoSc5EpSa7DhMFpvXVX
	 8IFGw3B+Z1oF9kqjoEA1VPyrOwu8GbnlB5Q8ONcO+1NVLoQDAfRbLGFs8BDoLgwq8A
	 oXsiQo6xPa0B2fUzKBRrxmAtRg0XMFYaAmka+KEC1nMlBtpWyxEK78rIQpdfn4QMl1
	 9/gpvAT/YFkCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B005C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741435360.27275.1070662159168161621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a7875a4968d57ed81c080d03b2adde0dbff36df64602022ae0ce1fd3c03c68
Date: Mon, 20 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737414353
