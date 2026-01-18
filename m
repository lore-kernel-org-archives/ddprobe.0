Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2666E1946C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768713834; cv=none; b=YMa66DnOTwU4Anv8bKllIoUnpn9+QI1JUuNTOQ3+WrXjWqYsaYTYOVHkPGxsI9Q6f326tVmCuC+BXcrmDf9jgAwimVaYXXWFdFuqT+nWfgS+76nNK+HYaDj2VMCE00VUd88opVHBtgE+ahSibHVAsF7r/PwsUkxa8wu98dxlA6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768713834; c=relaxed/simple;
	bh=nEmIesNSNZ9w9xMjoRMWtK1qaf9sI+X+GT6q9/Lq3SM=;
	h=To:Subject:From:Message-Id:Date; b=GhusGzRpmVTbyrnnhuHsbyjfNuRh5S0kjKdLAOlqEKaqSwLcl4jZg2UrfYfK/q3fHpws9yUHLjpJqiIpRrZtBckVsVzzCuQBc4w3RIce/xBoPGMCo8l3dJtd7OhhKOuO3otjI1SbMZkSUzZ2f+rySYRDuqMAatjkcMVNtIwrnPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVdV9zL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVdV9zL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1792C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768713833;
	bh=nEmIesNSNZ9w9xMjoRMWtK1qaf9sI+X+GT6q9/Lq3SM=;
	h=To:Subject:From:Date:From;
	b=IVdV9zL+FEvujqlIo8AflNbI1Qk3MdnbxZBWxEUKGNU++bEccVXneUv2JQ0s8KCz6
	 VAGLnl+RKW60P6fWOql/W4cwhT1BtJ0IaI7uGlxoCejTBpEChIFzduZ5QN/Lzriude
	 0rQJ0QVyR02KfInairWtlWeYYjG60gIz3IhbxfqrwnbvRni+iW1eIUpUnf9xmFs8Ia
	 LvS059q+G5OaEeyZ2W7eWeMXW77QNfCI66vfCGfN0EoyOrAMUKecJS2XXCxOx8MW89
	 XkRpxlk/gFtNyoFrxVGJdV7JEV1dhFWrWDXeS2V6oJblxZnt7iT+jS2VFOcsP6n8u9
	 w4i3DkTP9B33Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F461C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871383357.27313.12294934572554744369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2a567ffd09acce4f5b24f7e0dfea07ce67331152dbfca9e5096e1b77cd7bd2
Date: Sun, 18 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768713833
