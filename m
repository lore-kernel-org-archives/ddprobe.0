Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DBC33F7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737425754; cv=none; b=kr0/1ar2UScb/QaeIoBpAQlmDYdm36bdnOXZDQzqpUJMmv7I+0E6rU4nWzC2kTfkY7Ut/sPx4uT4taoRpxQhGaa/OiiCm6Oomc+Ga8lpEhKNfFz3AcqTiEoHvf5/R6x0XICVg0AWElNQK5U2rb2JFw/HhOtHzuu2UrIBFn5J0FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737425754; c=relaxed/simple;
	bh=73JkxSSlBI75PQrxM4O2XE5MbqqW+sOLePbfpT01TvY=;
	h=To:Subject:From:Message-Id:Date; b=U6JPjZMTEdbtUwPX2RFcqUJr8A9ITmjI6VdyyUWlGsFpNsW4+FOhgXH3io8X5Zzli9Yc1AUvhdSRd8QsUfh/PO+lgNWk8ESnOhJi/AjtSDpflfaeqyeYwiK10+EGQhlPCQ6e3Jj/HnFvnnS9RryljRfdPHtsWCACcuiOgqXKn8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwPXSqih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwPXSqih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8D9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737425753;
	bh=73JkxSSlBI75PQrxM4O2XE5MbqqW+sOLePbfpT01TvY=;
	h=To:Subject:From:Date:From;
	b=TwPXSqihsd7qQw07XHP4koFTSRTV6lzuzp+DQb0Pe/kGi904Zov/lUwlt2TZdKa3M
	 xDzmPWAQZEkbZqltHTE7FuOPXkJZAV9YXOYOlKg1q8vxT9dyimGlSzKi5GDx2Zqsx7
	 nOnQ+ZU0/77CrbOtPWEkTl571C5xBGNyY+F4yRGRFSAvlfmlBQyvuDxIf6u8fsLO/a
	 SgTUpYRPP2/iKdXx1fuimwQ09FWdjc1qXODNlczZ0+xqPhe2KSEFE/nM4aJcBClR/e
	 i87g7mMUbvxzKB8suaspNIYNiyf/DMAsQ3pXSlPVFttiN8Q3upMgF4i9YpPwNchmYz
	 VWjzLrZDGIxZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96080C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742575359.32562.9421547862773447104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62770a63f034a3ad984f39b1cb0d449ef496cafa1fd077fcd6d4a25f6cb2a5f3
Date: Tue, 21 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737425753
