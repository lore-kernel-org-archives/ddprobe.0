Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403A02904
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746332994; cv=none; b=E8jIG3MhJXGpM0ZlMvTUYd8/X1cutEnLzIUmipvOo2xzQ7EQ9nDalvK9XrfUYhXQpFVdPNTnKcZxn3D73H3LnysojylN0lLOAKEN3MRqvCddXJ/xcfpHywrSTU7kMU3EtU5OJ2w3h0DHaLanhlJWfl3WWfQqeWoQ68KnbHIbIpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746332994; c=relaxed/simple;
	bh=NG6ceTRCcIwCdwrgVSZA9Z4yfem9lW7SB6ddONLNGac=;
	h=To:Subject:From:Message-Id:Date; b=sXmoTCa6mAUmT1DK/bVIi4AxVq0e6W62IjQfS06uQ9Gzy3fHqdiAOvvmv1/CqaiLFsZMgAGj2TMY0OeyVuNsiTvj7v6wBlPmHjAAv1syI4/lNIL6RXRFUS8otJ8aygzzEnHhQQCDGG9mDVDnNHCp1OS9aNKmIfUg8OKo1kmZ4Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa1o3Xsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa1o3Xsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CEAC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746332993;
	bh=NG6ceTRCcIwCdwrgVSZA9Z4yfem9lW7SB6ddONLNGac=;
	h=To:Subject:From:Date:From;
	b=Xa1o3XsxLgmbDRO7ly7mh18+h6gaWnzRLr9ejOonxgdqOPQffGMQftpGc6elHs7zH
	 mxdRBpMexDEpCPW9xaWePFL+tWMZjAgkjiImeNl/EJDT4yCbT6JLGyWSWk9loOpE/+
	 qhRyhOeGXD61bse4QC9WtumqBSPyO3sdcc+Dko6WKO4cK4uDGz4gY9v4pDg46lRNKD
	 Vc4D7Husz4q8ZG6IOmhwfe+WgRY4lJBgVk+5daeZRUby8Y4AqLoKatAca7Elq5887o
	 N/+tX3Nr1AJQhZj6B3sGSuvXh1cQQnEAJu3aeTxyxgNVNeXKiJK/qtGOdatDZZYqJ4
	 S2As1QjoHaS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FBC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633299358.2614.770626991738534035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484b8b28a44dff89c8c57f5f79a4739a1fb1441b370d7f47439e57410aebb471
Date: Sun, 04 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746332993
