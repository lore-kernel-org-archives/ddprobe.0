Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230F21662E7
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733160354; cv=none; b=GMU77BCQLY5fr4aS+KuwEnoyO9oNAArcjUqpq72LVgwh/oFV0GqY6MiKUinvuCfz+BLCmoqygiaymc3OIXmHS9fRrYZ6m53RlT1qFu3KgypiaCKLc3MnUc/nwhVgl5CjIsDGprUlIZ5nyfOLvv37B4lnYgJ1Wk9W7tO3P17ILYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733160354; c=relaxed/simple;
	bh=aD9LZ52BZ4pQjxN7GLNCFLZbWNb2zo/FKEvd5vmr6zY=;
	h=To:Subject:From:Message-Id:Date; b=PCuHQzWYOXSBj/P7l03+mSRsiw5cKp4rzG8mEcBNPyAS4eYlIRXMWz8OyL64kVN1f3+t/DFGE88hZnVcZ9KIof3cXds0CGvOo+FBjjCm9myIoLF1J91ZTC/x7R2Wqo2zZcM1AG18Z0rRpidlN+5hSPdNsPWS6IGOXPpxiiQsc7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luhn9vEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luhn9vEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94E6C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733160353;
	bh=aD9LZ52BZ4pQjxN7GLNCFLZbWNb2zo/FKEvd5vmr6zY=;
	h=To:Subject:From:Date:From;
	b=luhn9vEJRumWo/aJN3MwSoJU9ggLzDF9mD5YEwAP28G5D3gWXZfh7xVkB3NrWM0tb
	 Tq63QsCr9ehDW5IxA6QOFHwpoIlDF/snpAwsCp93Ny/MxtoQrCJZnqL4EvJiwCs7h9
	 ijAU/dA4nMMCSVLBKNFVLhfZbEGkLt90Q8dQ3sM/cuYrSROrtV5b6KHQ2EDLdRjoXE
	 qhGDw1OfJ4KqAA6HY9iAr8LShXj60gMPW0JpEIRdcWiv9b+Fq1npr5t8Ha3KPKlhlz
	 IrNbWfKTee/LXvp2NssPMngca3BWwjsW6//IoAdJwEAW0d25tx7m/FHtt+M3DgvzRG
	 lQ6RjWwxDsEwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92680D78337
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173316035358.25076.8774955523411731283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1245528e17e78a95b53fdcad47cee8fc9af815bd709eaedd1e4c4c71115d7115
Date: Mon, 02 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733160353
