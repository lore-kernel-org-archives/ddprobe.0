Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159191E412A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751202594; cv=none; b=ltlCDka8EtZnMS54zuluxI1lH+bzx9ieNeNDQcAYlAP7rleAW1zlnbjvSxxsfL02WYRyu0EjuQ1xnSg8mJlffmaGyKxACqs5nQkGWLP/sJEXhLqHsc7NME3eh4B3rYhnXaajDjiLDOtEveBqJN3PGqpfywxYhPNeweRh9EFb4W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751202594; c=relaxed/simple;
	bh=84hRAa219AH48ZrtV7C8SYdmh10bDKBeigNY1DHVBuU=;
	h=To:Subject:From:Message-Id:Date; b=MCKrRuFayluCGbG+7o2GjvfwVZzq2V6vblng7EPYJ8ia2mqUFqibH85BVa8pL7D8LPjlBVeXOgoL7N9xLwPT0oYa3Adf34qNgnaiJINro+vsg7ftCFVmgcuUA3HPOUeRfvNtHm5XXiKIKT+sWeffJ8b1LGOxNhm9QIrQYZ9Whf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgHXbNV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgHXbNV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A42C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751202593;
	bh=84hRAa219AH48ZrtV7C8SYdmh10bDKBeigNY1DHVBuU=;
	h=To:Subject:From:Date:From;
	b=GgHXbNV/tOEetAfhATZZprqpOs3DmRHLSOC2VaKVKOLywKWRILfPbS1LDQsuASqR6
	 +LtP7UhNJTmI8QqrobHHlriJofKXoanjUxlZE7rF/rbGy4Ivnk+XpaLN63i8e++2hJ
	 CW5/s91CvVcZhLi4ZjBhXY9bQxwGADYWJ5iyp/VvJSrSC564f/HYc7IO0SDTsM2KdA
	 J6/9ez1UCLEpjR8rLdLQW5s70beYyvtStlJZD9cFCC9wlVfbRR9iyrO/AQH7H0zmTV
	 eTTq7wEFUz56WgupIk1QjBfYsBaqWkBS+GpCPJuVY5YSETCsuLTDdiUV8EPs0Y7WXs
	 as9A7TMXsOQug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2EC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120259357.7441.7210537420051007305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b3cfae77020d9bf6291b530e8c92c819197c129d370f2fda499f4d12d36a6a
Date: Sun, 29 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751202593
