Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B9F6AD3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745788194; cv=none; b=upfGOPlwKCDLDwKwY1/SiUzx4aMouKgjSloUxGivHMWr/CFxpLglfVPJeTeyndjN7vQRWepjqhPWcDCcu0JwhDUMblv3wa8CJKBQJGOWYVVOKADZNVKjWvM+ORVZz7matIpS92xWwDh+gccwdraMLcG5ML01KZKBtUT6AwQEbFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745788194; c=relaxed/simple;
	bh=xntCAuAi9NoxZ5OCVKGB9yXi2Rmcf1m2cOmZiXLaboQ=;
	h=To:Subject:From:Message-Id:Date; b=N/S0zjbmDz+PHP0SKz4fVMWbm1FTIop1/NXRVQ6gNlwd8Y0bqs+J6tzPoBahr4b0xdCs+fsYTrYTRfKTbKTtjBM/eEyFc/Sty2+97ZAvy+StqBHN/c0/fENWgp3XEDYjV36zTs2pqVRAgI4b2BYiGw7lh87Js7dSjAbWyq84O6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1vafyLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1vafyLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745788193;
	bh=xntCAuAi9NoxZ5OCVKGB9yXi2Rmcf1m2cOmZiXLaboQ=;
	h=To:Subject:From:Date:From;
	b=D1vafyLhEh+8jeXWn2ThgajDfEGLHOCu+j092ntSysT9haIra1oZ+Ow8afBnEeOEW
	 pOfd8GY7twvk+/HYy/WKINI0L/VeJNVsUy4GDIZt/ByhIGbSXDiMiwUWB8EMjVVdby
	 VGfQCshPw3cA+VaF+6+HrQM7AuUWDOuOpnYgg3csZJSxQo6BquDOQ+Pg9+l7oS6OZB
	 NgaFp4fGrhR3kwQPztLDeAEo1WGBZPTGH5P6xweOt/8qIpmwtQDYGeo0KeqDaBht16
	 NnQWrZCLUKrkC/3uz0xLK4EKqC2TEBuMMqiHomQ+rRq1pEC2qluyu68vDfd93GlflR
	 PcqjsNqypkNNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BAEC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578819357.1529.11947548008389280230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e5d8e1bd12bc9212fc20750450297ff9c36a21eee3f565393ca3215f5f4b2d
Date: Sun, 27 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745788193
