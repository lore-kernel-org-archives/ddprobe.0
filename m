Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A961CB32D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727797554; cv=none; b=MGcSqEUUysxdChJLuZANn9M9JbV4p+9uIa4IYVb9eQqDCIoa3ua3AnFDHPBdUgadgzX5zjNNzxZ/YXtukSv9bax9v3w3NxkNKoTZ0HcT+aVk8okurL9ZlnBgok3I/ngxCT1htUXUg2Nkyl3OpL8q+SY8UJxea+tLB9AZdrFrNW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727797554; c=relaxed/simple;
	bh=72Ou5O6IhcmI0qQDDRuJxD+PHuFcoA/5W3544MWs++Y=;
	h=To:Subject:From:Message-Id:Date; b=tKK8eJcR5BDfqbzsKGNYoeOdHrtaA8XQo2OdfXaTHtYJI1IXRc6KYZg/FPcsgCHNPWc/TuIb2tWGVQywC9G5dHoqsx1UUw1BiBU4HDxKckK6Go9/SrvfTk83AGAP/eNYAcJNQVQkl9hKUeT4wH2eDJOWTzAVOFqsHRuA9lPTURU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8GAAspw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8GAAspw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B2EC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727797553;
	bh=72Ou5O6IhcmI0qQDDRuJxD+PHuFcoA/5W3544MWs++Y=;
	h=To:Subject:From:Date:From;
	b=R8GAAspwSNUb5lyPs87tEWZjczxozsGqxPMJfCHC1O/0HiaD7eVToyJ+S1TG4dt4N
	 mTttzefiu4oTvJXBPoGqHJc1JX9jjSoRgvJR8aGhaxwExUFwugtyIcE8HTt84u4DGa
	 syoRb6p/M8RMShb2tzs+570i0lzUSlKZAyGD33s6cCx+6HH5IzzojvMbZDfplJUgnN
	 NWwRp7U6FXkZnfIvSYHg1lR3DH7MnSYIX261Kxq4QxUff8G2XzTs98eHhxcpRXlL7D
	 0ZXhsV3w7jSdSeATkcsv5NrXRZn5Pj37OKbkwOfsBZ0O7o1uOdStrdpUV548zkJWEd
	 e3lxuq7+Qh2bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F97CEACD5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779755364.5669.11606670822330647364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1efcf4dbcdc5026cfe6c120c1e92b88a3d23c744302b393c638ea162bab160
Date: Tue, 01 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727797553
