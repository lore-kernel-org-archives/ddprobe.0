Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B1A23C51D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765703574; cv=none; b=Z45cPUA4i1N0hkTg/EklgTZhAOO6cmX+rmWlpmvETUU9DMwiV4rWB5K5mW7IY3HbGPYFnJ+kALrRNQUmSFfsHC54mNair/stMrl+tNsN7K8txjDZF2+EXoJkyrMhfs4FozjnHzBc5PJDppLy871yq7o7NUO+br6RngcMXx83opc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765703574; c=relaxed/simple;
	bh=Gifv3MZ8eG6ousiMoItNtfaWb9A5CqbPQ8TF0TuVfQw=;
	h=To:Subject:From:Message-Id:Date; b=rSTjVbnLquAJS74kr5lw/vrIuikVQwuEhc40vrdSjYJyIzJm0I1Iy0f7+WQC/yw7hpCs6LtW1O79RdNlX7u2axUsqJHrgQwUf6Np7/yeQkK79pvhNuPtQz29Aq5Sm0Pep4S9cbPRtBLoF21MF/bG01JOyyfhPHQV83O5D08bdRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsDdvpKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsDdvpKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCA6C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765703573;
	bh=Gifv3MZ8eG6ousiMoItNtfaWb9A5CqbPQ8TF0TuVfQw=;
	h=To:Subject:From:Date:From;
	b=FsDdvpKhuaaz8BBHw/CLSJ5SII+YO3OtdZ6YlDGnqYzSqXREv8jy0LHgOcIY4P5ly
	 dmJwbcRLseiPOtT4uDaLeIw/9RYM/Oyk4q2dJ1YXcOVoyKWc0pOSp5cRuAIlf2aM58
	 yE5pTxZB8/PpF4fKw9WuQXHZKYxKbDfJhFAe6qvyV1VHRW6bld+s3DDGAvduxzz2Kx
	 AaP7NM55eMuQIi1NNbVTj/SF1DEyo0a5zTQe2X4oj3rOCaSg8Kphl3hWAppL6mi5tE
	 I1q8YSMjl7bk1YnHrKCyJfVS/SHBtd/bFq6JsZxQXQnUXl2FEjKfhqOZSNlsSAzJ4V
	 tZySH9H0bMRhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5598CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570357363.7324.17925374647119048709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91a262e1a97893290c84de1af8362e8ce77c0fddaa6e5de198c90542c4427a1
Date: Sun, 14 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765703573
