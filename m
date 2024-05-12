Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E49963C8
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715479343; cv=none; b=kDGTkiRLT2FZCWVNQN5afXEpQg2PdaQun5+0it3Hb/vXrdNoO+VEb8MRgI2i6rlIrJM2TWOGc2yfrxLuoqpD/dOzVdUw1lj5eABhJfXfAP1iEu3NrwWyUJi0ApQMOHgXZPikqw5JODOoeLQcn/KuC9Mn9/fiheoSLDzls4IL3Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715479343; c=relaxed/simple;
	bh=vkWh12IX+nvdw4K3NGB8t2gVVnsi9YPU6LdBB9AGKHU=;
	h=To:Subject:From:Message-Id:Date; b=BsmCH4NUoDV0qgNuIOIlckAV0927HnUwnQ/H/DlZRnDJYAZXtAP3mqEi7ymQ6L1dlYl9MfnFN8gxiSRuXH9L5liKWeKRUhmX8ZJ4S6EFDwL7+KUcIfYZRViqE3M5mmzpHhEdkxt+zJ/53SnO2hOOArsIblJqsCPee/iEA4aTRks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEciazdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEciazdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5318C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715479342;
	bh=vkWh12IX+nvdw4K3NGB8t2gVVnsi9YPU6LdBB9AGKHU=;
	h=To:Subject:From:Date:From;
	b=VEciazdyK6BgI7CVWynuzGdMZs82sJsLf/0mJPSlfSGO1dHmy686FW/ykmLlECTcF
	 lcc8fcdCw9bnal+4JfA/WON4gphvfZSvE+vTMXBYTKNb+KqFm1YJQti3HXLTSZUs8d
	 76dH/PfGMefiTNwuKOGW2mAJpRb0v14yu1h6RigOXhAcX/ydq8oqifvAoHgQPCR0dl
	 jv/e4D2V/Hp6OIhiMarYz2DHhQaCUsK3PbWD7/aykAH0dS7hHDOntGaObSmy9qXAqi
	 G7SeMnj0xS8bzglGEwsES7Y31qh3XwKdK5TCLFVszKneKvPpLWE2UruWalXoSoPP4K
	 JdBJ3brtmX0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0B6C04FFE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547934279.1477.14655204456093943478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ad3f8f99df743233251e1dc601fa21b07f6be837293fff62af3fc5b06f800d
Date: Sun, 12 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715479342
