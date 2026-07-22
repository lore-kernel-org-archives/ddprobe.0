Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F973515E7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784735374; cv=none; b=DUlgga/Eokq7hUjXqowrzAn3TNd27yAyUkpXooMEeSM9IVyNbgWp6tcm0wEvS9/yXG8J12PemSAh20blzlCD7sJ7obmgAEKv1oUf9PsuohT6jSYWafWQlSuojjkncs5gqH9+awjSMHK/RR5MIZlJ/SHVZtPlmiLABKFq/TYvjSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784735374; c=relaxed/simple;
	bh=G2TGgduk12PyE14dq21fwKCBtOVqq4pFqYU1yiRz/SE=;
	h=To:Subject:From:Message-Id:Date; b=sVmUeY0mXeQIAcjkCgNk7biv/g71HwumkAs5CLVcFqDHUF4RASVKBFnkDcSbnviaY8KnZzICCJjy1+xpX3RTeimWl3w91Xxeq6DqVu+GuQ1501ea4Vw6O6gyFM2n6yziNZsPRoKgoOhnYVFvcV8eaqASn/Mqkar9pi2R874ODoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtbR3FLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtbR3FLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A80C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784735373;
	bh=G2TGgduk12PyE14dq21fwKCBtOVqq4pFqYU1yiRz/SE=;
	h=To:Subject:From:Date:From;
	b=OtbR3FLIDm3PKWj2vgEApWLnDBuOvmZWIqiDrix4qiFaQ2jkJXIb1FBX+x7VeiqAb
	 4BgzlwUWTASp6gF6Cl7COLtMZAnU1pNwJYgAY5si4N6zhARE/qvCsRxtCrRZ/3MbIw
	 x8tuI0Jf9WKrJlan0ulb91ZBw0NoMVFEUZ9/Mo6It3ydVcPJDIh+1gY1QwLP1705uP
	 b/n8+InXbU3rNQENzQy+JQ+ye41fCBekt2CUm+O1B4qRHPnHYgxZZKAhnaIBI506Ba
	 JYGpKIR6Q3uwao3G40s64UJ3+tE+SCTCEyaDj7WqgVqv1OUUECqc0B0/AHTPWQiXXw
	 KcXPCnnKHwiOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19AEC44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473537371.27230.13802706289303969895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be4dda5ee24e66eaa01ca96f6e23edac3458e8123b1e44b0ab7383d53576f16
Date: Wed, 22 Jul 2026 15:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784735373
