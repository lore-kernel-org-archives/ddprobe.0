Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6520459D601
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788892234; cv=none; b=sbJevkP3AHQwYZ7syom18cBQuLH7liXV3YhnWXOFTTxuorsy48qm2bWEzlECm2gMlT8/NYZT0PdNgaNCd3kMoNNMUpT25vu/OmvqpKMu/oTiIb85kIb+6j9r1mQ2iMnuUJND6rmqnd/ZlSu28/13ZFwCAKqm15q/kMSqYyFLBrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788892234; c=relaxed/simple;
	bh=7PNiAdWhG4leNbV6oDnnuoDV9eCtjQ4Lv8qNR+s5Dic=;
	h=To:Subject:From:Message-Id:Date; b=MOM4fwsaOQsTf8srydPPodzclb/35nMwEUVMVepfJWGh9UDT1yNtC0WosVIT7lOnVrDBt4VEKSvKPkrkIV9B+ZDEhYCpKOoUeL69Zz7z1a6u8tBhWogGGy9Cm4MnWpjEkcdcme6VQRlzw95iBjgs0kAsUnXg2WARkJlwJcIh85I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tvk5+xsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tvk5+xsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA04C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788892233;
	bh=7PNiAdWhG4leNbV6oDnnuoDV9eCtjQ4Lv8qNR+s5Dic=;
	h=To:Subject:From:Date:From;
	b=Tvk5+xsXhW/wXV1F0mDrempwOy9LEoo38YDEX0sFUe9AY5Am5Uw/GUB3RYtrjYF57
	 B0/2zaZFG3UZD5GPNf6c0/CFjefq9KfmaZgkNzVx0eVIrbalD1R8JXKH+DLAjog2Jh
	 z2m7E9BT14blXzJWMHHmidDM9odnYeXqeiZ9PUQBiD3bwGQj3FGSN1tDJZ1GNq9k2p
	 4u1sViD038ZJtY5LT9B7ZNv0WU1l1RVWk60sSmkzdS3fzc3kI+XUAllytyivzeaLVb
	 QUSpFtU4YSCPCdIyYdM2KS62xQqHG+mwfKcCh1fu2PTqWFMfvhAesh6I8R/tfdSvcf
	 SBOKRV/EIT8BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E7CC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889223371.4742.4798277497932571124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00416baf44422d59f1eda76d286ca68af5c42cf58bb62e507a4bce8f0023687b
Date: Tue, 08 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788892233
