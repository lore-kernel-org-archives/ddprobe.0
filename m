Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BA3264FB6
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744107595; cv=none; b=kdHf0wO3B5hhpen29O0wpfiO/9THINimjBh38RzDxa4KpZXZglD1VO/lzRt8/W2gH71b8aAnF/Kgyxxe3PPrrPaPXnQbEYyL/QhxB5kFgYjVsJElrpoprSZfsUWNriGmr2vy59qJxhzOknn78Nut03r7xZX5+ie38KyiFTxz+pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744107595; c=relaxed/simple;
	bh=HSf7Ddf5HJpTnyt8kgq6u92ShpCvn4sShg1PyrEnBwI=;
	h=To:Subject:From:Message-Id:Date; b=TY4XtsCvoupXjZ6ot9SlCqkQgcUtzuWrm6kKS1KwDc1hZ75Cj1Bd/a65TAh4Qg3MI2qhF2HfyD4vd1MKYt286IU9hffDoW9xVgvFdWSs3B/YdWaotDjZH306TkZUvpQSywO9mTr6mPgmNsedpdUZg928fuVwMryj6ihGlfJ2z5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1pyIWN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1pyIWN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E4AC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744107593;
	bh=HSf7Ddf5HJpTnyt8kgq6u92ShpCvn4sShg1PyrEnBwI=;
	h=To:Subject:From:Date:From;
	b=R1pyIWN/c02kekp9lcloQbeFvgZlF4aUZNI1gBv1CIYLHPyU5qWY85bTXmsfWfYP/
	 k5hzwLDjg7U8C9ysd5YRkjGXBedAphb0cqMl9G28+LBlBx5SqlIY+jMrRIVxyP7mHa
	 qWRiXSI7U/0gm95VszSb+6PTWauc/gcJuZibGLgGWI/nAQJDiJm2Dtn14M+je9hQpl
	 TBz9YBm3XRcYk8ZgNab49HiYZbylJypDizUArjr9/vngilJZ90QLgWSl/h5CLOdZn9
	 7JidIn+EqBhEMyTdF3aRK6No6LaOTcYjoSo2CRtJXWTBsvmsRoHRfUHTIRF62NStci
	 KUrbaNGKiKnOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90301C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410759358.27696.4040573478232779835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e121829bc3c88c0dcd4307c9a2d711f79f542a5bfdf95c6a8c32d666f120f6
Date: Tue, 08 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744107593
