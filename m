Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE50E571
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735115154; cv=none; b=u28XZawdWWe6f3+4AFgOO7FMv3VrjlAV/6vN2LHPiM/+ylb1fE/axxSsKguBlOQkLAbgTt8laDYFebyOxDGz/VMx8G5Cu6D+E7m/WcUjZNZVBaH4WqTlkjpTnWUprvFlI4rthbGRdoYzbNOwfbUtip8zAJyVEytlzAYTqe6PJ4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735115154; c=relaxed/simple;
	bh=3/y+y/J3M8cbFOA3PEUhSXDXc1Jb6tAH0p6a/quLcvU=;
	h=To:Subject:From:Message-Id:Date; b=fZjDzHNmHbOerUJP2TFYTLHAP/7WpRApR2+gW2x2tTfP6FaD9e2+mPrrc1ijvfuEU20UeV4zwYBfqhQYSXFoJ17IXTz9UXGcnySu+sm0e6wxWuOmgB5Q5ND/qfGnvT5maHkn/skK+8kaYqs0J9vsp/7KeNChuRx+DRXdX/xksm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfYYQwj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfYYQwj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD55C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735115153;
	bh=3/y+y/J3M8cbFOA3PEUhSXDXc1Jb6tAH0p6a/quLcvU=;
	h=To:Subject:From:Date:From;
	b=VfYYQwj210ltmVueGWdyxv7egOjk61VY9+84+Ie0vcJAONAn1lkdGd21c8Eh5oUXh
	 5ucY1cdbqul9PXGxGmOSYmnacIiRfXR9/pSrP55NEf12gSUdmCXoVcsV/93zac506+
	 cHQnkXXKqg6Rgy2wn3B8XEZCUuUCkRUb+Fn3L3ukxqaQqnE24Cyxl6Fn/lzLfXXU6P
	 zfD0X1wktXOKdWabB8AbmAto1kNe0WafQaj8EYOpO/77oc0DncWCqu/OVDlduk7OpJ
	 AdPib2WtTcaHiBZ7MBZ4tsmjQJaf8Vcsw9IlKm8rPpdvDSKTBK4ydaWlBW4OYa5h0I
	 ARNki0TAe1Y1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DB8E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173511515363.31227.7290355765500588306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74da56b84ace3f656d9e661360d6cb8af9636dd91f36951d4303f482aca72bcf
Date: Wed, 25 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735115153
