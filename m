Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242042FE044
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772483094; cv=none; b=HHbOL/skKE3zJFiF9+qrrYGnZ+vtvEp48PAmoP8UF3qu1Z8HQUsu5wZWJbORQC6DkUJaO13CD6jfz/blhyT/c1lsHpMQzfCWjlCuV9UI0Qp3se41D76cOsTwpttjss0t0yTrkkrGjbZ0a+mWVskhZbAscl3MUIpJ8yYMzheuuiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772483094; c=relaxed/simple;
	bh=OelUC6q1jQ8JkoIEvV+MIHCPApMQ/eUFs9W91nE+QEI=;
	h=To:Subject:From:Message-Id:Date; b=k1Jtu7x195Ye3kJOtBHtENTPyIVxsk2pcvSKiwbpDNnZe2uumrSeVS62/dZpmyafRndoc20JbK2BwhDB+XifcrYf5Ux8aWU369FXq208cW+usnWBHnwwjXQNxJn8KTTa1FEOhi7Z5pz/3NYUlBi36Wk/kZu6oLKkdcEBqxHhD0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dzh8eSXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dzh8eSXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94E9C19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772483093;
	bh=OelUC6q1jQ8JkoIEvV+MIHCPApMQ/eUFs9W91nE+QEI=;
	h=To:Subject:From:Date:From;
	b=Dzh8eSXCfeO7vSiNrBg2D4x3xN2z7B+eTBqvkFEFLBz8dv33croeIhbRsSivUflG4
	 chiyPUmOSEfjWGVOhHv4VuQcoWZcJkHQLYzyxgSuw1Mxp5A5tvMIGILpgDUVY3/BVF
	 56RAdEZzmI25kZzW01fi3gs2G+ygZDTFCFzdY0YXoRdANI0XMHI7c7CWvypW1V35mm
	 nxGUTP9DS354GvsKCR4p8FjTBn6DGBCXpvwa8jhXhhNbiHWErtDw+LJUARPotslBEf
	 Zy93iPgGi0V+ouBdqzfYTbzWXkkRmBDeBuGGlSxyykqD9GEAhN/7PsZHbM7fsEuXNm
	 BAgkYqXpxJm4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C088EB3632
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248309362.22827.1288117153975529420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ff691fdc8e1320b5997e44eac78d383383fd856214eb49474656202d9ffd79
Date: Mon, 02 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772483093
