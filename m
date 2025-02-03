Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501681FF7A1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738576554; cv=none; b=AA5rIndQ0M9ZYPbbaYGDY7RiWyIO2AwnPVeSJv9hhsFF+Lu6EoTuktKiEgfbhOrF1RfKynKF52iQZ8qO+Vv+fvWz+qXjbwJ9YD5FXeTvvnkmHWbH6gHU2uGH4Mgq6lt59R/GJewrr+44GQj0iM5MYtl21zZ1aTk2VJMaJ9QCz3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738576554; c=relaxed/simple;
	bh=iJJrBy5Y5cGT4SHWSkQP+FfDmlwkW5/4aX8cha4TCZ0=;
	h=To:Subject:From:Message-Id:Date; b=HanZLmY+uhHh9kEVLsPTB+Z+SYf7gDIYxJFqZ9sBXtQIrkwxOldYAjuI7+xeHSZIo1efX5NEYz/r9l/4uggif8lb/Vls6YdAHTtZo1gymacvHUYB0nZHdnhGIdq9MlDeUCPXttQx/Lesp80ZY43b2MDebTn0KPIBGvz9rHRhaTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8Amh3SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8Amh3SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE973C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738576553;
	bh=iJJrBy5Y5cGT4SHWSkQP+FfDmlwkW5/4aX8cha4TCZ0=;
	h=To:Subject:From:Date:From;
	b=t8Amh3SMi+kvIwaIVCQZBHBHPb1SAzjz7nijXKoIr8B8qfNIc3wF/LjRqD2TL/reO
	 ELrBC08EIAVr0G8ObZikKoXJSYmw8SoOpgjalCGe17mg5bGSkMcCCv91Tk/6cNe04k
	 G3vEuijltBGzQih7voUuNOZdwdwFS3RZ3ximmDdiz5eQM2B9yUSpK4XR5nhGaveNUt
	 rmhf1TCW9v1kaCNSP0Iptt04mU0NXIMdKgXxBGY6pRw8WnJMAhpGpVmi/A8k2ck7c7
	 w5yIk7Qz488KNTeO18WvA/pIuT/u6zFVTrl3xovP/BB8WAGdGU06tXcKGmoVAjrji5
	 gGJvKM0t4gG0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A817FC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857655364.26759.12313149347466544086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71da3bde09702147595c8e098741cb7f2e7bb32c644a3db1c18fafb683957fa7
Date: Mon, 03 Feb 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738576553
