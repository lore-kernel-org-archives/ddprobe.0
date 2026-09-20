Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6EF233134
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789872634; cv=none; b=lY1KfgRvoVv66zl+wtcnZ9qDypKGM7bcF269QAnk0YysTwbAIRpX25wUXirxQ8lKq8lUxMyOUKFF207g1gDfhCb6hxxQiOR7D2aycn4u3dPLphusfQX7ambX4N8CX0RlLPPgpjFhXR66/C12Z08QiUq3bCYBcu6xW+vqcP0suzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789872634; c=relaxed/simple;
	bh=zT6U+rZkpJyns/UuTrP/VL5FeSrcIU3CEGcdungFn6s=;
	h=To:Subject:From:Message-Id:Date; b=luIAt7tFtjh2grRADKEVXWIyo9wRW4oKL5roaYiNJxIhIPChWJFkDencWlZTQ4uZ16ytBU5GizOxPmvHnXScNqNC9Dmd2OFbLFQVLxoCU24RoaHuAMRlN1mwT5uRikUZ1n693IofiCjryFwyHH+3MfwugII0qU+Zt2REnxjtS60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBHRVl7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBHRVl7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EFCC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789872633;
	bh=zT6U+rZkpJyns/UuTrP/VL5FeSrcIU3CEGcdungFn6s=;
	h=To:Subject:From:Date:From;
	b=dBHRVl7eJw9tahcyrHGJneYwfHeyic3HjUoqIwCMeNhhQwhFO96GknGY04Kwb7w0a
	 9I7oHLHJ16HIHMfiZ6UZ5nAul4nKnUn3Q+R4BIAM86yA3FUlpjzhMXkFKP6Mm9gB4W
	 KzVaT9ddrX7HA1gj3SkPjo94WhbhfOIz8osYpPTSed675zNYDw1qteJ7GN3VtJt7OL
	 DudjVQk3mCO2fiXB03nbcXqYawOtqkX9PMX8f45aFjSu3ASO8oKk5q1hK7ch3NFrBM
	 rkvO4X0B9h0NyAqAAR6DNA+nh1dFq21GFc3HgucDOVmv7yfLOR6niDSHgoV8+goR/D
	 gxn8DJRbsrSTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBDFC982DF
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987263369.11029.15724438510271134201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e19a6a0ebb9fe81b1e3a2db70ff9e9c2c7ebe736c76b3cf38e50cd2d977cf7
Date: Sun, 20 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789872633
