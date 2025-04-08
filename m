Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41837212B2D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744094995; cv=none; b=MPfS6OS+rglv17G0GRC9hKkyPMbmon9EjrsmnQqGv5P3WmLsQBZq/BSW0GJQvvtpynJpcCjWvWSqBrA4Ldgt/z3JkwGMV/zOqD+ZEIO6wPgf1o4675RHwzqdLkHCaysCi4shi8p8s2qhByJGND52sF7OnoQyZHJm5WcMyJibrzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744094995; c=relaxed/simple;
	bh=PpLx9aIe54R6LBdtc5PQkmkYYarsJgsvs2Nvf9tazx8=;
	h=To:Subject:From:Message-Id:Date; b=U3EZt4JFErSc9MFXNCGcYZYFVWbEhRzS7Iw81/laXH7paFehu3LQvaSniITSJ7yHyCmHG1VowwzYkkhM0OLV1WFsxZUzOmtPomFkgFV/YtJq79P3SPgPQ7NUVEiG4OJ55g+nHmyenBFpoSihip4ofKD0IXGU4d/KQxVXDyghGSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QusYGAby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QusYGAby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A729DC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744094993;
	bh=PpLx9aIe54R6LBdtc5PQkmkYYarsJgsvs2Nvf9tazx8=;
	h=To:Subject:From:Date:From;
	b=QusYGAbyRVX0T5Rlj6K9gW5olXYuNgAPcy5zfxicVgSuAHcZFLXXC9Hn+dVg2wpKF
	 8VS2vCi5nLyfgV1IB7LoFz3zJFr9BsA7IkbkLKGfICWcqXyK6G9c/GT9M2vmNEwyJH
	 ZtSQhHV9peZLjjaC4lE+L8QP/EUPhbSMcfgEQjy3Bl5HZsckB2JOSjwpVDUbpXXDzg
	 mP0GHfKnFCrRhm805fMwKhker+ZVGiFfTIO9AlrPBpsOaVCyaNt+WMrnY2U8jWtNC4
	 iepSyUycMJOPI7uV9roGBTAQEy3/Xq6M1B8Wa6VC06PGmsCBlORv73oedef1KI2wyg
	 IS6IM6bY0Mfig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E06C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409499358.29843.11381177000504837567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c77c676dc5c4defc199c15cc406e0c94f13951669e665168d2a2746faa1854
Date: Tue, 08 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744094993
