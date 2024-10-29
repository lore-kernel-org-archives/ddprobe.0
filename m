Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362FC79F6
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730166954; cv=none; b=B4guzb9GxN4i+HIY2X0Mqcod0z56atG3qqmQRKU20Lpp9DWwa4QUllmPJlm8sv/W6vNoX0iW4NGSgTiLYTdyRGx7zeGHbWqYs/oAGYzlQuCCQBx8adXZVi06L5uYTFj9u6Hx5qicEsZOXt4noBHFcl/cVpOIQlDLQWb+29YMpH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730166954; c=relaxed/simple;
	bh=4IuyxBsB92ivbyu8PcVDe1NTUAEugrZJSss/R3qADN4=;
	h=To:Subject:From:Message-Id:Date; b=ZebHBiIEGa4JAcHWAKvNVY/zxd6wGqbRdD4s8q9fy2RKzy6qU4cwf4tKor6PYDPUBR5dQTAF4YkY2V5E/z1Ra7b3PcBqetXyl3VXfl/eSWDcO2aE2HbAJ0xA7uWfrSyuw9nG0T3P0wUrV5r7VY5hgDDJPFFsx3WoRykG8YmZQMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYeYMKWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYeYMKWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3590C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730166953;
	bh=4IuyxBsB92ivbyu8PcVDe1NTUAEugrZJSss/R3qADN4=;
	h=To:Subject:From:Date:From;
	b=pYeYMKWunA+pzr2bJIf6ecUEtK+eXn4pZAePLWgYohY14JEvllcOhaYNR8pUqWJDe
	 1H77OEnKI8/FH77UWkxVaHcZllwhN9O6gYaexBaSbzbLLAOg/pYd7FArFCul9bpu5l
	 tav8BrJosxnw7w6od1C/C7IunpCz2ovHu5qS8s7DAS+dAHNVH2o8lYvr8vweKjhMyE
	 v60S2AtjMv/ZgYwIgj8WpfBqSmTmUyMClY+O2PjgO7ZGm6NnGFLNk8ioByni6ZTk1C
	 bmm+AokB58g66kLTmLg5xRhQS7n+8eknrfYgupQkYzrlKGMITDLfele6jzgVHLyZct
	 yhKjJPPiK+QsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23BED5B840
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173016695363.29577.13367046611378857698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c35bcde58d69a48cc015b78a2c0d50a5a18094812bfe2fde2671b6904f228f
Date: Tue, 29 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730166953
