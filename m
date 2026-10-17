Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7472829B795
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792210234; cv=none; b=nL53YXCOuMLMzFIDMTTpXCn7ZaWbCe0QGXg5cubFWj7CTFtTldHIcMiwkYoGb3CsaC7evV4VGf+kFb23dnnAaQfBLL1hKFa9C5G1UBXQ9Nz5XiUZjB+ESSrSzo5kdncySqK/xwuBS79xHtMzF2twQIW+aolAtjp9SWBwQxJozWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792210234; c=relaxed/simple;
	bh=Pyi7bgdRccqvi7cPrvHD5kRyLw/+U8eIjwZz9Kb2bDg=;
	h=To:Subject:From:Message-Id:Date; b=YrYO7lhYeB8BFMPN1DKCykfckV3T2A/TH/RxhfaupEdJUs+nscJoZ9FoM74OWKh4uN5senS0l3eD6jDbqitcC0hHbJc4+v33uIZqV5kHAWGaSMD1aioVzMIlYbi/wq2dtFxKNR3WHM8w9AGdm1nviSZlg3PYk9Fy7m4rMnvpAtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6Pj3DdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6Pj3DdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC43C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792210233;
	bh=Pyi7bgdRccqvi7cPrvHD5kRyLw/+U8eIjwZz9Kb2bDg=;
	h=To:Subject:From:Date:From;
	b=o6Pj3DdFhhSVJ8jJo/eI45vhi3mNeAUj4qDpEC13DfAdT6b+w/95gxONXBc1p/qAx
	 mfe3XfX5D8omWGBdqCfr+V0s/EoN25de3+WafqnNdwGL+0XW56BJ08TGitEmmW35jI
	 TTm5IYXMWLhPEp+CXcrVlT4+PEwz62eD+OMsBggmU22nlG34yLDe3RwR12C/g+SIFr
	 +5MtQlvnez4dtZL0IIuokhvLEKiQ5oXGI3hNYuA87cfe6ZuKiJQYYgGqFgnrM+oPow
	 6CYHUAMiVDfyN9JTHDdYSlymYaJ5kbJVvQM5RMGOhZAJWqE81Qt4g/6jKtoZen3Ecu
	 9sb20m1G6J06Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FA9CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221023372.32085.1267746503175540381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3394b24f0909421e0eca36a4993b16764593c8e86154e061f51d10b6ebf54e
Date: Sat, 17 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792210233
