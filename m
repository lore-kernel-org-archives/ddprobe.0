Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9DA23EA66
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711106897; cv=none; b=Of2EY15HIWqZtddFo9waaXcFdk9qBeMQrminS3SjPHTUJHz54L7buzEQshTxwjD4Fpq8x2DCabWKiC4NRCfOKrnUd5zLV00JtUv2dwi89Xf/pnxoQwL7EpJ8lovb9KmIb1dGMcw2ZMb7klO6bSmlORvD+Ddm2PrSJefs0Yp479M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711106897; c=relaxed/simple;
	bh=ZBR4Xtkd8UH21/jm6TlmjlzYNIbXwqp3hTxfz5ezZyY=;
	h=To:Subject:From:Message-Id:Date; b=a0ccSTz23DlrBYltkEwWXvbpX4cWilWHatwCHQOMx/JrtgCeYcI5JnjEYgGfUXu+UmvRw08OvBHWtq1ECEvz43pF8NJEtp1cd6TlSR+ZoxtYKXc5W5Mb8U0zTgPiypoDI5/KjpqZ2Gp0dIlUwiDCdqi6Hi6+yPqlyOqjd9QsyLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr6nNHeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr6nNHeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D68EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711106896;
	bh=ZBR4Xtkd8UH21/jm6TlmjlzYNIbXwqp3hTxfz5ezZyY=;
	h=To:Subject:From:Date:From;
	b=nr6nNHeLD2EXygLiLq/9ROeJx85ozub/tgbrhuNkBON7Mfk+q6K/v7OAUnQ3yF9PK
	 rN2TpfcghCPLjLyrKaAnmaf+An3FfWrebDNkuWcEQaAAKgz2s93ESCAnUi8JtuT5oL
	 en0y7ar1gH0btPbtm379WSR9vptZw6lJS31Ao5op51wjT2oj70tJclwvG7QDSiECUi
	 u/1+R2TOi0i7DqTbXUZAxdZNcHWqoJoSyIMYElxVYVVGog6UBD+VKPXea4P9roRrXt
	 mV73kXHG6QaBQCbOPOLW7dOBF/pvdcZzlfgr0GaYR3eSUOVeK9NPNEacn7OyGfdDWe
	 nRg72KAgFzDkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD60C54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171110689637.15497.14703888215100778310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d863d55f28b2dfae3464d6573b72054dbb757486ee343c167d7cbd8cb2820503
Date: Fri, 22 Mar 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711106896
