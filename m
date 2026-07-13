Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A69837C0FE
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783923514; cv=none; b=S/oV74+YlTGCdhw8vhajvHxFHEx4MQiD+pbAB/53WGOwI8yExOOOaV0kl2dS0/T+18NvUXabNQ6GOefwhoV2wmZEbKKwdf3Dvl4vVW/5RxT3jCbQxq1DKzIJRKIJjaBEFUtLOcRy2lmLJDI2940/vJjKVdtBXUvuD2gAf5YgcRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783923514; c=relaxed/simple;
	bh=s7n++M7D3moWx0+mAjUYvgWBwfKhUI+hvTOwUsTWvxg=;
	h=To:Subject:From:Message-Id:Date; b=SJT8VZ4DL5h1O+pnSJPFgDbiRUkEA4U3uxqjbmvnROpTZIcUqipLntxutbAvxheW46nGzXjxFX42zEe9hKss1wFuKT/O7Za3GTTfRMj0s3f97p8FSLPuru7P63wKwqAr5ECOi4dESur4tmvy1qZ/4Gibp9Jfk9AensYkNlJASbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9TzBKSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9TzBKSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8902C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783923513;
	bh=s7n++M7D3moWx0+mAjUYvgWBwfKhUI+hvTOwUsTWvxg=;
	h=To:Subject:From:Date:From;
	b=W9TzBKSM2GC/lpTxLCNti90KbdJlu9GVRDWjh3l2Lsu19Ju+QVuzUGsGVfGMhS1K1
	 hWnQvvgXHemsRbMijSfzCHEZIulGDmFX2ROzEi5PYVMlK8B4wO73QbUGRJAll2gs0P
	 oK3kBJUrngBoen4N23mbPADVYrC5JgSDjuiaESO9lTc02oFapBGTPocFwXKJO9Bu3U
	 W54v6F0SPu79tec0kZjFjjLfknYejRBnKcdgvUhzOD18O8OdkFdds1N/UsMsTF8Akc
	 vRPeF6vxJIR7qlSXh/Gih1uH6SBJyLbHdbynUDhDXio+0LBb4KqibFHc+DBJ+W6tnr
	 L9PzI2duKwT1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F91C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392351370.23600.12351799555195368570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd4fe48e220edbc76bfb511e4b5ef7c27831fb66ae4f86d46164d0b24a6a5a8
Date: Mon, 13 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783923513
