Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260EB2E3716
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751792394; cv=none; b=HcDDzseHL9+7bMcmd1UJy5LfpFZE05VLIGCnWhp6ivfAjeO4tYew3q6i35Z/In4sjYKqT6u+l89AIZdLFWRpQNJ0wMxt0JKrFrm5LQccX8s+iXTRpyS2nYuYE05padW9JhgJc+JQ8crjs+qQCzYijUW5gk86MehNiW4fw0Nm/Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751792394; c=relaxed/simple;
	bh=CSJu8DHOqplFblyE5HwYWIXXCmrIoeSIcbgCfgC/NhE=;
	h=To:Subject:From:Message-Id:Date; b=gK+CmCm5+V56d4diklz/GqdW7OMAA9I8uaeBUdvxBc7ioXiyNiKSWcqIvUWe1Cfi7FiJP2gi8P3WLipDhkVXtSLBtKKLJLTBUmBHeF2EStb6cdYRh9PUTrRT2FUh59u8wBUJZBPfv/yxOFmDsy46I3AYJrL18MM0UZsatnMkf8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvH+v7h1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvH+v7h1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B4C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751792393;
	bh=CSJu8DHOqplFblyE5HwYWIXXCmrIoeSIcbgCfgC/NhE=;
	h=To:Subject:From:Date:From;
	b=FvH+v7h1IjB+CSKQUysSvPpKTcjjTs/I7P7bafSw0QU78OnOHK6zXNaSYUqET46l3
	 vUDsDtRgwStPhlalbg8jBmJFCbVkdqrH7rWb2rTLfHtPZgQcXOSKPFlK8YciFOC+Ap
	 HTFAWL791advEuWgMDmj8W1jqUth3O4i7oqJS7AxBwQAJBIFaY2gqU6yEpAgbfSxEE
	 cSOrfqYuNxZ0QHGeWC191V77vLdynl8vTpahonDtOen6Fg0iyJ/t2tNlqdhRFIQCYs
	 kRdRNBYlCUFjDEhDAswX58k0SPa/d9qC9HjLFfgPvj88+t369pIOfRZV2BlBxj8vd7
	 HHoCzICt4idSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E78C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179239357.15366.7369722656748941218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479f28cd500b9ef79daedc0cbc4ade19dc9253ffe9eb876061eb96c606efa4c8
Date: Sun, 06 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751792393
