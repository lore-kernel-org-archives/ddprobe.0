Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E22526A08F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776017854; cv=none; b=oenjVWhnpKlXbodv4b2pduoBwvRx4pUDe73B0xdLwqtLGpPgMhUEXt1XDLha8FCdpNJnMe7PZhZ4kg2G7TvSmOUuMHiyIFjP/MMx3c2MSKubThkjYWIg5eYMof5X0byBAZ40SkrFrqoo6QNPo1mz4uQ0/ZwgnN4LSVoN4ASAInM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776017854; c=relaxed/simple;
	bh=RAqQI2UETm1mTK5HhcEUG+naYfc5XbTOTd+5cddao60=;
	h=To:Subject:From:Message-Id:Date; b=SMfjELwjNPt5thS9YrPE5gPXbxXMbrvYXzjBPshmKB0U6tT6fMDccApcDrW7XL7Qjx2HjqDXDsv4kB8mEpSmHEAalenY2IlgJdHpY+KzDhJ93DIkIp2sFmW/+Fdgp9X5IBFiaFS51sjofimLQ5MZNsSzhT2cIFVGXFsN4Fc+4r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQ/NOHgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQ/NOHgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31DDC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776017853;
	bh=RAqQI2UETm1mTK5HhcEUG+naYfc5XbTOTd+5cddao60=;
	h=To:Subject:From:Date:From;
	b=mQ/NOHgVm6q6Fbo1jUzKxeepqkPOsvmXqVK/I+uONtJol+6UXQYPBmDyI0mhBvBXJ
	 LWD1YV2oXJnosJY4xtXtpMnltMnr93i2wXOOPBEzIrJvis9z6LkF9toxjurfIcQQbV
	 fuTQVM7u2gSr0gbz3N7WefYvbo0G6AXfcXeTNWEP1hIXXsJ5cDgRX+fLzpWJ/sY/yj
	 YyBfRwjD2F+0v+kXFKUw0qLgpIDxsMwax4ZXsk3xpdg6c92eC/AMD6kc/kZ/BDnSez
	 KC3rzSG0I4nq4yETCZUjIkrT5FBx9h13M5a6qzX2IA9sR8OiTQQ1KVsEWiThiAbFXB
	 pqXmx2DKFFr/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0203E937EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601785368.1499.4510408075124334236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a1a7609fca46c20e474e0a557ca991f5612c729dcb8aba8fd2aa1fbb2dcc4d
Date: Sun, 12 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776017853
