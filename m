Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB19361668
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789470034; cv=none; b=g/eKd0/zxESxqlQoJlxkcAYf8brXiqNhB80y0/AL+pSQX4yegrrU7jlgkXAELylXgjKUwSiBfbupoHgOPbPmyaqFNvo/qpfZJPcxg5jM+WJTBare109ua/dHg8iZBMpLRziBZdbz5zG/F+mmGT0IsjZhV4OCsgZpQizDCzWKe9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789470034; c=relaxed/simple;
	bh=lLbKpVIgKiw/OFp0jXVi1okK5DIFouTW94pKXlid1YA=;
	h=To:Subject:From:Message-Id:Date; b=unUSLwQZjlxwfT+z9i2U+C1VCRLvtaE43XUCH9D4uUklfWcxwWUaQDJnY6YHrwKayJNbc58MbLF732bAI9zddggzVFeiwERgadcqppnYGvFQe0J/rMFJzHGAsBHzkSQGDTTu+VvOBXd4p0HMVuqeQZmHCAzwd9XzLKweWhzh/sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vxz1rAup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vxz1rAup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EE2C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789470033;
	bh=lLbKpVIgKiw/OFp0jXVi1okK5DIFouTW94pKXlid1YA=;
	h=To:Subject:From:Date:From;
	b=Vxz1rAupILbGSKua5lF+G9wMKf5poGw1dUXI09jBHCkqtov/a9y2tDuql393spzv/
	 FOhA9Zxqmp9lWYl2zVLTJiCB0FAQeITBhe+m5TGcrqd1zolQL2CXitzpI5pp7cUta4
	 RiFd9Bzi71aV//JCimQAl0vaaGn0uyROGfLPNbm8gm9DIk4XNOwdM6qJyExZdkpWXg
	 rc3VMnQcTmitgBsU0YUycHuiPhDRPJgXMvFMyArhAUaSFmJTR2CpQfMpFVwtaUiTT4
	 DbH7dueoSQhTOWvKSzhpB+Fuja/D77BDTPA8FkPh+yS2kPFN5ozPp7LV6c5dXCRL8o
	 pF//pChO8QNtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB8AC88E7B
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947003370.5301.966254453759375700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa009069a6ede55bf5b39d4cc4c8aee91904f9c015e9f4b7f7e09eb58eafd64a
Date: Tue, 15 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789470033
