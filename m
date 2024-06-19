Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A21433B9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718831963; cv=none; b=k4V0r8yHAcsB80IYE5qwMRCT1OiqKXo8xR/+t6O6DFjhM5URrBqAWYxCPTgQO/AsyN3PvY9nPWHHmkJVQ0Sv1Z/+9l9rTB8nHEuskSZ24tJVXNOrijWHtIsuPIiaI2ak+p3Fhhd7Paa972/J/qkG9K6IYYyJyHOTHy+4yooYC+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718831963; c=relaxed/simple;
	bh=CFqm2gVK9BGNq+akb3pINzaoFMRlYB8oi0aoV55D1CQ=;
	h=To:Subject:From:Message-Id:Date; b=kGt0rh56IoE2qTis3DL7NBlNhSFDFTMFj37l2+f+jsuiZiTfNir/F2q3ejJzcf1EXa8RPeFXvy3Ebg4q2HsIuSWkloJyhK5DDLaL4zPiFPjWg+IZmaGXx59tv1JD//OhXM8UHxSKpt3g9EWQGbSxGcKXdZ1Ig4DAzpH40bK5GHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pArFC4ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pArFC4ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2755C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718831962;
	bh=CFqm2gVK9BGNq+akb3pINzaoFMRlYB8oi0aoV55D1CQ=;
	h=To:Subject:From:Date:From;
	b=pArFC4ms7+wDayX+Oti+SHzh/S3G0RwmqMId3ojUy16dgDlW8C0cptms5vZr3BLa0
	 L1F1SZ2E1ZIX4TTRwQB8qNrkXNIo2OoOS9wrgh8FCubRNykeJd386rDKttulSEaqO0
	 prBwYxIbocTZ7rYW9rfKOe96SuI2YwJgVgl7MtUDb0YA4U07hikXezgHADmMfBefuw
	 95jor0QLgoC1ysdVa2k+KEZKD1v4PKKkOkkwa+gyEcLP9ldpBKp1po1AV6pLyFv4N7
	 gzTNEpu/Vu3Cjha+WIDfJHFlLTLfSESEmo2BdGJWolQXqrpGAatpTioaS7D1aq16Mf
	 B6kD//HI/KP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E72C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883196279.11133.12388143446458129681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a388382f67d4a3b93c0ab4328b882b35253d54dfc42625005c685cc97d9649b
Date: Wed, 19 Jun 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718831962
