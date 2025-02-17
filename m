Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35721198E6D
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739776734; cv=none; b=cjyRjWiD+sOJNAjQPqm9vhWjzf9xPj6ZK+0hw9eMNSMjR3buBGE2/RNCuOSikzXtvwWrI3d+ufC1PimCgBDsBJMgBSIEtCfncvX6zJ+QVJAWvEVSsRHdIube9eAoSUfzXZ3G6WDKcC6XW45ca7zaVk4k8VlQ4eVZqIGHap52O/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739776734; c=relaxed/simple;
	bh=t5dCrAbl/BRktPIUQumI8+Gd4G/TatLNIv6ACu7JwLI=;
	h=To:Subject:From:Message-Id:Date; b=cwLWopuaNGfb/MWKwzb5lt5EqazmUSSWDonbOvpkDA+4v6T2J2W/RHdY+ZDg1XdVHeW/OhE2EZNiYCuqb0+1+lMs4615ih+DwqEa7pCBU0ea3EzLEblrln+XN+QW8d91e7Co/pxaN5LsnBrjqVAqsB+G4tKEwPZwNEB2a1EWGEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syOSwqKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syOSwqKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F2C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739776733;
	bh=t5dCrAbl/BRktPIUQumI8+Gd4G/TatLNIv6ACu7JwLI=;
	h=To:Subject:From:Date:From;
	b=syOSwqKafE0STnvSnaq1J1V+UViNwGeCT4/+7FM3uGucj67Wgcfgn5KmFr25wi371
	 8DOOlsJGAnnMARaunxZZ7P2IvcxfwGvb66GN4at3iPjcKmzXIhVy7vne7jm0eaE1yK
	 g4khRYTKoBmvTMpEO1lWahfmCvKvfte4MFCAkPLBb2Dwrg+3yBLnPZLeEQZe155wn5
	 Yhabq/AFHX98a5cINnmKqz1yCyAXCRdeShL0S9oV/eHUxMVtUjkpvbuaJsTR60lefY
	 Kmb7+pibwSkSddYjvv6GQ6dw/sef+s5dThgXjMi0jV9xxzF4ZKOG5xS5mm4sOx5lUE
	 iPdcCrt5cXFjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABDC021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173977673358.29762.1123068224693845198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f226c71c1c4d9346fc5b3996fee241497068dbeb7208cda76283ca717ea8e70a
Date: Mon, 17 Feb 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739776733
