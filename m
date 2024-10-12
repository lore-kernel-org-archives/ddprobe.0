Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A27C2C6A3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728750354; cv=none; b=m/wsdv/DcSWpT4Ql94CbagLDep/QxlFsKuWqyOKPGFajdVNITL2pQdYFNW9OEtbtuH41gN67PuXswpeobds+o00mNw8uNcOpVeuo3QzkOaKRclJ/cSpOCp3lJngCFsqooJSyPqZTOdwgO5jNwVS6dl/60VReQeAnYk8OVybl4Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728750354; c=relaxed/simple;
	bh=NjpH8lW7ynBda+iGLnDX2TAfNZKtEgGSo+he92Vv+n0=;
	h=To:Subject:From:Message-Id:Date; b=GEclZxV6xpN0LcJEoomiAilhwt3J1oKfRxkHhMv3L59Kk/g5QD92n3o47NeIq+Zq82vX77GIF4Gms6gPpZyFZr1df8yyhnobpzyC/O5L2q0D7MVWHeAyWxop8qivcovYbeHB5W8mkPiAr+0iqrlezDUOPkhSc89rZ6wApG3Uq/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbG4popO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbG4popO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B033DC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728750353;
	bh=NjpH8lW7ynBda+iGLnDX2TAfNZKtEgGSo+he92Vv+n0=;
	h=To:Subject:From:Date:From;
	b=MbG4popOWxwRqRR4iECju6tkg/h/AWEVVuNsEqiI7e8a5eNEegP4suEWJlYIYCCjq
	 NxmtgldBW7u78IXmb36I4bcU3yfLpSCPWB3w9WNnaaFUQ3IWpT8YW4ZgESHnnN+0b2
	 o29Qdf40M9eWqw9FPuVTt1PTt1XZXZDVF6DLlQf2CEdM+redlHpoCleH+7vIV82ruD
	 uzBzm2a8DiBNF86a5EQw0LyQ+9gTfhrsAaXkjHmGVK4u7ZdvDWvI0TI+bVpgpVKq0G
	 /TFNS1JBevmM9B8fqJsZ7nwl+fxPtPY2+845aTd9TFV/vAbdCyp6NONzp4z+/7CThP
	 BaSPdjjnLoZEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9832ECF256C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875035359.1793.17978405743721585955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e33d19a70ad476eb6cc5b3cda19f29d58fa12b3fd703ede17aae9ec9a6e281
Date: Sat, 12 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728750353
