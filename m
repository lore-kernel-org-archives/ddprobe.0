Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1982F4CE05
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725223554; cv=none; b=fub504/5nD+KqL2syPkI7+IAypy9FE/2T6ncoTjI2rIoIAmu6FEP2OZMMxOi9dP4TlwkvpqoOkP382CnHc3izUdqOKsOLu/c9QJ41BYuDxkKC47Xl0jsPmuk4FauO5ieJsZd5csx2DqU8vVQLT8zpPYOMJnTguVYl81jqRFPobM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725223554; c=relaxed/simple;
	bh=enRCisqtvQcedQmS964vIlF0Q8qdPPqcVx+FO7WooI4=;
	h=To:Subject:From:Message-Id:Date; b=TmmwIzNCbkNfRFXRAznIbiMucb5ddjMdIvpwk+DGINRtZTfUYRCUNe7Q50raiZIs9IYiLMPfNAVZ5ab9OPtJonMoFHq/2aJ7kDuAuqG8d1a73hW0OQtVvSGmo7LHzB9rOKWLmwQ6qyCE740d8fEKzJw1ItRkndXX2BEJdJbgFZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OO18DYqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OO18DYqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB47C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725223553;
	bh=enRCisqtvQcedQmS964vIlF0Q8qdPPqcVx+FO7WooI4=;
	h=To:Subject:From:Date:From;
	b=OO18DYqfMi+YOkIxkWbOy0z9Mgvp+ZPhQ9a2IxUL8ijrqz4RFVfmf+eyekfCpVHJf
	 eBKFKnu3drYPQD1hsfwrYGRLHzNSDRb5zCQK5STGKjT5xeIYuZEzMs+BnyP6FLdGkL
	 KsO7rNFA/GITD/A5cCo2G4mB+aDcb16sW5DVcTPpuZKLOR/yyZ54zBhG00p/sZ941l
	 hFUHU+LFcZmybqOQPqj3WK7N66jOuPX1128Oew8YjI7oRKKlX2nfQKfyxG1+QQHTWn
	 fiCJSGNLEUSVdRO53iWpcwiHt8oFoPA8NYIX59iooXdxhkbOwKOVyxRXHhlKsihQI+
	 P1ET+xTkHogYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F74CD3420
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172522355359.26384.16200691514345906389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca04f07ea0b23eb05a914d2e8fc5dd9333f181c5cacd96bae91fc169fd065cf
Date: Sun, 01 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725223553
