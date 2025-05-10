Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4090A158DAC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746845994; cv=none; b=W7ivRCgghOkXo0ftTrab+D5q1sF74FCJ5bqZ5KnGcLIVHxN2GRZa0pD8BgTiZ3kMngumuN62QTyuUM04VkZn83UNV/lY30gyMHk70ruy31KKeXD9I37wHlbxbIAfVqcV9qEH6yp2eJ8j6nUgFwrZsf8X4SwnWN5YNyvAMzprjGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746845994; c=relaxed/simple;
	bh=CXtPQjRW88gZipy/kJo9sgX0VDrEs0wjSl3x/C13BDM=;
	h=To:Subject:From:Message-Id:Date; b=AYsYYbMnRDrFDR25gLyXyAWa4mgsyDoHLK2A0X+nmfgYMaRNJIntzmdVMIAp3R5rpZ9hZ8Dh7Dq+2qJl/42jhplSADz2XGjCZBI2nx0eIoswAwh0XaFzlQJBZCzlPpFAyfIkHp5UhiCnGuwz5x0TQTH0Xe5qDTbm3vfoPAfb1Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0m9lK+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0m9lK+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB83CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746845993;
	bh=CXtPQjRW88gZipy/kJo9sgX0VDrEs0wjSl3x/C13BDM=;
	h=To:Subject:From:Date:From;
	b=J0m9lK+Y3wIU9xoVq+4tPcHf5u3epUo2+THWXUzy6MQ79aMMGT/kUxmwWRtC3mRSb
	 qIymJ4BMeAJYi9hXjmGibiK/qK4ALJp8WIYQSdoW8I/e7FMoPYvhUNrOL2CyG8akhh
	 LzkT2GuX/iZBYZrs2GpJ8ZxLs26zeux1Bg7y9xTmQqHKGc90nUtWMg09J9DHVrDZhd
	 WSPFd2cgs7y0ksVYdJN4OD4scwbxoJHTRGUkcmRauvzKV7a7m+jg6tDBV98H0YAMtH
	 qNobZyb3uefsJ8z2C3EA/lNBwJ65jiBgut/FcnfaI+LTJ+qhol5BHwm3Cz9OrbcalY
	 wJMlyIC8UGhig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94054C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684599358.8954.7838371833809563589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763d0b495842ab9b0aff1dcc8d44eea43b65612f43531f66beb2b99ec2988d8f
Date: Sat, 10 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746845993
