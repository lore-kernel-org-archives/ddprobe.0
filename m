Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DDD10E3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748433595; cv=none; b=CZP04G6d8JO/3dgVjWp/ElelhP6FnNf1xYG+sAR6kW8s2e73rQi6b6zsA7GD7vFFundmSjG/yqi6qc1SRazT4YwMhFN8Qozhhpk1Zjhh3wOOBA0Y7oFq2qlpMjhfyWd2dcTRmXJ84vGtIaqP05ASPtEjn8XxazaEoEC9W3gyLaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748433595; c=relaxed/simple;
	bh=ZADK/MAl4pYWvN5Wq5KO5LkbmgMpVtRwypB7vd9ikWo=;
	h=To:Subject:From:Message-Id:Date; b=GMhM1CaAB3cjOPMwj9qyyF02XZ+VOzF6mext6AvAp/K/0MSCl9wnvVxQaknCIZdQflSPqkIcjvkTP/CqKpaqZKw3K8+6uQfnONPfZzTaMKJrlkUNiLu/cVdFHYY4pl0jArRNHK2XHw75pYiS0nka29QpFub5jHzZkn7h2tDuIig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIK1LD+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIK1LD+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A499CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748433593;
	bh=ZADK/MAl4pYWvN5Wq5KO5LkbmgMpVtRwypB7vd9ikWo=;
	h=To:Subject:From:Date:From;
	b=CIK1LD+IMPq2Uj/VWc9IZqY4iefWP0FDFwUKiSkTrlgiAQ3bccchD5Y26VJvV0E3S
	 Da0xyOmZTSxyNOoR6dFKgVnJg1MvbHZ7xeST46wnfkMz9PVAPw1X9/d/a6LgbEvdVB
	 KlNIDNizg4Ra6ngl9GEr2LsSsEdIJjfC7BtnP8/aasAEq1ARxioCyWT4xqbm1SKKdT
	 7sOSH7R08DiWzgNKC7ucufNdVQosxlB8hp+Oq6C+aQnAaBoGzsC73eE65tAZIg6WmK
	 MM6QGufdsN7s8xJGYFirlQ6VtLKFjr5xShv8NhIMJVvq0tYgLakiIyGvMm6n052jDM
	 l8quWJULWv+sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215EC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843359357.8042.5843800531388202743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ee786c0f1e7898b1abc12fd3a03de0f3de38f36de139092aedb9e01a9e5a86
Date: Wed, 28 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748433593
