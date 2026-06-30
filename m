Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463023D3337
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782838114; cv=none; b=W1VYUy6RfsLQCraX/AZpWNg0EaOUCHZIz7PnmMzzOIfAEuPcdpSRY5rR0WcLa/2bt+gkpiPjjdLYi+rrQd+C9Z22cz/kPeTz5LZmVPbr561r1TJCqT7g9e9FlChtcx+nZ5hp07FwK7Ba+jQ4735WxFJwNgAFrjCdCRn5mo/1CIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782838114; c=relaxed/simple;
	bh=dbGCjFW4oHbgc3n8lDCVCNAoYUyin0hrC21vOcgqPGk=;
	h=To:Subject:From:Message-Id:Date; b=Oc8KW8res41RaTJg+BVvbnasLdY47kjoO1ziLXNzGjMQPYimjRCvnyuLelDPWHPhlGBv9oys8dDs9AD81t0FCI5EUo4Fy0wGoq4K2UGSdxtgw22V2HJJt+Rak1VR4fxiGLQKMk6K/JhSKuriCxugTZKnzsGp//kyok4zcHVMH5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0x/yQ/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0x/yQ/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9165C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782838113;
	bh=dbGCjFW4oHbgc3n8lDCVCNAoYUyin0hrC21vOcgqPGk=;
	h=To:Subject:From:Date:From;
	b=i0x/yQ/6t37cPDhvZRKWVooHmf+eH3pAARbrGVvphYpYD816lryrTRgHl2uTtl3ik
	 e2wwxKmxsGjCI+4wtz71KmtsVEkXDtSoOqVtBC6KhUYvEAsVUwKtqvpohgQ9LsHh7N
	 oppxoiNop+lBevlpgUcq60IGIqPpvlOagL/P9CgmQ0UUF3UgrPb0QZLarQYeoRbzOU
	 +P7esMBhLYNCvPMyshwN+LgLySRG39qswtm7M8rdr9crbAizaXWjR1NpBfnsZhg59u
	 LxS/mbT1xAg/WQZB3hZLYf457XICF2SVHRAyLIxdUBRY9X1PIa2gsre6B0LLBsdejV
	 qMm9GUy1+HVKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9859C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283811368.5885.17695170165208785415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b8f7072b63f2695ef0bf7fb5f7f4f1c2157c3a3766ec5e2af6b599ac3e5ec4
Date: Tue, 30 Jun 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782838113
