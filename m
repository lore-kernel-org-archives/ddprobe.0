Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2851E98FB
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744292394; cv=none; b=EJsUd92pcJmYogUufWJnnnCmGrb2wnIgzH1axYh3WA45Xepzog7UaDQs1+OuXR3gvvNS4Tq8b8J6JiNrWAgjl8oOnTvS+dgppFvh2CekPND1tYmek975nWRm4nK2q6CVlPZpKQWSdd3CGv++EOxIrjPACp+H2PAT/HfxB+IinUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744292394; c=relaxed/simple;
	bh=j7/QL6OaFmwGdXwucVVP1JpInQzguIOBRaknbg8g+dI=;
	h=To:Subject:From:Message-Id:Date; b=bnGUiH5VWym1O3OEdpY2Oy2FhNmsqXyyYABQPaBPW8kk2wQ8g4Hh+8aZ6M+5JPLwC0U9ESFJ5RZ+Y7zRfFBIksZ70eRdrRXtAT0R2TOrJeRv4FxLCbF1PiroHB3oAISLPXEnHlFtdmzmMzAv6XweILmo+h5pVtSApR5MgZuTH9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODZA/7dc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODZA/7dc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744292393;
	bh=j7/QL6OaFmwGdXwucVVP1JpInQzguIOBRaknbg8g+dI=;
	h=To:Subject:From:Date:From;
	b=ODZA/7dcU+52839MLwsl5HF7jz0m4+SaEsD7rswR0c31gIdkM9saZb5SDrWYWKpuc
	 /zW3d0oO2pu1C0pjvuaqIHaMZh8zZfViESsvfWcHGBiXyKXnwtpby9726YFXYSkrz2
	 iEQmlK/mqZMr8jrUXKV64Xtt40MfNBZJMZgN5tFJ8aut5e3v1cQXJyQANhH1BXToNt
	 HGPbRfrnfu/8MyBUj3k5BetakmbjeCAvWKX2A5xMBmoRGFD0zuUadwJ1qJwX8TwNRT
	 KJVSko7IiZlVEKuDHd+aymmuBCF1k8xnOJ9byBKlV2B61YukkQVRah77a3B2mDNQeC
	 TkJW6o5XneR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91486C369A8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429239358.19827.17668121221787882278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84d2a7f454dab457dc7e7fc8b40cd145f41c96d533be23859330601d42bb411
Date: Thu, 10 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744292393
