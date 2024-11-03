Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E41154C08
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730674554; cv=none; b=cXJMRbh2vClcEQVa2RFHDaLV3z4NjSCsJpuvECLfg3RL3xOcpS/IkUCce89YObuDdK5nrOZvWvc/9cErS23Ly6oKLOfoyvbKZssU9ttJC4Qfr+xtjzPzOQpCllJzLw2eNvSFudZa/+esh7gGsZ3dA4o16cOxlLBKHqwlNhr9Z/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730674554; c=relaxed/simple;
	bh=EegpFfRjkpOdo7xRVOj4AeHYGelT9uNN3VDoqYwjZfI=;
	h=To:Subject:From:Message-Id:Date; b=LY9LIu2v++dgPOsaReDg2Mazqj3qwXv9wRh9FW5rYyEHxSLfLF6Gz/ugZV/ZgESADkNjAenfsZP5OEeKLv7Phti9Gl9fsEGPDVuF0IfxZ4j7q4Gs7LaFVQORX/RBVJKd+dRNTa66cQAvkss+5dfeM4NlduzyvtAaWA8A2CjPQ3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLq8vg78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLq8vg78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25C3C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730674553;
	bh=EegpFfRjkpOdo7xRVOj4AeHYGelT9uNN3VDoqYwjZfI=;
	h=To:Subject:From:Date:From;
	b=eLq8vg78mAbySC8LprxauUTq5zk1lJahS3A/E8NjL3HwK8mi+ChQ72z+awxr4zJJg
	 LjjpI7tZjivf75GmZwizw1TJfUhYBlfTEIAhl58sU8p7FbASSCN7kPQg9m3eL8JI7L
	 e8h4OEx1d3yD3FEBFAX+3eGZeXJEoTIPuNTMdWBxOh3x4n0NCIqZK+OKSxXYWY29Ie
	 JZ4my0w0hL61nfb1EszYPqneFVng6y6s0BqCN+KQILII+4Q/Bg/4jXzCUZgbRE3pqr
	 p9PejHTtGgW7ijxmAQAiy9q8zpj0YtBEJFHDtz5Lo5J4SY6suSpAmAL5Kl8yByWwnQ
	 gAsE7+c9Pfksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C37BD11195
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173067455360.24827.14419766950277533237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d6da5b4e8a18d19c1796f1c5359ebede3978944d118cd001c44608ff03769d
Date: Sun, 03 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730674553
