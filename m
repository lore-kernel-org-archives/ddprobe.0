Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219E5266EF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757161794; cv=none; b=BcrJJ1GiTNjPpucF7FVXK4woeQI2lEt2Sb2i08RQfvLkSW/MXhymnQ+/DHpZ6jLdEh0Cup03nF6TtINUWUA2ABPCqoBQK8SyezW0vYRg5qjdh7RBvgavQophvGNQm4E6Pr1BeNwHTIYn5+kCa7x9oeefV98QOdvoDQIxARNRQAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757161794; c=relaxed/simple;
	bh=gw8sWo6WHlkZfJ/ggrehSy95w63AzLHouDHGtN/USVg=;
	h=To:Subject:From:Message-Id:Date; b=qoybeFJntjEu5A+LBPEfH7bVIGSIYcQXN6DpZLR3UAlu51bADKmrQ7erQoSMkl3JaBasUThZN5tV3qed3PgF6U/o5D0h4o15vQ44NbMrFv4jyvJ1m+XdLKmOIVjbGAX1jobIZ+EI6K3/uavbzcut1fsVVAe39AmLSZkif4d0B3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJU5ruvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJU5ruvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A113FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757161793;
	bh=gw8sWo6WHlkZfJ/ggrehSy95w63AzLHouDHGtN/USVg=;
	h=To:Subject:From:Date:From;
	b=TJU5ruvbap6S/t9UgybQ0s3X4IzSsJ4wzXLL6M/I/hcX3HgE6f8TOasxOKFGhm+UF
	 bAAThM7fMRyNrveTt/ERoL7Qn4q01es2fhet5VnU9jtK1EolYkHtaA6gVZ0LcmdB2/
	 fCsJAaBTPi3jTO7kYq7px4Bg6B4o90W9F3anI4Y4KuuWp/PTYOVcdtow40yDiKNQlB
	 jHpE5p39wH4NFVkU9QfDYIyq2s8INknVhJQeJgdoFn6If6USy1U24SSWc+89aehdGU
	 mHKPEtai/oAjGCdh3fh9h+Gm6tt+tjjaEzQhoElCrcx3FxC1W1ERD/bilL/tEpVG4p
	 xBET+e4mDY3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91141CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716179358.24398.15839700655421959570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81d94be516ff687b63df58c929bf9ed7c611923399072f11a84eda0166c6ace
Date: Sat, 06 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757161793
