Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E7D43E492
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783514314; cv=none; b=ZOJYtxVSYgL+Kr8kUVZFhvpSK5HsxG8o94+VYV9p7eUk9XkvYipS1B0DbRJVRBvR5sN2d8J0mIkTIf7nXE0pujcMGUuIEWZRVqoFoO6/Q4mroF1JH9QZ3zR4g6U+74cCBvOjAYmaQoyxdMTHLXq4AWVZxOez7x4fnQ1CLS501Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783514314; c=relaxed/simple;
	bh=RXGmkWfP9xDk5Yw3Cb/Jpv/1Y2rFe4xuB1qSNMOFRGw=;
	h=To:Subject:From:Message-Id:Date; b=I8Gel/WD8caQUhDbs+3UjmXDwlwvDNZTf2oyqfnjbkyOGMXbei+qOwRIYJS364asQ3892T/TSLNmbsmORk4lJk36pYxsvdwUxMxlv7A/zytTGwP7irNUlC72o4YfOMVBrsjPn6pkuwO1Ix70qGpMw2xHRui0LuZrE7yudF8y7hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+ycnTji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+ycnTji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0C5C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783514313;
	bh=RXGmkWfP9xDk5Yw3Cb/Jpv/1Y2rFe4xuB1qSNMOFRGw=;
	h=To:Subject:From:Date:From;
	b=T+ycnTjiQ4/J+S/64jmQJFPSYQYJZ7niEhSLPMKq8qECpRTiHE6yM9nLzsgTVso1A
	 7v4+1Kph/FeuhBi+FHJQKaDqdRi80ITHByjuEYE5tV1egnEmIEn/P3xVvb0K1uLCL7
	 3PAAVT7934PsDSiY956Bn+wT+2oEnmU6nZepFXUgq62Ny25W0ogK7kuMSPXF8BO0Tk
	 4qHmdc1Bpkjq7QA1wFA6TWt2bUrbmqQQ9eRIdXA6ouGIn0nj4XO/kBIAoZSHYHDN5t
	 W4RY66pu1R16R96MAYWmD+zZ8yu723Hc3fMhjhK4YlsoDFoJSDIlapjwODsFwEDllG
	 iC7VLYOdpD6wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3AFC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351431368.10655.13672411164735555954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd2fc3d82991accdf5765b63b363367abae48fb4df9303ad7c915b4d44a5c13
Date: Wed, 08 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783514313
