Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE3D29BD91
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763302254; cv=none; b=YQPSJZn5s4Z/X/WCTfvew/vXr/nobzZnedAwOcE2yynfpuJx7fWWOjt/xzV0A9Kz7V7irAG8qYICaTG2sjTMV3wcJI0ftkceUGdQgff4i36VjuGzmEkCnwQVLMrao3KpDKJPYcmRsWpSQYVHlasZvEjL/4WYpt4lW2MMdV3tchg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763302254; c=relaxed/simple;
	bh=kWMlZYLXkMvP0muMwof3NzMUC14agEuNoVA+vitXqHI=;
	h=To:Subject:From:Message-Id:Date; b=rmMnDQiOr8LNFyxEF2zEXbr5IzKDHVPOI3a07ihpudcetd3xeblUzf2WaL8xj7Gb6zDTqNkzeifsBRlQWKpk1fS5rWZPfWOn+Pw6uQtp8PadXpIrI/6UhtPxN+h1trCQtD/uHVvu1nU6V/XW93MtsCLnY22qDLQMOZHhAacHZJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv91EZCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv91EZCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E1DC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763302253;
	bh=kWMlZYLXkMvP0muMwof3NzMUC14agEuNoVA+vitXqHI=;
	h=To:Subject:From:Date:From;
	b=Vv91EZCdma8lsWUbRaBXdNqlH1l+4ITe/Oo/JncQycoC8HZiJLHWycndz4TMh6BLm
	 u86v3Fmi1DzrQQNYtPBnimqGUI6blCnHjTfoIPdPk4khVZVz7Z/XU5NV6RZCe2NWBl
	 Pt7k3ZS08MUibszn1erkWbBdVlS+nvDTs6oEagaqZYl1AoPN9AzpGf2W3SafT4DznK
	 YEVA1yeutY4YKwiwIR0ZDIx9/wlEJ6X7Ht5G/ctgGhIjhNsjuKPQ8iG19+CuUUKFOl
	 ShCBrktoFZCfkqc5GnuYGK6smtmn+PhB1u56sWk57VdW/N+WZnk2eve5r5gXyDvMfU
	 gQBrZ/w6gfkPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98540CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330225358.6719.6576269163761858809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02c1adeac999be4363e2c7ef1cfbaba76ea794856b8b23dd55f954b9e71d0d5
Date: Sun, 16 Nov 2025 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763302253
