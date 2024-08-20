Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EE62F5E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724175954; cv=none; b=B0zIGLbyKy2wc1ZwpNeUm4JrTO10UB+uiF7B8dfR923laFt7zAKvnI3SE4ik74KGz5otFWTqyrQ7KuQwnMerQ8Y7pSu+B/BHv/v3bKkP/7EiR5RRrxdggz8DXANRUlcFzaVmxyx2FdGZG6F1UkgCk2NXIPY+ieXz1nYto0tO7aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724175954; c=relaxed/simple;
	bh=qGJDLTehWLk4Lk7buFyIzw4PTEN5bJagmzO/NrSVfHo=;
	h=To:Subject:From:Message-Id:Date; b=cjCT7Ey2pNZxHa+Q/jrfkZ01i95mhPlWWRqBG9bfxliUkL0k3jV11XieHO86aVGCjjr0u1welrVBiDatAGyYRfB3THq6MDBrAphLwim79ij2HIXDNi97sSyfuG9Zg3zaK2BWc2ruRnLH9EqoTOxzOecLIupQeEAPTm35u7YEA+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8HX1Bd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8HX1Bd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB798C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724175953;
	bh=qGJDLTehWLk4Lk7buFyIzw4PTEN5bJagmzO/NrSVfHo=;
	h=To:Subject:From:Date:From;
	b=N8HX1Bd6bMhGEuOJzqtO9PtNeP9iscSPMoo8A5dsu+fIywGylTqTsq5qz9ARfUs8Y
	 BgjOqQ3ytBAvFW88MHEmT7Z0JV49AFt4gojjarc7fedieND7L/5S9wgnK94A8qT4Us
	 hGBmiRulpqX83qDFcaxhP2pLRGyJtljAqBZAUK8A+UCEOMXma606ae7IAt9UdfWIQH
	 AwsK1L5XYdb+9JpwAa0ml45pe51BSEplWBe+hRvzmMUaKeoxu67gXuSo/YZHUc5not
	 SbuLuX/idKao/jEIYC+M0vBVvf5eozPL677g36WpHdZmRE2PdsVitE9G7JinYgUpUY
	 kSWgc3HIb5q8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97675C531DF
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172417595361.13376.2504405318352549154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a785da28fa5c8c4a376112dc754117962649651b65c1ae08a669261e3fb1c0
Date: Tue, 20 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724175953
