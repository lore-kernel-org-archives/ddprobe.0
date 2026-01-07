Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D5B224F3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767764034; cv=none; b=YEYxJk2IZyGT4vIfwdPs+WcrOLzyWHjB9TSCNEsAik00zCDnRp/TwRjQwj9YJVQcTzeHslYEDAAPV6PZmdkTfYcCr71JsBZZsx6OiRxB0m+ZUC8QgBzMSZYfzFHhTKPFWkO93rO/i51BiIYu4gSowVwgmDsH+1FXCXL+vieuwNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767764034; c=relaxed/simple;
	bh=8MlVqi/bU2RReHfwGXufN/ZQ1tTiUtLIDYRLlwdv/yw=;
	h=To:Subject:From:Message-Id:Date; b=SwVK8Fnsioq0D8ZI1w6c2Ozt7g42SnqW8Sg7VGdXLJFsuYc1bAdfF8xFBEZbCQ5GZobPjKdaOyHJeI6WQD4eQcp46zvRVN0EYdGEZ7oIgWiVOblqxLiRcS6ksD1iW8u7rxm6arzGiAdpCHDSjE4ySurAYOo6Bk3RMmJ6cK9Ch/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfLw8gO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfLw8gO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC3FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767764033;
	bh=8MlVqi/bU2RReHfwGXufN/ZQ1tTiUtLIDYRLlwdv/yw=;
	h=To:Subject:From:Date:From;
	b=lfLw8gO5avu1oczXfOS0WfOib/tnPPkMziXvytnjjhEHTnkY3bzC5P4WPhzSINgVp
	 BO5mlzgt8CnKdNM68tpTm+ra0ZHP6c49I3y+bXmeeuKsn0XtTUd5Pcv+bD0tuCrmzb
	 eAUSvgGxMgwK8sL4FYNO8il2ZlFADJ7jDed+DfwJI4+vNa6E4wva+1Kmbr87a+PAuo
	 adkpgeUWu81aYP1tFo0yokzYaK6A9flaI94n9NOENLUKoBL9WGWGFXFvrlUAh+XVVW
	 eGThcoIucGKB5yySzJJmmEdifTiBg1H5Cx58upHZ99PJP3RyeNaQu2EnbSF+Y9XIPl
	 K2gg4DYDUMXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9BCF6BED
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776403357.4164.1620356025873797107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1c09632780ffac5313b2a8461bef404730a627b4e2c813278e9aaf6dfac5e6
Date: Wed, 07 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767764033
