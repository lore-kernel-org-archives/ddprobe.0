Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE237083C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751081993; cv=none; b=U8VcBQfKx7u7dSp6gX5sIdNPWAmjiNebk800UmNfzhPqHUMZQMFcrDgq0AM17BSsAnSWumhExhNYIkrcnyJfEQFr0jk7IZ82buro+8eQc9+7BFOwzf/i4r75AEWw2vcLWITf6RLRk1Jv5gXASg/pCEP710mIGoYYCpGu00Qa2Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751081993; c=relaxed/simple;
	bh=bsHU1OA8mbQh7enW5GR+MhyCHRKCUu+s8Orv8Ks7eQk=;
	h=To:Subject:From:Message-Id:Date; b=EXDiYuWSIWux+2SZoytZuWNr/WnDctZUFzXkXMV3hMX8biYN84lHllkqJ2FC4BVMFVkQWOc2vzNOzKEj45W5UNWgzB3szlBYPDFJZQZzJ5/JmuxaxIk0JJ1cL/tKocAsUxUcvJ/00aPoZNUS03fm0aYL47Y1775eMZ+Ar6iW+zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyF3yqI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyF3yqI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEF5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751081993;
	bh=bsHU1OA8mbQh7enW5GR+MhyCHRKCUu+s8Orv8Ks7eQk=;
	h=To:Subject:From:Date:From;
	b=NyF3yqI/naTjmro7AWb61MyrN7L1Os1MFeSyI3HQkJQuwrfMO92mkZCO/2wyHIFGD
	 6IW1oWng9bp4RhAjYcwORo/MgHZZ7iju/y2NZvnE+sSrIurB04O931LQpZPxv5ONVa
	 9bBvWg4KXWI1XDTPO05p1h5q6pj+sQhexuwFGtRVyOCYV1A2eY0W5V7JfRoNGv8zNa
	 +Q5yfXxy0hMEfmGJMCuiVeb6hZY6g72cAiTsH9cvcf0POSoEKJlTtIK7wTHjU7TeLU
	 5vu3skT8G9WqihcUPo/8gt75znn4sYmF14iLlpjtl52Q/0NrbAsH765dq4KC+Cw5JK
	 ly9E4OcRYzcbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FF4C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108199358.18738.5714229616323054901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067bd52c0c5ce1492c7907e18913b4e22c15bab8ef1b3b6256b531fde390e3ca
Date: Sat, 28 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751081993
