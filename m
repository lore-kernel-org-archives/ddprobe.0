Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615A51922FD
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790308834; cv=none; b=SgrxtfOSdU5cOJ/dF5Fybljx2w3RuLGTeP3PqMwPCy2TtKC+Zr/lMu2mOYIr3cU7z7GisrIG1QvDi2A4KwJVi6Jz3aPMrBuLx/LXzx8Rx9JGoDsKo0V/QV+i3NKDetM+CfMDPFQd75E2DVzrSJzN7xQFbuOReOlFcxXrggQfWVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790308834; c=relaxed/simple;
	bh=Ad4tGcFUGE76jdNuVgueVuYTO1NvN9zyU5RzQXZy6jU=;
	h=To:Subject:From:Message-Id:Date; b=D3LkceI0Rc2SH7/bP0n4N7GsCIBYvDyyNP5wGEiPpo4C4ErT1kvaVdZGFZ+h8KU3HPj1n9W78F2wCzAMSXVrcTIZu1ToskooBm8NHJyqA8mgRA6Je8pHduZt/U6NOu44xUYzvCNcRKgj08CmiXxYmfalifebuHFHtzm+AHduAKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNajjmth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNajjmth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D513CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790308833;
	bh=Ad4tGcFUGE76jdNuVgueVuYTO1NvN9zyU5RzQXZy6jU=;
	h=To:Subject:From:Date:From;
	b=GNajjmth8vNmI3JsY03EmwBoLhRdGl5XZCbpKA/89Alfyx2IMnU2986w5ql8QlnO5
	 3CocqD9GMrW2kmHGG2EbDrmJ0PYojz71zoMB8zlZWLJ5zPynHOkUeCfEOq2C36iBlH
	 BukEVY5DJFvyMReuor8SPbTVr2WdfkTXm3UXNfoHpzrByPwWYukn0dtRa052V5aijK
	 o+2uSb8PY17fMhK+RABIrhWlGT+iDimRXDkg0HsUIV4SxnSKg8iJiKh13Ne725fkBA
	 LZbgCMww2+vUF0XAHI8/HPLeriJnkPi6Z/fNuaxX24CMtYCK/7Rjz1Mvl+G7NWHoE7
	 9vhaWBZtCiz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE82C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030883370.4086.12381273943595773445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5896eb17e9318b62d9b9f6cf7882bb3c6356b0d4a9d5ae3dca4d8362bb6d07b
Date: Fri, 25 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790308833
