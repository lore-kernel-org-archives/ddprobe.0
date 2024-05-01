Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5949AD2E5
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714543343; cv=none; b=aHjsdnLMe3O5FEuz0RTQENstltz5MiLZ6aViIvcTiBZcpBEoAsJ4nhjCKGJ1iSuiv90t00HQpFkLaS8bEazR2qqBmeTYGwq0NwPtg7134207T5oj9t6yXF9DVsPBWISLVYg8wMk3a7KqYF2SF/dEw4agydtYkg6kOgjHAVxaWEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714543343; c=relaxed/simple;
	bh=S7060DQ97zfNMgSjPnlF6YKRMR1A3erAW7sZfbnVtHk=;
	h=To:Subject:From:Message-Id:Date; b=Y4m+x3fEvqeROLSdF8lW0iMR7BNcsI9/76s0XRpJmuU6pLk4/N2qt6Ch4TqcS3OcRF1Lg7r+h2ZwlaZO1datAtM1+oL2BFoqQn54lQ5bEyWA4j7tr9zQBpDrheTGEfwd9bdgaYgKUspxYTKKPAtN+fWODsUvHG5nWsx7u4G/iHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAZrp9ta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAZrp9ta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC846C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714543342;
	bh=S7060DQ97zfNMgSjPnlF6YKRMR1A3erAW7sZfbnVtHk=;
	h=To:Subject:From:Date:From;
	b=aAZrp9ta1LIW8bmDuGa4OCS6HJvZmV4qp3TM5+ZHvj1yneajcn9Sgq344Da9wLbIW
	 gdlYFhPR+KFvlEju/ORZY9pPf+1udtHfMwkRg5Mn8bxBmNHv8CmaxpOcEjYCeBZA3R
	 0Hz2ItDVUQu2KbWkhCmfTxjkJG3LXS0vFBGuz7+FxJs+SzgOtmQn7B8+aMt3NadafH
	 1z91ian0Bwy6vOEz1/QBpJP/lKu3rnNw64Qo0EmPNpR+XAsZ/tWkqpLXVyqPdku9Sv
	 A0lwo9hJWlPIzoM6jJm5hvqNJ83B4zmJ99fkY1G21Jl98qZnblsmT0QLmsgR2e9zmY
	 Ti6qVlC2eG8Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C507AC10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454334278.3430.17752652964060670383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9088b4d1b837d7f308bcde6f2db65d1cd7d7c7e7589d6a579759774133dc3d
Date: Wed, 01 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714543342
