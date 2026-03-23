Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B2E145FE0
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774232094; cv=none; b=ho76BrcJk2L1x5yC6UQTLPwyMVuhLtXrKSJnW75cl/T/Cl5htdbw4COHoYAgEqisHWlJbExdRrREDaLvm/Bv8RYXWa4r+ZUqOPo+jlKCvtwFVFwU8lJfz1ZdRzkBCQf5hT0+LOoTptgkVSeCGbfDjYNGoSMgG3rUGg43cap7RB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774232094; c=relaxed/simple;
	bh=IS3CR7H5QpEvzOoxUhsMEFJQ1DQ8nzNwMJ0gOnTdQvA=;
	h=To:Subject:From:Message-Id:Date; b=Svf7wnTNjXRECL0QNmRm/RxjVWH5+kjEouGidTmj59QAjBJr8wNfxybHszv9czSMlrw7tERKz3SqnIGwNbRn879lGBjeuuf7nsh/cQyDpNNTYBgpCTYhUT9EeX4V3RIlt9QQugv32A+NL6GOFgHubAc4zoJh0R9rIh6Hbe2CSBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNCZHv1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNCZHv1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB2C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774232093;
	bh=IS3CR7H5QpEvzOoxUhsMEFJQ1DQ8nzNwMJ0gOnTdQvA=;
	h=To:Subject:From:Date:From;
	b=eNCZHv1CoWuqtXLhQ9thRRpSPClCc+2LC+7VP+SRsLdcupyD2DRHe5UfeAoNzZlyg
	 P8ZIqGnvB/BS7Oa5zGaz4RSyUlgcDYm/GWk0Fy4Sr2WxLisEFjBanvZuZJEf5VJFa8
	 z4Jg95apyQlDKus0H/aXccyjhhMCZJTOKnE4/KcOAle+ZHUkK7pGxu0Ew4IeqjKSj0
	 kCVUalnTUWKaJKPpuKFPkq1uydTNuWU6yTwPt936kUJ7XEITYU8yEXWUzMo0dB9apB
	 MLEl2o3SdVorVmtpdTmdf9cDFrTUKISwcSYCT2dNI2vfPijKLRABNioWJjq+5nnpM+
	 AvMw1LZib4JtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7CD58CC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423209359.23897.14165519931897237359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bff4e27571cafbff21fc89c5f922bf0eb57c7cb691de5d3dea3d620f8e48aa
Date: Mon, 23 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774232093
