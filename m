Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7F820CCFD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730245554; cv=none; b=QkaiQVrPB34ia764BpCKuG+jfQ7dIGqFT8/XENaTB4vfLR9K0kFoyg1m7cQnwhtT7jDxKTMsk0K5hYzVLN46mv4S9k+VcbShV0TVFKiN+d3mibeUL4jJXdlx/pcy5fUPZ8AGGZQNBnwRnOXZz6i7WaLzIbVwKUJGDN0T38bwuv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730245554; c=relaxed/simple;
	bh=E9RdaGRf3isJhSgD7dRqUxSooKytIs9BqURmnP51PPQ=;
	h=To:Subject:From:Message-Id:Date; b=A5R899xmH157VOCFyCnFDDpC9xWYnHOENhZTlELtT6IbJhKwHxDC/nqPWHEp+JD/EneTU7XDfVw0B2B9mQ/567cWiVhSgmD7LlnQD3ftfA2z2rw/qIDJjpBlHtOBlo1tGblnYtPpdyBqHeKb3Dop3i9lGpAVCESo0h4ZTL42Rwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+K8Ue1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+K8Ue1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9CEC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730245553;
	bh=E9RdaGRf3isJhSgD7dRqUxSooKytIs9BqURmnP51PPQ=;
	h=To:Subject:From:Date:From;
	b=I+K8Ue1hzoU6WTtndWP7PYRYdy/fa6J9fhoM8WaPdtThqr5h2PHYfVMIeZlqPhORE
	 J4BHiZtXGUH7JYzpWcXQWtxID2q1PSPpSerWFehEsLEpTmVEjSfQ9ASw9cfnca4rCo
	 wph9cGpcLsd5F3gQIitG/OiqvbQFdENljt3Z3HhCY+xtB0qIAPR35xbgS22i5JZCAe
	 joc0W71KlBeCcAKO3IikaR9wTOmBslYj+GwDBQ+NMnsvkpMMuybkbubnQRIIhvXCnu
	 /XUUGhTU8dzkBb94HXEyADQmS08XehaBnir99bSsoQu4vWqZcZzS4uXFHME+bxZRVZ
	 fwLTfOHOakPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95265D7494E
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173024555359.27205.792479994816068102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331f260ce43b237dd529a962aa9b307fac67effb8f557310ad849121dcfea6ed
Date: Tue, 29 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730245553
