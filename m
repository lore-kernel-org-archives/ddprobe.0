Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC3C1F37DA
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747122593; cv=none; b=RaP0maz/e7IaqPEOOqnvEXLUaqyY6R8RCL4REyAoeHeQWh/rmbjnZ8oNCeaY4xO+290Z9HetirLmIUrrxPc1L3j4mvcqUxY19B7HlPlzbDZ3sBjWJZeEhDHmXC0KdDzxwgD/vgEf3pFQvj6kYydx4qUPSQcS1MfeWBYiIzJsQQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747122593; c=relaxed/simple;
	bh=k0mDlsBTqM3LZ/ZJBMaxuuAqlmO5HIf4JGOJPNwtG+E=;
	h=To:Subject:From:Message-Id:Date; b=FDfDZYq8w4/VvX8jQAcMJeufWLU1KgkiETgVO/TSt6ul4D49mgxW87vNpzzSPqF0KG61P6n2OKQ70F/CCUxlz05F1I5rzRB3WVh5GF+mJeyIe1/MeydOsq6qobPNMTr6WW6r5av59+TSE6JzAfDZ/3x7c6LbYQGgYHR22fMIU+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOPz376U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOPz376U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE96C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747122593;
	bh=k0mDlsBTqM3LZ/ZJBMaxuuAqlmO5HIf4JGOJPNwtG+E=;
	h=To:Subject:From:Date:From;
	b=LOPz376Uymhn9SsR4sLh7/UjnlchjJHyUcB03TU16gtD+5H6pEgiC80D8iZw8YfFC
	 RpfvE1Ls8aE+A+5TnFrLh1bRvTrzk2sDWVnLeNaqB1naHzI/LIuO3ggN+Kc0w6KzOx
	 trYZd8FnT3y7SSWa1BpHLawmMHgY2fKigeqEsyldcRdJPCxSx8IGqvUENdI/AJFfVa
	 /hlqAMMycYNzc0EHxY6xOEGhIM0fKuQir/4DS1F17KklC1iV5p4s6sze7tul0+WaGg
	 Mj3MWyYmg7zaHpK99lUgQiSOSppj5B+BIDioDivnTXtlcCsylc6dl0F/1TMvsMlWJT
	 FHDKZf1g7worw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB03C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712259357.28274.13880255072902303148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdb59b6ebd2dc2981a64c65658b69c798a276956b2b93269bf47d909da22f36
Date: Tue, 13 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747122593
