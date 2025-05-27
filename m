Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401993C30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748342997; cv=none; b=MoT+meGOElXPDg+A1mGhRWdEGX+OmemqdraLAKR4lVCO2TSO+afMsD4JNa/UDif075TKDgDBK1oovplylr8ODpvaLBeoln5QLUQ10h75OWXxqlmqWh7x8VPfY3w46yYfpjmHeMiJVvhQQgXmsGfatTMyguTTAJ9PB9nUPBTgaSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748342997; c=relaxed/simple;
	bh=7s20zCZ2zzHp885J5rbTpaHSuUwY6aBb+QlGtaYp5OA=;
	h=To:Subject:From:Message-Id:Date; b=HNyrvFIwnG6u7HXt0NEn6e7Hkak4WS+94H6jFHngGt+rWEFOAMSUACVdB6nrETejyav+GOjrvcHTGkfKxyJpiwiIdeGU5X5rusqRB5Z3je+UW8MkIbJ2g42nmLX5EfplG3f3wTKRw1OZ/vKZjWlUqpv8ftaNy+BRzvP4FJZpg1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/HUc7SO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/HUc7SO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C0C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748342993;
	bh=7s20zCZ2zzHp885J5rbTpaHSuUwY6aBb+QlGtaYp5OA=;
	h=To:Subject:From:Date:From;
	b=B/HUc7SOPqgMfVzN5PNZVninL/ZxyFVgTAkzIXbtAT8RZT60gK0oUy0Cs1+/248ez
	 AIixIXK+vAW7BOs6eO1ijsjVvtU2TEtR1cMxlAynMypIeFSM1l6J74g3yxSQcVrzQ+
	 R/+JmdvgnkVDwZSGsItjmoktjCRgp5vsuGGviUQDcDk8gYpbwYht6p0uB4fQ5sG8IQ
	 5iHK/4KGmVJ/G+zDkF/WkzYCJDfAjYZwUvxD/ehvMyzxOsQRGyPGMmXOr1Vz4l/oGT
	 Z236fgc2fWOUrkZ3XDQisnMoT4tDvwyQ+SP2USERyjh4/keUyuDLuwAGsNFjbMHSDz
	 QEn03T1TaewiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90070C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834299358.15334.5177124790206410322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbb74c6c92329b1f3107a903287cad2439ead0824069f39b7e5e3fb152991f2
Date: Tue, 27 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748342993
