Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA647276049
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756106993; cv=none; b=CTnsXf++T+DJ1g/nlu3Y0OQ9AIULFTjbo4UAWV7Mkl1p0rdzNqJLDv9VqDOdcFJzwIHHSaQ9v1MMXKbmANw+LYWxbFzDnnyoRv35yanoNKOUwPW+kCYkx9Q+LqjMx1sNJy4XMttDAhrlB8BsosdGNPQU+I9sXIbKSZX1MCHcWN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756106993; c=relaxed/simple;
	bh=0J7hdd1iJDGGDVBx0/6MG6m4ZrVSX6361rEkG9EzzU8=;
	h=To:Subject:From:Message-Id:Date; b=JQBO6Gwu2R82ypucSgZ2/quTRnaKBwV0rHeticimXYwCm+10rZ1t8qP0R5v1LI0pebrMtwyxFcdBuQZiaEFJ1+A3UfIXExSUHAa2eGx4ETPUnmW2zz6V1L/zSn/t6DFp7bPfsVTfbGb4TB+WjlSjwPTOltuQ+wpK8Mec3RTPIEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5p++O7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5p++O7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D26FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756106993;
	bh=0J7hdd1iJDGGDVBx0/6MG6m4ZrVSX6361rEkG9EzzU8=;
	h=To:Subject:From:Date:From;
	b=O5p++O7/BfonHP4bsLLTpom0m+HM2xHcZ4L+sC1dz3ooVssKEdpf483TvOs42bzPA
	 IuFAPXuquIS03AHaJgyKUbdHc81dlxBAnt4KWQCodEMa2zEtvYFrFtHe55D+BxciJu
	 YmgB7JGhmx/edUlqnfi5zxd2+OdVESRpIzgcHIgWwjd3pXsoWww8OsVSnd4/1+LW43
	 GuO1TFExsEMHPA5f7qMN3wrYGk+C5t++206nbt3os1DQDcZsq1iCQp0kKQ/yluVU+Y
	 Xf5Y+J/zYjJs+8TQp4hFk8Zsfw3JAI9pETx6VBw2WeD7T8sZGDcLldvY7D6sjNx9KR
	 IouVmWWnyvP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1FCA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610699357.14961.6251288002255471950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90ea1ce2296481b426eae8e391ed513fcc26ef6da2b55215d928aaa3a6844b6
Date: Mon, 25 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756106993
