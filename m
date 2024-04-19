Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4757B7E11E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713538823; cv=none; b=YClq2UUUKZRhy7OYbHj5DX7wtiT+jq9FE/oliXnNUnCxjGe9yaE82wOGxmZyCcQ5jstx1H+zDtCD/5i5h1WoAIzXUxmFMF1ks0gH1gY03r6DmrMofLuQCLHc4t0+X1Mtyidmg5YI7rQOnKrMznnzNgavvNnVAiPJz+yUV9HGJIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713538823; c=relaxed/simple;
	bh=4D0cSU8VZ6TmHXcYGBvWOZhs4Uwt9cdQ1BDvdlnTITE=;
	h=To:Subject:From:Message-Id:Date; b=sjPr6Uq+8k3OEqm8xBWi0Uwo58ClrxSWsPWj0/PVv2v7F7ykus8irggiZvdgVbnJGgZElp/bmv5rhSvDAdWOrMogUPVIYgimUZuJsCEN7i56IR4faoGn77olY8RgFVbSw60NR3mZHz8Hqyvz34dDXEYBoEB8nKlV9neUCsELJ18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjblSGTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjblSGTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA73C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 15:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713538822;
	bh=4D0cSU8VZ6TmHXcYGBvWOZhs4Uwt9cdQ1BDvdlnTITE=;
	h=To:Subject:From:Date:From;
	b=OjblSGTosZvLjHlRxMDsI/6WT+1vhT6Tz68f6PhQUJg8nfhbDEBigoJ42nNoUyDLw
	 ewJMS5tIqW4I1T8mxjC/Dveznl8vBR1xaHk2Hdf9nemHo9bhi3peQ52sb77YMBbA/0
	 eqbJvHn7O8NdqUnSdzyYhZYoBiQ/5jPMrt7+ggF2qbiWwhrGGt9G3/eJD4QECmZexr
	 KoLgmq/IQbvr8NkUN1mO8LHZFcja29IN8zuP3YsaQ/HLqEDF1fSTx50HR70EZ8jTCG
	 Yf8+VB8us2Dl2iqX20oeC2WaNBLbhPCmIvHH5q+KKirrxFlUVmoUpfQQjzWOOpCCXt
	 mIapkbiIjbarg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E30C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 15:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353882279.18726.11257025076058831234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b2aebcec567aff8e7b2d28ab3d77669e1917ea2029aeff3cd9d12033d367a2
Date: Fri, 19 Apr 2024 15:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713538822
