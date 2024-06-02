Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8F7AD2D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717301723; cv=none; b=jBmrzhVath2LIArO7zZOMTDGzZXSpMwPAiHmLULuXNav78Elk2Jzy3JCWaRpCRNPj+ZkEP/kJik72KIgMhtknrhJu6jj9zuG79nCxutQE3L4lqlbAtC166tAOHsfKSXdGA+wRSdSdVjLPsG8Dw7CU47hAqUtwm7gDO61vJImwRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717301723; c=relaxed/simple;
	bh=iLTscoQrvYWGpVMo8jM0a6nm7IRrB7fNZMepsb2xlx4=;
	h=To:Subject:From:Message-Id:Date; b=QESIN08uLV1Fe3pTFvwCs+IxwE/wTjnRcZDnbaskwEX+lJAuP5yL/EAsplvz4RElfPo+E4GUN1+WscvMaz9gY5ZD0AcuG13pQSwZOHZX4mZBh1mCF+HZzizuiXETCLWqkfniXWlGZFAiQxtLTbQZej0pVlOlyvIUN9yOtxMPh74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCo9hxcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCo9hxcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB218C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717301722;
	bh=iLTscoQrvYWGpVMo8jM0a6nm7IRrB7fNZMepsb2xlx4=;
	h=To:Subject:From:Date:From;
	b=RCo9hxcsFQVhofkGkJqwqZhG5UaFgpQWp1P/z8KeIW/GwRZmWI/msv4HHi7Yigjpb
	 lOQusV9aHSARMlO4lmPB8xcUMhITy8LQ3inlThLmkmqY1En1ZxFbpXUqJDj8tlDI+R
	 acBIJhFuWkXdPozlYIltkcOAv0aId3U6Nb7Ykbs7T5EYlzIaqiV0Wuy0MimI7MIJi/
	 oMZy5xTFxPBz1a3ow8A98G+qWFl2Z7fDSZQ/8aZ7NNP5ZtQ7F2VZEVsXTg37Vq1AKp
	 MSjUga02h1SPOIl4VkN2uCLMDKE8vd0hUMHql0vEQTGjttmFl3Y/gP6Cink2nuCaIy
	 Y4+k/+MuEyG0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6155C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730172277.27299.18211858343428338625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc4c2ab12b8c2bc0562134716a60bf31df6ccbac4faf99f0db7431d966c6b5e
Date: Sun, 02 Jun 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717301722
