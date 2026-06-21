Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7730B1D88D7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782015994; cv=none; b=ANVKhIP9tHdXaQSZ5dTLIaBklUk4HiIeJBUHQMvCps0ZtezzWZhUl2tbe9dfGcto/1W2MpkJ6jKFoeosRF2cCZswI6LVDZDnYJO7+RoWzCtblf52Dmu2a6V1Fn1+dGoaAt+Hey51uUDcosqesbsdm80DHvptR726lo5Y1a5iRlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782015994; c=relaxed/simple;
	bh=Qj0wkukpbfy9l5drj+lWsQd/l8bt3s48CDd/oNCosk4=;
	h=To:Subject:From:Message-Id:Date; b=nEOnyr1+u7x3WmAfcAoypdEZzCtnr9ungx+4ptYUReSS3/pfsafVgxOOhsSGybA1/CftgdlYAceaFLbj7nJ7URZNnVbkqoH0oP3QyHEFQ2986PCo5Ux1cWf7P44177m1wBOHOfmYwU+70sbbLDepjKvA7MEScYybS64aFhe7uIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D14yuWno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D14yuWno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2035C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782015993;
	bh=Qj0wkukpbfy9l5drj+lWsQd/l8bt3s48CDd/oNCosk4=;
	h=To:Subject:From:Date:From;
	b=D14yuWnoDflL9Vx6Tiftmtl1CWQ27qmZjTxwoEnuCl7yfvqTUZSXuuduoWLLr4kvZ
	 aaqFqx8GUkSUcZmTWu80SVz438hd7+yl0Vr2IqGwbuCYXChypsiJ+U6cdyHvyIxUwr
	 bjdzNfMCO0q9k5hITxHzqhy8Y6hmJ/ZrUOwuyVuZD9iHD52rFgwXZPR3joiNkRUgjA
	 HOPQ4QG08OEO6WP6wgIjL4Tg9YDYOJtQVTxWjLeHImexC44E5UuZDhKiXbiiiqW7Ie
	 9hykOBW4JMn8HNnJtPqqStJ+NTeRDYYML5GMCh5BU387p5zEaT1gtfYCC8oB+02va3
	 b0pn3eGNt3/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C562ECD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201599377.27670.12994875935442302776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff113f86358276b2958af68504691f89e37b9c540ced23a86652f38367786f1
Date: Sun, 21 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782015993
