Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F932BE03B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781790994; cv=none; b=TaSFehjoXN4/HdUntVY6jyqx9Fn5em8chhweZaEWcXr6sSc9CpVIHRf8EViNnLV0izP7hqANrmSwC4yZRhRnNSlT3vAAdola49MGbX+yhHxNmc0ZmE4T3icOtq3INdEybbdZ932rmioZWSDog1CmMNobZbYvKjGsLzSZPcA5AZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781790994; c=relaxed/simple;
	bh=+EFp6DwInnjNLMA0z7/RJ61XGc4nw+DUQkKK8Ro5V2k=;
	h=To:Subject:From:Message-Id:Date; b=hcC6maitHzv7W0dU9rffgXMUoACeQHiiQi7pL7Uc9wahkz+k+JXef3rKoysFMbpIWxs+739tMzwzm332M30zbJImoKKHFwg0XkEJDIwZnpo0zf3RFX5/v5bArW457MvgaYEBxT1h5QSTnqizg0dqgOGLv/2NpOLVF+dARoG3DUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANaiys0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANaiys0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C984DC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781790993;
	bh=+EFp6DwInnjNLMA0z7/RJ61XGc4nw+DUQkKK8Ro5V2k=;
	h=To:Subject:From:Date:From;
	b=ANaiys0COZsvUPY8u3s+aAXdq3dWN5khQTzC/9nsSZsF5ThcWWWf8Y374JOLBn37Z
	 ar9RGsMfDVPQ8JUbAwoecBzCvUMl3+OE6wpyzLldDQrVXOWCpZUfdM3TV3A7OniOwS
	 CzdYx1IpTMZC5ioC1UPnNgR1qd0bVFcBYAdsFPYcrCdNYtqILghY7axlI5Pp9YYAzz
	 4RzQjAWYq1knyZEEEy5kWUztFIacTKjtOgpg1ytNuyPl/apO++vl0DEv2Q9ZKbSx9V
	 b3tu/lqy8U1PlKHqXtQeae5Qr+AGS9N7Ptbs1FwpxCz+oKu/fqOeAb5GhwSC8vtu0u
	 0CzctfqUtRlFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1ABCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179099370.1049.6559451693814253678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfb74b81e30775c8808bb2bb9ae1fb13f4da630286316af47c2f779ce8db34a
Date: Thu, 18 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781790993
