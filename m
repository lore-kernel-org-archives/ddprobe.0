Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259FB3D646C
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778248654; cv=none; b=iPQa/sRqKvhIjknRwe3ochKGOk6vOPk1QzMwdU5FTPHQqHYnmL3rrb/i2DMtdVn9A68H8jd7dFUE8Nhy/Gwo25T/E8zxDGL8Wmos+OK4mN5hT0JTkIQ/NUgADJMlHjne98WVh02Prhz0ijYAAnxKQ7lbTAJgFj/tXPQcslfU4Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778248654; c=relaxed/simple;
	bh=50w0N7ORk6o1u1V3tJdWvRR4sQgmlf+InErtRJE0W3A=;
	h=To:Subject:From:Message-Id:Date; b=rYHn0aeMGPJjXQSpkhhf96G4J1Yn0F0i+/T/4AgfceDI3ZhVRHdYK8sKVd5xuCge7L4J7g5tVzHI2lIz/DoKACn45Md2QG8PCz1uLbJbY8JpstfFkMzH68MmQ53SmbuB89uAfYkfudESteOeAJfASQ+Jw0Yh4IUaTAnTgDGgn0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQNXo63j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQNXo63j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8A9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778248653;
	bh=50w0N7ORk6o1u1V3tJdWvRR4sQgmlf+InErtRJE0W3A=;
	h=To:Subject:From:Date:From;
	b=XQNXo63joIWP4xRadzzb82EC8BK1OHYt2fiFKBhObQlyF0qfnb0m+L4F25FhI7XOl
	 6ZDWnKTqpVwyXf8pEqr8Go5w2OIiuaaccr/sq392bXP2XGOCS82P7K0SFzfrAJ8uSa
	 Zs8WrcISaOUb/jlt5U/rfGv4PHJtf1fXt+PNzYfEtd0sCgst7KlWwPSfL4pCa5BiQX
	 Owhll85VcTnu5tnOBmz5BWmZwvxTmMEN35m4UHj/XR88MSp7a/ISOBFgf9cgWX2bMG
	 //tamIXgwp2h5g0SuZEdyGAUsFabpAEMNAKUv7F4iTHcHc0yYIqpVxsOzom7PWwtdS
	 jp/bMMPC9kzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC685CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824865369.25750.6040883597729560977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac2ddd69d3ecc9d4ded143af830871b8752a53eb476f1a6873a7d8cc1b28bee
Date: Fri, 08 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778248653
