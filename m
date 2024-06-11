Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5159316F85B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718090903; cv=none; b=oVQP43m5BRUVYaVRgh0YeK/4nf6kZvCmcTYB5x21AYYgZQdFEUWP0V/T4EpHOYCETat+l3A8ahcPOjSfJ2xJAdYbv9sfv/lE/FsZUSiWYEE9MAdJBXRqROYlv7hMtLU1oSm6SUram+RLKpHXOz/tbs86sRKlIY7V0fAp4YShwqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718090903; c=relaxed/simple;
	bh=WWIH3ySH+e3s8Q7RfoW5ZTAAeBg3+bVYH/kj41U3ex4=;
	h=To:Subject:From:Message-Id:Date; b=kdIqC3leLrcsOYgUE4cDZ/tpmoWZ+l8NlDvl6N1Srjag5qXlzEtITLIJn5QMV6st/Qi+fsBNCXviV/mbaP6sVmb5yqjx79C2adg8e/oepEJdoxLlDCaepSqC+9m6ETdKC+TH6qPrpWWry2Me08onxRvLa7BhxFrDSzT3IX9yejU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbB5PGyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbB5PGyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B19C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718090902;
	bh=WWIH3ySH+e3s8Q7RfoW5ZTAAeBg3+bVYH/kj41U3ex4=;
	h=To:Subject:From:Date:From;
	b=NbB5PGyuHNHur4uHmAOETZyDxgfXwXYaczP/JOr/DTeLX5JwQr9xQZkyHw4mffMPf
	 ucHbsiHvH1c+z0QvU4A5t4jNUgNMZ9rQA96E2owDAZ6Hv91+lJlyL8xjPyju1AAvYs
	 q+mVEHfzxmzkTYMhpWbXBlwDnyc+y4OQkz+/nV47OWiegF4/7oRT4WJ012BUgFJYlK
	 qz2xt9JLj88Kj0NWF+4Bdvfd6pCoTYc2xohkAE0ungYkEsC5kr+bGEYZfDEvufD5/o
	 TNGZM/m8QlgVNKKorqP5Br56xGLDfob2nJfyPYGbzUezjiaef5gjndBQksWDSgeJ0T
	 ATq40nL+Lc++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA110C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809090280.15743.14076332731432938349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3601570f1c506f0b3963317a2c774cfd0cba11cb09a175101dac3628c7d92e69
Date: Tue, 11 Jun 2024 07:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718090902
