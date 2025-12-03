Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C662FB98D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764772974; cv=none; b=OJNwr14MBD8K/TXQocQ5Q1SgAsTxpMxZ+PAWpi/3WORwrcUI5KbdGI/veNR6rncq+9KAW5mjuUF1DodBH2aGgAf3pFpwIkEhIWIMqcVGH0/+lRUB4Fb2yIPpORQhY/Kik+0m6Toh2/DbBwQ94mQBWU5zdxCXp/yTaMMsrn/e0SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764772974; c=relaxed/simple;
	bh=XdyrRD4KL1aOqYRPeuO8aQAA7CeKAsj8eNPwH3sWlYE=;
	h=To:Subject:From:Message-Id:Date; b=it2damK4HU6mJWrYhge45AA9lOl09owTfhv884I6ZiejHSfeoKJco++5/OfL31YaAe2bdYqarNj4LJ+0lTHnEwzuHM/mHeVeJ10adb0OppEVbXM94G2DRpCZlB/TAqT1n43mXBzgiWjCzFKOBDmkVMqWLc3yPFPNNq3mbXn6e2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0VguitC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0VguitC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F721C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764772973;
	bh=XdyrRD4KL1aOqYRPeuO8aQAA7CeKAsj8eNPwH3sWlYE=;
	h=To:Subject:From:Date:From;
	b=Q0VguitCTdUwaE40TW9Aya3T1BQHdXFolJMP3d6j2nUsWKQgO1kL+2sOlx6d6DGnt
	 /OpzgmSVc7uKz/CldexV4dJ5GXrtzd1fvDxYtcyzY7/c09LM0HSYnTcm4L0HNpJXDt
	 +SrgjjoV8qsp4Msla2d6YlhodUXaikY+DTg0pyjMqPKy8HHMKLMdXq14UX28BMJNFR
	 uhtLAb7sbpAwr8/Fe2LIXfWnLFk9+YCZvPfmUmsJgsaIK1g7uBsy0MYZ7uHOECsZh8
	 airttbBDVFcuk3+L6w17VnzIjt7Lf2tSk3ZCJSN+Eb7E73+jUlI90nOQLlpFYm0Byq
	 EEo2hunPtwFNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A96D12D6F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477297358.27332.16675685000639117070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efa2b0c9882b701651a299d5bcdd01566b336d24435b0c3d77928e42d414f11
Date: Wed, 03 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764772973
