Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400111A5BBF
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748377794; cv=none; b=Tqp2ED+B9De6UkMdx8u5nPjVckegHY+pyMA+lEchE3GhS6ypGUjN3FrkPMtY2ILO1DQLq9xz8W3tno5Su8PzfwOszJcdlovKMfq6u727IcyGHNJlrUXZ7O2/E44KEa6y+/jzmslM3V2QS7ISUL4IAdw6QG3z1+73s5KzymAuXXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748377794; c=relaxed/simple;
	bh=AF8cy/4RGzKX1bl+hGQ8iN1S1ifZZRWDj/hnuYGfSNI=;
	h=To:Subject:From:Message-Id:Date; b=cDdzyWQtt/b06EMFGkh1hBsNuYJYcXgGa/Qbof+sB8ydVr6avVRNF2zhoQODeJMGgLxs+AuV3qqB7IFWHhfWvbrVBC69N2T2JW0H/55La7rw4Ojus3ke2pMViDA899MEgyfjoPwSgM9l7Y+GyCs3x04/gX7lHc3g/B8T8CFRx4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdS9zkIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdS9zkIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D25C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748377793;
	bh=AF8cy/4RGzKX1bl+hGQ8iN1S1ifZZRWDj/hnuYGfSNI=;
	h=To:Subject:From:Date:From;
	b=jdS9zkIaQx+s70HSJTmrw29tcCm7wS1WyCFabUwNrq60DSW9758If8PZrDUnm2Z2n
	 +qi35CEzUQqSl7BImctqVoKPky7RawM2b7whrLD8+3q2rpb8U82TdTvs2CSd7tGz9b
	 aRoXCuAqZBAsjqc2QHxx9NG+WwgtND0gX2iThVa9s0O+W1YFvndMEx/krMjMl2mJ1U
	 uQ4eF7m2uzXbVaD5ohlWeqOBbh0ChvkWqlTnTuwSPdtJDsBxckjNeqXc0zELoGNocr
	 mpI2eTTFMgeNszlws7Qz2F4taadVvms0NF7DKZ4xl6dbH24tVlxlGSRqZQkc3HY65E
	 xQ0SFb26MrK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EABBC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837779357.12207.17511788983344099058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e7feca6c1507ed538b29ebb3e2660a08e60df6eb1c64a9443e1ebc4a9cbc61
Date: Tue, 27 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748377793
