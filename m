Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8942DAFD8
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760711994; cv=none; b=hkvtsgSP+1r38VT3fmB5qMGaDIMnZ0iriCZcVHv+Le/Ei135amTWUZos5C2X04ijGITGE1Ph9Gz0nTxMcNrVwrlPQYEd3H7gPxUReAjTvDCPhnPhhWDyBYMLmZyMy8NlM5sxmzi/MsSgXhKp9xZjN88m254b0yAHIJdE9NxpDAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760711994; c=relaxed/simple;
	bh=MpIf6cfvWxtDLIVBPBdd0DnA4o4phHlA76/f5QfqjMc=;
	h=To:Subject:From:Message-Id:Date; b=Lc/ZHFitY6h7rRnhUqErSNt9hflHjexckbNw20ciPjbChhyvUGmJToNHE/L3ua1frSlsz3Qjbl6y2SaEt2a6iuuZM4kKUulUjWionWeBJDEAB2pEpm/9eEprjWvB/GfsAIVGbEYQm99Qj8jbcyHRvEvNWJZ8v/KVwxWeJw5JsYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvkFS8Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvkFS8Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6254C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760711993;
	bh=MpIf6cfvWxtDLIVBPBdd0DnA4o4phHlA76/f5QfqjMc=;
	h=To:Subject:From:Date:From;
	b=PvkFS8JprzkJifpKyqUkPFOd7y9WU/BFbyE1xOG1wL/qDZR+Q38XtCFsLrrzq/ypc
	 f4eruSrcI4YtbT42VcR40fQqGPUMELDvVo3HEnjT+7OUNo9EsNt3Y0/PvHjAt+HhNK
	 nRWmTsVNTqq+PMcRBjsyKCRn+MyFEZFLU7iNhpVfYa0aDa7AcJilURYkLqNr/cde+X
	 GG+9Avo1is4qGRYxUTa9D6o8A3u0EpR/WrFbW5kEMzEfHO5zsPnV03q94lHdBRfDnj
	 sMuiLK8qpnzQnzOK879nvCFygEau/qADh0pKoDzvbL05B8BAGwIBceNg0tP73PB41v
	 SIJO7kxoHqn3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DF5CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071199359.3858.5684408005322009484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c2a94b40482caa9367a63369fcd618d8796679671e5c4ba76b6bd32eee717f
Date: Fri, 17 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760711993
