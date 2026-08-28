Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4C23002CF
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787940034; cv=none; b=NnTZa/p62YZTIXfvzyqUb8+FU/HwpC87TjTdqAmth/HhuDE64mF5a7F6LfPD+aKIFh3jF8F+Sg9UqK/D8iSEeWNnLNZqWY633tliYf794ybyWBqN1DKu3fjrK7I/Na9OAxyO+TKP+fEGyCcYsuDxDvAf42LIIJ6rZBAzDTnXwts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787940034; c=relaxed/simple;
	bh=VEGHVO3qvKMOlmXA2/qsE8qzZWWCKMd18yfqpK4hqhY=;
	h=To:Subject:From:Message-Id:Date; b=IGcTS+QIqvEZXr97n1YRSRpiu7EadWqC1YztLO2+/8ispn5Frj05Lktl8Fi3/OpwHBVbSbxQlKOZ2OJBfdSF20Ef21GP6z4wx48AEbp1Yjx1plkKGwQfVJLU+F5kItJ10WQuZwPw3qDS9a5zZifCjgSIL1LX5BEdPh53y5DM5I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wwf+Q4OI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wwf+Q4OI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D87C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787940033;
	bh=VEGHVO3qvKMOlmXA2/qsE8qzZWWCKMd18yfqpK4hqhY=;
	h=To:Subject:From:Date:From;
	b=Wwf+Q4OILR3J+yREAvay2Ruh5GF1HeW7wNMNhfg++2OeXAHRSvanyyzu07r/K9sy+
	 Hr2xnCh9L2ToeRLiIGLH5WC/huZa2EuMb2K4MTuM2l5ztZwXxnUiKx7LZMbn6oglzl
	 NcSNOljdHfEBjaTlgli3TkYs9AkAzoHxJlOTP5OlEoJdpDMZGtgX6p48w6KhEXHcka
	 Ff30AY+UtTYSu/xyKtelRcvHvjVfplOCOAzICJZIg6QzvpJn5QVef5m7vcjXGo2vME
	 potlqBEqLhlBqH1Pa4EgpUPXT9hJMWQEg61psUrj9oj7JVXPSjZLPThHP29JpEnjuV
	 MsyZaj/rfpl3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC023C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794003369.22136.8630503717471246967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6d083b87bb56e6c17be77468912f7747dec84f40602ceb8523b0adc34fafa0
Date: Fri, 28 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787940033
