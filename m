Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343AE3AC0E5
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783484914; cv=none; b=cnTxrvVSguBr3WC8LacvFFr/RUovIDGXWtlfclzBIw+1eLicMDC+Z3Aa4q9xQ8cnMIvSjvXoftICO6ARZKOBAiXR8gbyG95aQrLJE7tCz46X8zek1RWplGVfF1gfU6kenlYpDTnJRtU+pNVEMUnH+oAFPsfIdFMMP/zDZWSgRKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783484914; c=relaxed/simple;
	bh=OEwvBbpBDV97VRraZ23F+CNlQcB5weYf0JtWwcyhFJs=;
	h=To:Subject:From:Message-Id:Date; b=D3idql83km0dkiSIG5epiz9HBVwgKUZqfFkQ6OBIKBwZAWACq6zBgRgD3YnrhwerqD/WgOmdKk6FxYihj5PCK8yI08pHdK+qrhbgwqifWbfe1xcmsYGvdB9HFwSYOUgg6Q1iwXwOKAlz0DrYpoCras6cHNUaZYlL1jzybziJWFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJBl6Lrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJBl6Lrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B70C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783484913;
	bh=OEwvBbpBDV97VRraZ23F+CNlQcB5weYf0JtWwcyhFJs=;
	h=To:Subject:From:Date:From;
	b=iJBl6LrdwRaGHbfa5qYJoT2Y/PvqE8O9WI7w+tmNMuPz3ap7/O5G70mKKWRvuvEE7
	 jk/fyraHU4JVO9LghxDoGgZMPWN+o5pZ+5xzApWRrrL7UZGVh+DejpeP2IENvFPv2N
	 3DPRXx5f+VFXlRSj2W6i568d5ltprMWFZPvkAi78IQifz0WWjHeo9j/8FfIsY3S3iW
	 8sQkIt/xtB8vdRzU84dn5txVomhEYeLyOf2by7p4em+X6ilgLiHVxnyqcN1utGkAOw
	 ccuVIT1nxJDrmb4LiKPjSJ+0D/aYY001dUHKIh2r/UonOCB9OM2YScYPaJOO5bdPa+
	 ec0DnzK/DcABg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6385C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348491373.12491.14070820256158589830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f98716c4d7044d9483a43ec2e751f98564d7eae1d91934f857bcf72c254f3cf
Date: Wed, 08 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783484913
