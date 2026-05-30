Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B442E7F3E
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780154014; cv=none; b=ohp7+96KttFoEsVsUkgsvMsWuaruuZz4ohcId/nLAT4ox30RF6oj77XFq+uATyIBYuoFHjOBTL/EMEZnzl1PFYrRGyGRPWn1cQ8kpUn8k9HNNeaK6FJRfadcWy/di6NTh5xdFbGLo807AN0YNT/jcUehl71hvRUHyZKIfmnkuvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780154014; c=relaxed/simple;
	bh=Ck2pvYNYcLMMcL+4W00m6fYgYMJu9nY9RnFiKwzvQoo=;
	h=To:Subject:From:Message-Id:Date; b=a012Cnk51b6TSaA0KXLe6MtAAtEKEEydWTICstb8JaM5cELElFvBc1ODtDY7mQkFj1++1pyxLngLLflRwzz2FsUOOsRsco/PRbViXDbARyYmRzSHAeJvw6zVRmPbfajvJ8LYSzZ65BP1aYo2LgSgQPC7E9pK2D9wd26FbwmBxwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTdpu71N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTdpu71N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB0DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780154013;
	bh=Ck2pvYNYcLMMcL+4W00m6fYgYMJu9nY9RnFiKwzvQoo=;
	h=To:Subject:From:Date:From;
	b=BTdpu71NCbPqt3W6+SOF7g4sIYmDFaC2CqDDR/pM1bEgw805LQ4FQNvi93p6G4erp
	 xZrt3kTO2QTZS8OViBVfeSwg/0m7ogtG6hcmZxT3OZhj7OdUZYuHA1AeMOOIyxsEkD
	 FEnRAPGH7B2K3xVgCBfvtsIm3bhtOERVC6k4G351FIhbKOGsagkUY/JGc9z2M7L+vq
	 PZCq8owY91/vGVPY4N/qGwrP2rTAjOGvIjkZphlGeyxNrpUXLQ0zl8qOa/qMm4g8x3
	 //c00zIuL/CREYd3FWs/mvu8g/4VnAfLV6T2Sk6Q9TPKvDc3XayfSdtNgGaPl7Mg4w
	 1KmpZMbx2T9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC134CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015401367.2171.15214939998928399324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818b1d7e5643624fb049f70731fe9bc879d24addf48f6d4f63dc447a85882edc
Date: Sat, 30 May 2026 15:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780154013
