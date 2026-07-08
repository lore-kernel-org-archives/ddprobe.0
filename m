Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC0D23BD06
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783486114; cv=none; b=X9T3Cno3apBhZ2kWxWo5QraGGcDllZXiso3luv0ZtId6kiisydYmI8SjbqhHup5mJcDQSfxWN8AgRcS1b0rxEXXGYj7I0KAdTqmH19xLVYdYlrO3S5QUE+093qUD6e0gmy7SzGzWAoW2AVPxnWRr3d0vpIsalA9q/TW1Ypichmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783486114; c=relaxed/simple;
	bh=GBoDJlg9HZlkIbW0KnJUuwgYx8h6EDMn90dEJBvrM+s=;
	h=To:Subject:From:Message-Id:Date; b=jF/1GpEaJ0rB9SKDZlTZWVzg/Pyqz6JwObNjynwfS6/vp+PkNMEg9GLIEmfJ8BY1BhJ42aJa5klMG93lGVjhs5Pn+v71iva7h3oude0OrsryNShMe9sQ7JJAUayJJPxLbQkn7eGUdeKMKNv9mGtSkIfPDEBYNWt6QjHgVts0Iv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FY2CpB+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FY2CpB+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1886C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783486113;
	bh=GBoDJlg9HZlkIbW0KnJUuwgYx8h6EDMn90dEJBvrM+s=;
	h=To:Subject:From:Date:From;
	b=FY2CpB+qUvMyn8h18yVrtAGBTAzHXRl/8FG/HvwteODX7czJ6ksOdzybRM4cMuybl
	 5HDA8qigptR1dzVUDhQyYq8iBtDJk5gUrYmywZb0Rp3Xl979mhrwXspoVEw7D8sjni
	 cMktPAxgZ2qqneAhTIgARbz9mhjSDe7pswhwlE0DG8RdwcwWL7998MkcfGE2p/5Fsf
	 FeTu02Nj6o/HEXSK0JIIk9FwKDGPNpUEAhlmoBF4mA/GXyK4YmQedcfpCgH15Y6UIc
	 1dSUPrOVbISxCgYg/1zhVcVhuzV76ipxEtOnbCnUfH9quRU3apexHtM6zOqjDIF1XQ
	 CbXEEBimBuLww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE6BC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348611368.19687.9798596369394721733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205066d8b156f1b41dea40033f337ead8a6ae3f92dd454ee1dc0b368da81a16c
Date: Wed, 08 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783486113
