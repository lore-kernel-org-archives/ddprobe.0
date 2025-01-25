Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA0E18C03D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737842154; cv=none; b=RPiefuy2hAJ73wE5bbF4EfE++/SmIwIuIckQ4Q6DEGKF7GkenmdTHDp4pm9YHyp3oZlbFoW6H/HueMBLYUKFHBub/VyPxnWI0z4jgCpvlkZWLFh/sVQlJZ4kMqZLhmm/CoLHZnif7/NCDPhwL177e/UrNuBa+SI6lCGeJp5XivA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737842154; c=relaxed/simple;
	bh=Vk66fvqWNhOrXlVgCQiymhmRc08kWYj22erMZPHVqXc=;
	h=To:Subject:From:Message-Id:Date; b=oZCr4r/Ue72H39vkhkOd6p3V7+tTxLPCfKrQ8GnZVipX2F8syHQNclp+bb940YaAUc+jJSzDV65aCDh+I+8wFSaieqjLkg8ImpvUOu0hT5ChIrh35zRXZJLVc9/0Lpog0A+ysPRPsxOXcd7Ye6//EHkvw2BFQ7xlq5MvlljMTsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKufjdDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKufjdDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E72C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737842153;
	bh=Vk66fvqWNhOrXlVgCQiymhmRc08kWYj22erMZPHVqXc=;
	h=To:Subject:From:Date:From;
	b=SKufjdDc7JEX0/nV3PUYwGnsXtowe46bSPQ/95MUFRnwtYMBWJlm7pjEzEbe2V2zr
	 S9RBIfHXdFxFN3DO3FJQPIBFscDrLTnrSti/7IXZtlPZITpEJ9BJKMdrkDxPQsM2c/
	 ErjooghY7r7RU+nYSsQKpKsxt5IBsmOpP1yHoenNrZmZZMvQZdEeyqmeuUO29j+GG7
	 vtZSACclWey73ugfZGj6O94DCOLvty/AiPdqzBZMxji2NlJUNe0LHDuBDyY+2cek+F
	 2nWbWfSf2u5xN8boVRNe3QAUxku3AG2Vg43TU2rY1q2q1spEmIkZNr9d6IkQAKoHFx
	 AI2EgNsj787kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CDDC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784215358.19591.14005005568613207157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a01542e2484367ddaacc2efa8a272f727717756318f5cccfcbc708430a95577
Date: Sat, 25 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737842153
