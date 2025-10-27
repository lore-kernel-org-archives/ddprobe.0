Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2ADA55
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761550193; cv=none; b=r80sdbxdAp1vauXDJ/CXqZUMQto/3FAI80njdnqO+0stjOGbe1x47D6TJaOc1zoH8mC/zjSgYVzmPq6K6JO/PlSlCZEGC8OkcgltAvEsPvCPh2oNmM+TklpJB3dlvVauDNFAt0NqLd0RSGEeGrEzhAuNZ08oCApC6/3m6xkp1B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761550193; c=relaxed/simple;
	bh=IOMSW7LstiShx++CzLNf64wDcuxa5KOoGHSA7x+ol20=;
	h=To:Subject:From:Message-Id:Date; b=QnhMboPXYt3yGJ5GvYFNtj/i/GEbhUFdmqLxiNjBoBSULnsiK3J8a+hJXuNyE83pLiRGZGK5rs4FguY/g+1m+XQe+6W6DDMuNnpNrBPb53y62vVf0Y6RkaH/p5i990R1CHsQI74f/sTfn93TzzVJkQF1H1ZtLV9JZtm0RgdXLhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WURtI5JN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WURtI5JN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF78C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761550193;
	bh=IOMSW7LstiShx++CzLNf64wDcuxa5KOoGHSA7x+ol20=;
	h=To:Subject:From:Date:From;
	b=WURtI5JNT37UHuZCpaXCJUVnl98VCcgIv3fFtOK/Pi5MEqj7DTgnd8DSShSIXMpFE
	 +QLvW5VFIdc9U/T8XYT6Nzb9tAJ//548tZbqz0KEzrTLZMaLdvQPeb5WtF2pC0teAK
	 VziX4UpD++G1I+61Nd/AAq9K75xbEWIOPDBnYd8nLHLJs597kKRTKQQ1DhsKx+Jbsp
	 EzHNHrh0hd74Qf0qJByQzv+rDAMToEpyVhkxSc+WRMIL8UlEc5jKWmNiIPZfDozDz+
	 qsNlQbevJWEOOmLBRd/zSl5rbx8IXf2wHXbNc79Q02sbzma7iiU9KtmCuj3WpwXW6V
	 Kf7TuIudEOf+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57BCCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155019357.18199.3188381890847393168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d931e48175cfccede8d7a47895916bc0c16f62760f95c03adbc858a054d1377
Date: Mon, 27 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761550193
