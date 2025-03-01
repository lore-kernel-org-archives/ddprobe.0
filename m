Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495311D5CF9
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740824335; cv=none; b=ql03kSf7hG5fyTBEhSwjQ4D/Tzjer2aHFpIPO5KpF1KEImAxcocYbwzNVTbZvB8jelBVcwXzNtHUjkI5dVT1NeA3rz1wOHj7rez09UmvjmMb5q8Wrt+9Xu4q3c6dOEJRZkLWWEfEUESMZYPplWTFs3oxi9SJdo1z+QGhaAaklBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740824335; c=relaxed/simple;
	bh=Mb5BBiE9CS3IhjI3GlNvBK5nVoHyX2q/TJ8FkzpO/LM=;
	h=To:Subject:From:Message-Id:Date; b=pXMnWqowVFXQG2ws5tuc1Zpt5JtOKDEvIIZNieDewP9MiiWnUW/QACGkObhRICiC+SMUTLXWQ+qw+8M/+ijc6x8d2/OvEeGO94oW+wHQvokUO9poeLBnw+W8h5kIIkfP9Lf33WNsv3vQF07wGEl+CerZ3Q5bwNLlDZSzrE/ZaZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp4/auXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp4/auXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5A1C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740824333;
	bh=Mb5BBiE9CS3IhjI3GlNvBK5nVoHyX2q/TJ8FkzpO/LM=;
	h=To:Subject:From:Date:From;
	b=fp4/auXCseVIfJwWZlsiTcQNdEU5wxaD754JsYwmZr5m7C39n2NAdDAa2uoKYV3j+
	 ACSO7eIfr18UeVKqoK/anKbntFz6kWF0uxYfk7Gxx1waA6nIs6hw1P+Ze5rbnBfMfd
	 KnRWh9LlwjWlD99rbDAOXHO3qjvog+HkYHVD0CNoJlKF+FisSVjiyKLmxsYiw+Ctzm
	 frR1X/7K4jaGcdvEOkPdSRO1wjupvSqaAUNDRdfQwk4jdNe75Qoi7wXUlFr38qv8RG
	 s4M5FHMmZU0cDdu/toydzo/aFSSex9pvHMNpiHq806bBBnKUER5vlxh7Zj3A9Ue/Uf
	 VUwtxFoFpympg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963D8C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082433358.25419.10228240394012238646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f8a273a357bff71366d8f967f60dda07d60d18399810b0eb8208fc64dfc4f7
Date: Sat, 01 Mar 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740824333
