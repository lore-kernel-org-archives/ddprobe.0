Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615583D9667
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792327234; cv=none; b=OcqVpQEZaKACp6/pXVOArwFoSn1xDB2OyLZP5cF/lb7i3AlI6Z8ygMWvNwIOYUfW8FzAjYWDq9YoAxripVY92PsyNFlODmxkVjM0WiRLWDYnNhkT3iU8iEEExgJTfCMR1WH5BqHc6Ha/f/ys7ymrXqgi/tjAxcBmH2W9I62ahxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792327234; c=relaxed/simple;
	bh=DW2QoYi+PpJgUMuJYjc1ODp5B0KuFTUDLvMgHAFH7DI=;
	h=To:Subject:From:Message-Id:Date; b=eNMnojwasRWiO/POsNYPS+uB1AK6d+HG9YyLnoJZhnS9d96b8UURQh8w/SUUNgdZ3jYmTmtxj0L4QKmZisNIB84GH/hX9HD7xvMQdfVUCmXGtkRQfWDz2oslt12/GpTzjVIzyCJkeZdJYPd7WX4JxwoN0D5a7wp50DbVZ4DznPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4oVPgLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4oVPgLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04F7C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792327233;
	bh=DW2QoYi+PpJgUMuJYjc1ODp5B0KuFTUDLvMgHAFH7DI=;
	h=To:Subject:From:Date:From;
	b=t4oVPgLhwp04Qcf6jDg5p8j40qr/3ApFSzRzyI7puLiAvNFZ0pHCobJOlwvD3pccA
	 Ho9i7tKIS+OEJR3sbmTqcaWySLYAIBD6WK7yTXNQ3sL0Zcqn4yzD7r0b6W1YmF6deA
	 m/1UItCXBcVEoQfES01/o8ePzqdgVr8WXhztj9H8EAIbSYzP22WZf3M9M9b94zZ6gE
	 U0r+y2lk4lOrBYGyqVRn/gj/Bjqu0+vZbrNzy7xaaceXv5hXIqo+Y44kTqtXrSGo6C
	 S0a1t9Mpl5Kn+qq4MJM0O1vG0AoijJGGgH4ZA+RLlR+P4Qe3vIPS3qZtuoKdXQg6PU
	 W1SiYaEZGIJmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFE8CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232723369.5040.8280705335664130783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173c30856d15602c784b38db4856f480ec32bbd9c3fe99e9ea0198938510b101
Date: Sun, 18 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792327233
