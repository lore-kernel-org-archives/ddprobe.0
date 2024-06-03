Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569D4EAD7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717389923; cv=none; b=dA9YL+wXN0hP4C6Pv9XQc7gLmmlyabebjEMgmpasky6MliATj5P3w2wVhw3Ou5oHnlVzcrf6bj+6IuGGdcMvdJD+K98KMTeVAiMk9nfacCCRkvvaPPHhcHKt5EhqSDwooZ8K64YVaHMENwQQmvsPyvir3M4nhtvVufLZQDL8oDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717389923; c=relaxed/simple;
	bh=v1m4K/HIXwec+C4/+H/i6X9IsJsIkvvIlW9LU0f2bg4=;
	h=To:Subject:From:Message-Id:Date; b=dfBChgcwCk49LxXZorEmEVd3tmpoGSejc9AC8xFW6vFHj78ltn6E31QWRgB3W9dacyV5X6fuOWLfKbkG20FL85KS7b9Wt3nj0e97y9QAeUkK4dCMOJgmPZO/Y321G8CE06J+xywExIUmiBEMP8zf660oKs0RNWmorJERI1brttM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6ZNF2+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6ZNF2+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CC4C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717389922;
	bh=v1m4K/HIXwec+C4/+H/i6X9IsJsIkvvIlW9LU0f2bg4=;
	h=To:Subject:From:Date:From;
	b=h6ZNF2+tSW5uOkckcO7gQs26GRDQYyIoEvkBM6u3M3YCjEgFNGHZAqEs40N8MCa5f
	 0UO45Wl6XfVGlwyxhYAocyAyjg8qX4OGZlloxbAFMbiquMHHIOGPY9bBAtJ77184w+
	 2hBY2ULxxK+AgU8H+inXEzqUdO+zWGRqQmmKlGJo1dyDpnNMTHtbSK8e7ltgSqhbrF
	 FuvNUDJx30/baYHDFcNAwBdvsK2satCMf4YKFMOTVvNhCepHG5thbx5P2Ly5KXCqHc
	 jcDxSX0XMc0BqLEXSmFX5vCy3spw/TX5sX0/uAJRORIMa7SmOMc7T0zDCm/ijkgq5m
	 ohzCYVKkvSyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20DBC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738992278.18736.4659816103482411573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87db9cf54e92a98b37eb40d47cf8781218620fe197fa249e149c369a95909900
Date: Mon, 03 Jun 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717389922
