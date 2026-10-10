Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BCE533D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791645634; cv=none; b=R8cqJpY/3PWmnLyhJFY10XBrZcs8GMpH7Lt6fAuepCyZ0Rrvnqeji+3bayAWsEtCCaT7MAP19H8E5vSECz+JxNFaV9RuknYT8ouIbbqs5OjFFDkvYMpKjDp4tvH+JF/8Zu7NAJF7kNcPZx9n/N6wl8ZKpu/sSPI9kKsyp4TUvKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791645634; c=relaxed/simple;
	bh=h9F1nvI68POwHZYstPPtkfaazzv9FGc/uKSZ0vkcN7s=;
	h=To:Subject:From:Message-Id:Date; b=bYdmy1i0YibGUeiFf0pvTqmApS1i3YK3XaEOVJPr4RVFwomTF/DYtb0ap4X160/8RdamuzGP2/nZxc6Ol1Y3MMmW/WADMwmK6BNf+I+4wbvizGNOznX03jkXJlLwviGXuDsm6MDGYFEGqzwDKCtS0oIkVzjhGPfW3YqVwI5n/bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcGID/Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcGID/Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE79DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791645633;
	bh=h9F1nvI68POwHZYstPPtkfaazzv9FGc/uKSZ0vkcN7s=;
	h=To:Subject:From:Date:From;
	b=UcGID/Y8wWEsto68MzREcYt+AcYoToowYJFVWss/NZ2VLmPIvbdnhJ/504sMGBSuD
	 1AfSJ71aBJDGjjduX8VaQN6A73IQ8pmGOiUBAEdAhLLhI0ilJKMDJR5NOg7aFcKv8T
	 ykFwbY+161YWk0WuEqMG5s3lzJeyQTx4cpXR9sZMxPGE77irfFFfXcJaSEYFK4F+HX
	 xhgcGQoYhQr26TxpAYaM6hH5XzBmRrSFxAqItIEM/0uvIlW8LMUNx5X0MoNENBWU+N
	 zV+bpFaJYud439alm8T0qU58r3C/ykqVe13S3F+rSNwENxM48RXX7MNFZv3fwN1f1+
	 1HeMRdOrKVKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0ADCA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164563368.17418.14387543854369141563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbaef47fe3f839c9fe8d9b95476c183c67c2767118984efcdcfa563bb79cd7aa
Date: Sat, 10 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791645633
