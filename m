Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26136390CB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777027654; cv=none; b=nZesxyPghgqI/rm0YLx5DxMZZLNuIpFGga+bqPzcTMaOuj4LbSTgABEXnkf+7+mslcoJ1P8StUmrQQKWR3N2c13XCJ9wCJMlB5Zqb3DjxtQGTPsZ7x5c4eBV56TVI67TCpxDaSFJpGlkjeYhEgmi4NLFDS97fLEpjreBMINB7sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777027654; c=relaxed/simple;
	bh=MMlT67/pXWvo0fY/3iuN8c0NW+TzS9TYoV+N6BsetTQ=;
	h=To:Subject:From:Message-Id:Date; b=mAHIC9gEVIqinPvkoyaP5qnErszc0/yrEu3CSP+0woxcfUA185xHgZvoAxIJuyau5Z+MPETHW7qg53gzgpYqwt9rtCsf8BimUJnYqu54pxgcbYZMXfB1Kojm+FLswDWxus4DjODlwlPki7zIa5ZIaosbEUh+UNm/hUsrBHmUOfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT+8vBIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT+8vBIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B887CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777027653;
	bh=MMlT67/pXWvo0fY/3iuN8c0NW+TzS9TYoV+N6BsetTQ=;
	h=To:Subject:From:Date:From;
	b=qT+8vBIRiNO7urlyQpOTRFLrdiHH1F+EuP06Z4DH7TwwfaprGiQXofS8fyid/+rEF
	 J+lDGHCguA7EJ/dGNyMOH3s/jWBGmBcwYVYFjrBgeSPb5nxecjmZGb7AhsI+QlbPNZ
	 nF6m1ookVUfrUSnvkGeOfHDzMqb09NlLlRaXadB0h7rboQULwIlXCAMVCO2UaYzlGI
	 +r0tYNHxBgctfm9LLmVSli4L/PeX5/p/Llzeok8ecAZWcV0uGyXBhLyfBy/AD66JNR
	 TxtURsXgSTvwIk/xyn7vnb0aFOyqrsux9bOlp5oF1OcS+wCC74gRLM/yXdPbmGXInk
	 3OefPHTzQ3SUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A997AFE5204
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702765368.7219.11754511704099516738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9547f74fd634f04c8f2557902f4fe24b11577e783bf93c7c6fd056b312833241
Date: Fri, 24 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777027653
