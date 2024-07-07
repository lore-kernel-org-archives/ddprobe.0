Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D735AD53
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720347383; cv=none; b=T91U2RX+YTSyMDrStxu7WN8qRueGkfa+LRxcN54a4bZL3CzjBXiAxVi9z1FhSu4BhSzq5BkAa20jOCWk1z6zDpX5DtadwHLFK5wPlPVu1BNM1yR+XL5G95vL2lS2SZQGb9M5gFqBAC7FjfBus4zeLfFkoGODSy/BU5+YSorgJ2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720347383; c=relaxed/simple;
	bh=pvQ9UGrp9ya6sW81+90wsbuINR7p7FjC7Z2PCXr4SyM=;
	h=To:Subject:From:Message-Id:Date; b=TYyzlYrkLQPXodImjWQ4AJWglExSVFKulvpID1lk7MbU9ZFmbnOT7FpJskihTeegR5PcHthLfHQvXFLrafdG6ZSEkPbDJ8LgusM3VggrqNBcwACht52V07IFtGEAUkEIjX2JWwkKOGgmaPfWFI+8yRykJ0glJEW5U+gQHkOl36c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU2w/CcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU2w/CcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E076BC4AF0A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720347382;
	bh=pvQ9UGrp9ya6sW81+90wsbuINR7p7FjC7Z2PCXr4SyM=;
	h=To:Subject:From:Date:From;
	b=nU2w/CcVpfGnTmlFWpLhBHEh8tIQbrWaT6cPvqm73NP46O/Kgzgc9TNNUjJ7WTheO
	 8XBBm347Si9WQrECv0sQi9eSto7I5Lm1AnZ6MBx4DmsogIbCTBVqR8YjuCztF2d3PU
	 JYEliUAASS1PjzANubUrLenJnCL53QDq5uMr75/fqoHpUwFPk+LCE67qRBoYgCkHJW
	 p7l6TsYFiBwMTmGA8F1iZSkP6mN23/Dbo0JsdkCWhrSotAtz9SFWHVrbf+zEZ+0+bi
	 iq7Uh0GrUA5eQt7sxzzj/o/9sb4MX+ZCTo8R5etFrFoN3FC3vMH9qwE0rYLvp6tPnM
	 MNVXsJ+zIuT4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AD3C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034738279.5231.11508310098418404454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6969551d9427488f1b5dd58d36aa85cb36b76d90cfab843a7e27ae18a1dc27c
Date: Sun, 07 Jul 2024 10:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720347382
