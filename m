Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6D4288CA8
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751563194; cv=none; b=S02wSisyv1l2KRGYfrG5Iaq+uGdD0Zl46G4GzSbG+Lx8QbgiDjFfDl3XYIO7woD8h1R49JNDoml/kC2ZG0e+5AWk55v9utb52glT3CggoyD9SU/y42r3fBzY8zCNVDxye5Dz/NXi7n/bs62hJ5gYHU3g4rIYPW0jMA//cdW9xEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751563194; c=relaxed/simple;
	bh=o5XhsVX929sYSspzd4eHoZtfiO31LqM9GM4RVRFexcM=;
	h=To:Subject:From:Message-Id:Date; b=MCAAj0Q3A3p2N+cpeSuOmoYufDEjNoPXXBHu2tgNHuXMa3NTC8pGmzdBHVeWVC36o49GNj4gWAFZSt9Erq9cu3Lt5/A+3pi0Qecvsb5xBcUnr3084dViOUvtEdizc3v8HP1eJnNquoL/x19PLsvTnIzVZWvOEuecs9aOX99gHIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEi24in0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEi24in0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF1AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751563193;
	bh=o5XhsVX929sYSspzd4eHoZtfiO31LqM9GM4RVRFexcM=;
	h=To:Subject:From:Date:From;
	b=VEi24in03JjlZCU/TWmJoAyeKuqXMvR5VOvk8D9loG1unt58ReXVka/YVE5UVVp+W
	 JyMW/9b5IO/xTWGcoFeR0Bsfw5iKqP7AkGLzYvxnt0uvozYc4yuJ5bVaS4KCDgJPuc
	 Pk7I12MsYgJWRr9+r4eGxi/7ok0Sq7iLD2lDEXfuNnSkApgp8xjhTQCSLxOj45yNy/
	 3tAAt9wNt8L/vM1pbbO7yauvCNtyj/o42GEvjhtZXUQA/klpIkaSIBg7t5fXh60wxc
	 pXdJo4JBZ1SlkRy40epj9YWqrRZ2Sos2sXE1AD5VcYQmEWWzIwaqToUHDQ+BGFBJqx
	 U//SGKoabdnNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11CC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156319357.17275.9490997132005541283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb73b8df6695c398adeab8dcc25d31d283dd1bfea111679bde6b4fe194dfaa7
Date: Thu, 03 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751563193
