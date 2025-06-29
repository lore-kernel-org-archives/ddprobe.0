Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C92A920
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751160594; cv=none; b=h1X/81H/DHof6MWwK/mMoi4oPharrV3r4XEyisH+KEDFXG+UZDfJlxmkXowzgszz2gLs7RDlA2p7VXHPv5Gof1Kfbe4mnmYKMezD5Earyj7zBTZXkGakv98ndkX8664cx39PErF1HAq4KtbN9zSQPpVW1KkpZF3ny9CQCpM+5Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751160594; c=relaxed/simple;
	bh=J7QJLoYOY6QMBwza0f8GyiOuVZ706l0G0JjfWTvWoDQ=;
	h=To:Subject:From:Message-Id:Date; b=VuA0xkVvznV0e+gUxa7R7Edj6uWNOs7jkvUR9Uwh1E26ZDQORN25vxvBiRcZUDbfLQVIxdHMZ0p5GJeehyqw85tFyjXl95eciAhhEVCfbmRCVkNbZQa+AlJuBn/n/w73FlZ27JQrfuipP8Fmva0zSQaB6+6NbB2yPsKUJwiYbYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZgGrnIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZgGrnIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB8C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751160593;
	bh=J7QJLoYOY6QMBwza0f8GyiOuVZ706l0G0JjfWTvWoDQ=;
	h=To:Subject:From:Date:From;
	b=gZgGrnIisnCKWQoK6A7C2hYWUdW6jQ0GIlf1HXeMHyatJFXK+wyHxsyi/PWF+Fv4+
	 oyGjlWGRqqVKBsJRnD+hf2g9NIeWSPQL7OiOhUmewZEuWBbiGAdNl0YHjPqcs9tVot
	 /zQGi87UDBH17OSKi4lr+hW1FiU6HesmARPI5wntqY3iJH+BB1UtQDOsczfEi5hMeG
	 OcP2SwJlYkGZPIjE3cCmn6brKSlKc4Y54mpeQ05JMznPdpJMkdUjRqV3eLTJt41UU0
	 1pQCVSLZhxTyPKMfQ1VD9YwljNLNBoebyERiWLeBYV+dx9dzB0GmvOOhjYMVtt3R28
	 oFMNO9IPfHP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9179EC83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116059357.23177.15802379770651411194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcaea8689a9e5a142c40a8d3f893109f91d20e77f675a7213c3f02f53d437a71
Date: Sun, 29 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751160593
