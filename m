Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46064223DEA
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791201034; cv=none; b=fUEQP6QBh++Ux/UzIVP9WsZ0Tu7ccuXuhBvfgKA5DyMwdDCZdyMZEwxj2lJHdCXdKRtmXyhNlsLgSgcokOLxDJX8WtgkWEQnbuCcH9/Zuk7hxTsI3CcJUitCeXCGqCL7sSxODDNE2PA0YSRfPE+QlNnYvi5guvlhKTx8+fpTqG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791201034; c=relaxed/simple;
	bh=DtWrdOnYAtwiD0D4JxL42UlCKyGjoPR1+nL0fN7Qh4Y=;
	h=To:Subject:From:Message-Id:Date; b=UelSM1ZOFlb7aLmQxZxrVtX5u7ur8epSxxw+A9GbbDlIvXuN4en5jP+tAHpefXHtlpa3D29jIBcK4LhHidD17J4nlaGtu3HD9cJHtdZ1nBRSMudySG1Sbsc2R2F4Et9OOY+ImEaUW7YdMjrNBpFOq2nGFLAJp7aJHZg9G3E2AW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IL+JJXGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IL+JJXGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE07C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791201033;
	bh=DtWrdOnYAtwiD0D4JxL42UlCKyGjoPR1+nL0fN7Qh4Y=;
	h=To:Subject:From:Date:From;
	b=IL+JJXGKeMxOSEWtPCR1yjHI6mZy9Q9oz1cN+fIQcVTx0lSdQa5Ozu3IEVcPBK7Xf
	 r1vg/fuLaR4Nr+Ou24NpEvqt9AsDyCL5vdpWQzoJ4+EAM1tj+yHGG/XPQ//onMeydQ
	 tO6nV8D3E9zYZTf28mz6Sd3+TaQII0Gl+KNhTzjO5KzwVEATASLQ9Hwxdre/38elKw
	 rz42ixyybtfIt6T4arxGzFiruGf3HEUs+PYaXH22WHfdf0gv2g6rU4kkr2NzhhzkbM
	 2r0Q8S6fnoRyXM0GkAlfvc9ed6ZwhnuUPRgZZguwBSaWEjeKDRPkSI17MpcnUGp6Rv
	 9rySxNI6cXKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D31CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120103368.9696.6688976057616658161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f574ebd5e9873c8d469c08dbd81c8428c038a5d921339b4be6813ed9258c1385
Date: Mon, 05 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791201033
