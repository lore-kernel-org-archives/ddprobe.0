Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E19D28C874
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765471374; cv=none; b=hZ+uR5G8SQ+3t7uvQwVnTKWjRgZVfZeo9uNkzXmHNlUxTbIiUX7tCrAFMT5d1X3wI3Ef1qI2kth1nRct/rMKKqfnGKhSU6h/RphXj2YIdF/26MK7kw4DhD0hGFHPG6GH4mrkN9Cw8xq5co77ku8cQe8FbVdU1J0A1VVy3OPOsz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765471374; c=relaxed/simple;
	bh=27Nlq6Q8Eztd119kLweAjZRkNYr0wbYGsV0k/CSDCI4=;
	h=To:Subject:From:Message-Id:Date; b=tOxaJWqT1zFqsZKBcGtxE8467o+tWX6MCsgaNWwDb/6404MLtx2PqhrXG/dItQnMlqT0aIbsqNxWyav4VfvB8aeyEEdKfXaQgEYzcSkJ02v6qSUD1+Ikhix+FhIdddRFxn4csAACHStKgoQF/jFP1cJaIvmjLbyVLtUMr5U49+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3OCQiMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3OCQiMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1CAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765471373;
	bh=27Nlq6Q8Eztd119kLweAjZRkNYr0wbYGsV0k/CSDCI4=;
	h=To:Subject:From:Date:From;
	b=E3OCQiMQ8yXo5wS7Cx8FFChYM1OjiCm5sMKSb97NTEskdLRdPN4NcbZv0K1KFYB2a
	 4QAaopGv+aylRM+p/Z3/9VZllyVOtQ3eMBPw4ELKJcSXuvU1MoKQIqO/qmid9Ru/oA
	 HJAwZCWc/4lAd9gjlKiHYJ+2Djenj2AwIuJJcIYDC962QsTYwwje3QQ1DtMo2AUfvb
	 bpydrzU1UDinr/nlAHEvjuD6E/2YLXuVRBYp3eFFfcZ4yC3FDnT8TLERVTUyuWxPt1
	 n8pf4DxjDrozeUUNJF7FjFS8wrWJYrbAKjWytaPGbOR9rvcmlLpHKUuT4cZgHguvL3
	 y4wPB7M+FOWag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94569D41D69
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547137359.5503.294514639257733135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9ee97deea21851753556969841b3e1f2afb6c02fa8890809443d1e05c57c01
Date: Thu, 11 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765471373
