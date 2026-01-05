Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F529A9E9
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767626034; cv=none; b=cP3EJK+qoCeub0x8UPQxPJEFz7WQjAmZk87uaagfDg3XZpyFjcFfgtG+X+ok4owS0pADzxowPV3Mf1c3Oook23r7qXD6xAkHfhwgxPMYEam6JJ1YI2rSZkEeL2K+MxYO1Wy1yj51zeLHNzSmqpcQV4pPFJxMNTxIopHD5gBnwlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767626034; c=relaxed/simple;
	bh=hKyVfo5D9n+npRLQcFBgJliU8i9dq2zWp/aFCg/u1WU=;
	h=To:Subject:From:Message-Id:Date; b=AIgzrIFRZZt2cy676yOe9d9KgNL10FVh4GXSERFnHr14qM6owy5FLvdDkyuznUC8aGQdq1X3LNU7pNahklrS9hYJBdmCo/Fo05noa+PN969fTGb0Nsych7bTPyAhXd+i11uSFhUGU5a/JolPb/kOlAsPJObCKRI1r3qtgxxw+wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClJnpG09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClJnpG09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CD0C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767626033;
	bh=hKyVfo5D9n+npRLQcFBgJliU8i9dq2zWp/aFCg/u1WU=;
	h=To:Subject:From:Date:From;
	b=ClJnpG09zrsOmmyK08rulhcEqCzxGm+5oJvr1WEPXU9kHLUPFbahfhE3/sbWxdmLL
	 d0lG3Bp+VYc1KnxpN2wmkCz+RfN8wxcx0H6xu4yV/o3qBF/sjOZ2aZCSK8kksemO5G
	 8OW0Gq0WH3kqTbTPzqfuerhivN8lRrWMMd2UyYA92KbumrutNtNEq5+wpWLxoggw2O
	 hmJAMT/OhvBOcCMiRaGcW+rhjH7Lqidi5C+vdd7HHWHyktYZgHsgEYtJ9ARh/1mprq
	 RN0yAJKu1/erxmWYXMq0dIgGvaOm874Q++Hz4qFaSfm9cyMOOvHlSoOxVg3dKepqFQ
	 N7mWsyl7LLYng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94014C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762603359.2369.15553298920602386324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3e89a6444c20060ca11b23418cce3817852c6dda6520210928b13563244330
Date: Mon, 05 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767626033
