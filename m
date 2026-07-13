Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38278352C3F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783937314; cv=none; b=jDVdKVaewmsn6G9W0XFPjLT+wcuciar4hZzJoI2EmMDo/KInsWRLG5GaKVtUimpHddoAel5pboZXLxVTWAyqMrrBb4JWkif6nMDTBc+/RnjtbR1UBS7QarXbD+TMrx5T4bTe1zHmwehpeTU+hhFhPZqOVrgePvSfP/tyI4e8e8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783937314; c=relaxed/simple;
	bh=IAHhx5HqpEDm1JwiN7vvJVBrwLtWBjNPfWUDRG/JOzI=;
	h=To:Subject:From:Message-Id:Date; b=KLa67u4OPjj4mqIk7npZzq0JnzwYMhsMlm/CzLuo1fR7UgAx2BzUSYe5pP5ZeqkyxE3kA2Z30k48T5+BVmcWBcUNKj7lM6dAEzQcIpPQe12RSZnsUPT/YRvVDNRiuimrvV5fkfnc4axHmzJndju1/P6+EDNEZK43UXXQf7qYzIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWkwR1y2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWkwR1y2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C17C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783937313;
	bh=IAHhx5HqpEDm1JwiN7vvJVBrwLtWBjNPfWUDRG/JOzI=;
	h=To:Subject:From:Date:From;
	b=FWkwR1y2eEkPRF1fAGPG0SnknvTEdq6C+b+Vxbg8nJHT65e0X7XMaT2moHpNBC2+F
	 huvoQO+HTIyIoiU2jCTZFeh3Bqz1w2tsilcb3BMoGaMLmEkGkSqCG5+SuWTRKUeQR9
	 2dyEbuPv7s29Hh92h7f0zkMYXf4muw203ac/YoTJ/6gIvRpMjbenqF3k+0/ReXdvDV
	 rQyDooByzPotTY3RP+lUM8oinOEKm0lBw7X9w7+VfluyprTyZS4o38wnqQ4saCYPME
	 h+jnrkF6H43+DTBJFv1X3kCSNkYUcKc788+YuFV9DUXDLTOM5xOOU2VsphQyyauwt+
	 sFqhkLhpXkWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AA5C44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393731368.32590.13157444636761495584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f789b26c8034b9e040019178e896f12b2761d0555fd1cf371a7808dffbeb40ee
Date: Mon, 13 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783937313
