Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2141E5B7A
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755033594; cv=none; b=UYOtK8efEZB3IBpoZJkzSRhThJ68b/BbaQHZ4e4p21ZljCeGx9uY9C0iVETKzSajFWRrCQq65LFqAFZgBNCGnL+hszsvRXIyFX/hLvhOEcmyDIRwEIS+gV45Qv+a6Yix9NurzE9X3aOMKB7amqOT4pbLgPxmtXfDnTHOT4hTTkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755033594; c=relaxed/simple;
	bh=mQHEF/mSiaYpf+WuSvvUz7TyzSNExcrFDQcL6otW6/s=;
	h=To:Subject:From:Message-Id:Date; b=MKYFAWnqKO37Dc/xwdF40O9q8qji67mQDxSqdIToccnNM4kxLyugZHlLc2rwyhsEgbt804S+yWUUz/rclx2h5W6Fle4w1hgakU14gpHPEhLfJQEKTihkDsNCVgd1qWRfwiZNrfPUI2rDhl8buYi3uapxNkR1JpHD4sX6OL7KaiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oa6PYpjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oa6PYpjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AB2C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755033593;
	bh=mQHEF/mSiaYpf+WuSvvUz7TyzSNExcrFDQcL6otW6/s=;
	h=To:Subject:From:Date:From;
	b=oa6PYpjyAq39Y1JB9HKtZ15YAvhCekv4VZaI0x28w3iCm0ZDnnxhTf63sMlB/xBks
	 XswaUjr9LDhk/DRIWdFkXbfqVfA+0aIsx4GRMGndjEU02Hdv3ejH9Ku2ExXOPmLRhz
	 kFBcnVbVuzVSZIGVBCsxWcpDk/giEIhYNInckywCLSbh/aFyYtCw0NSsA8ZscwgdQ3
	 rtFfcC65IqpSyBMCDak/vvoWgon3bwI29lP/el+K6Sv3q3H/i5hJYpElg8zEAJCJlx
	 OiDC6urq7vg8S8HRjtd4h9JN9kA4qEZ4/4vQqDaa/xwABAtoyuIJXuVoqxakFJ+hLa
	 GKBeGh4YhRVdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BFCA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503359357.9864.1830838244470090244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ea2d163aaa9287a6fa3f9c6b538e4d5dba3c0b05d944b296e8b3b71a53ee53
Date: Tue, 12 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755033593
