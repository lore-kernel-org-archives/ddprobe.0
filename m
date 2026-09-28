Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445A0395ACC
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790620834; cv=none; b=YHSIlE1IRM459ATCtEFQaKNW4YLScA0/W7wzSLdRtGEirxUy6urhs2qf/m9A/xkYO28mAycUT65iDA/HC45iduVMLmBkhbveWQZUTldas0F4R+S81vTaR064sATHFRDcTxrZs7o5oEdA1pTyWD8bdej+6E+fceachis9lBCiw5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790620834; c=relaxed/simple;
	bh=W7fyl1iKRvdboor2Xq5ohQ8LutiqlL4tOP5emcRBAnQ=;
	h=To:Subject:From:Message-Id:Date; b=ZT0Syumhn70uTyYq9kJA8+An6mVKm/12JkaCMRfQ7MpWSuKusVNc2CsCen2x4rToJoseFbKKssS60BUI0F/ASoqpdQeUfvdiyjA97IZjymqTjbHgRj69wb7ZemkUqWNxhJXEROj5nPf6/jM4YrsDUIr/NLfDsWHv2FKHHEHLtgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OspsurRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OspsurRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D83C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790620833;
	bh=W7fyl1iKRvdboor2Xq5ohQ8LutiqlL4tOP5emcRBAnQ=;
	h=To:Subject:From:Date:From;
	b=OspsurRbHM1VZIbyP+NBo62YfRCy1yzyvL34+Ig/YlLKniC8ShugtWEPGRt547AND
	 b5UJ+TpeUPAObmV4xdfrOo9YyNzbkHxFOke+u6iXuuc46hoXpdrkfUJefsdeEiCYA1
	 UEEeaThIuZxyjOk1WHjX3IjI1WW8WHSaxf38fKlmkETe6/thSHcodytW4JihSrfBV+
	 R4W2fBi9s0PGyIkOaDeVCv0qHC3rytZy8cw7o1AkF2H+n0JVDSGx9uapKVZyYBr1/m
	 42zcvxLwwPpHZOl8c5uJUeo/PW2jhkHnuv4/DEWxhDc59UUkOtNIG9WmCY2xtLMy8B
	 BaV8LnXvHuaLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAF9CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062083370.17295.11817049683740684764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37ddeaa98548c8affc059979657e923c7026d833e3b45ea14c0df692a977770
Date: Mon, 28 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790620833
