Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF340BCBB
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787134234; cv=none; b=g+G8Ks62r2dtMkDq4FdtTC8jUvFninecXu+xQM5PTLg+D9Y/5L+uXUaAFVxvjknpDE5aOrjEqC9FTMz6IYmY00u7Gn8lFYLs+klGoU3lXAr6w4/LDcP1JDxZEXdM4JqG6oUKV9JB52e1yjWiQtHt3aAicqh4jiYtkIYw75oekOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787134234; c=relaxed/simple;
	bh=yu7nmgcqkT0tF8YUspCyXK4cdab1aEYSb1EkeE11ryo=;
	h=To:Subject:From:Message-Id:Date; b=IbK+Wg+jI6aJ3x6GpQlIjXvsdBiPuX0Rf2UbrQt0lR1IljZvW2q6GDyNAJdLD/GuTXk/SxUX7OjR280+i4drzRAYFJqGQ4WtTO2T9u2kywF6LU1aPv3W+bzp6BR8lXd6/QyNRVfDuwe6hoNNmbxcfk+fCpCagME29Z8ad+ZOjeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbDfBqBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbDfBqBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FB2C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787134233;
	bh=yu7nmgcqkT0tF8YUspCyXK4cdab1aEYSb1EkeE11ryo=;
	h=To:Subject:From:Date:From;
	b=CbDfBqBMrGtYhVvqInl1yZEQD6k2ikOEa7pJevdl9sVpRn1eXwgkmV6RFHreTGCG2
	 CFb9OW1EcKiLfYBL27nacbahNiI5afINZDvhIcc89GgpZkW1TZRp3OZ40NkUIWP0as
	 yeryGEq5XYK+Qtyw5gtIaWN/ABxEX5Rxs5BA7D29xQoxFDDVIYE9eOMnjUMv09ObMa
	 I8wiRTglbf2AoXyYIhpTag5uOcMlsTv3Y9vlM/HsRD3xtvZkUzANtaGx/MPq7rfEkp
	 2v3cJMLwQtW6j66qqrjpHIgIX3fv0TygsWtS/PB7z9IsErdRdd+Z0/B5Rwib0APZCO
	 ZFaVlhuuZB5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD7AC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713423369.2017.13453456417873262162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98baef88baceb7852ae16750d887bf2e027676e2a0f6d29ee956dfa09aecd1b
Date: Wed, 19 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787134233
