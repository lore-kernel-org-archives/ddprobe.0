Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456EF54907
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724909754; cv=none; b=NT6WouJdsoZKWUoMEOXYAzeFEu+vPCbEep0FzgyU4e7kjfPDwni15aIOj11sZpztPrY3ufC+9pjzJMQ6eK3jz8zbbFzy5jiaTBpYz8q8FHqw9AseWqxQdxrVYIaH5p9umGvplXJjK6uhc9ToQCmtnr+RJIyMcpkuVO6Mzly4wUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724909754; c=relaxed/simple;
	bh=l4ei/Flofgln6VsJku6z564QmebVyh6aXNjL4oPuzOU=;
	h=To:Subject:From:Message-Id:Date; b=j7J6LnLI0KU06UqbIqmN7GX4q6P6iHFPFWcPUlzM7AM56UQ3CmCP4gpIh1jBg/EX9F2RBp6/h9gXB+DVlDhb8DrTN1pzNtHzsoIefmiuHhKO2L+X/70Goydttj0zpxSWS7Ih5BQwuU+iMTwiZXf4xgu5OVF/BtlTECDbFvD6Pxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXciPZih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXciPZih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6025C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724909753;
	bh=l4ei/Flofgln6VsJku6z564QmebVyh6aXNjL4oPuzOU=;
	h=To:Subject:From:Date:From;
	b=tXciPZiheE4Lgqp5U8vdqn7xwUtqnD9eJfnhLLUd0DS2We9izE4xMXvNmd+oqnZgm
	 P0sBNIBmsXPIzcMcs9XFz19Iol0sLeCV3S2S4khqFx4lXPrjg2LhVtzlzgx0bA+UQg
	 +UiJnyVxRF6QvRre33MiI39ul3ErqhUdTle3N30+12oVlGQ1Dc+yFq0taEAqkkWm8E
	 epFCPZ1pk5/LVIF/l58Jxbi49oi4xW1y6MXL/iZVqSB01QOiEkSap9A98vTn7f6JxT
	 AuMGYL9pbb2kYJrW2HTCWP9JICC7bBWijuiUsIbACnJyDdo6LiZM4VrzTifA9+y1lx
	 3/fbjunCqB0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A504FC7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490975363.5677.7089011841879288836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8321fec5cc0883a86b66d3e4944223047b7e286093f017fd65c63e22531cc75d
Date: Thu, 29 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724909753
