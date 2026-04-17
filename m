Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1209E1F131A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776433054; cv=none; b=AqDnGxK7ZjUM9B6ziPcSQcxgZr7rG/JAut3WWE0lIVlscE5AqwupCTdEeXfauLkzH8oT0QcOnr6sKOzQ4jVw52yOm211ks6oP7CPQrBOgGS0YR/zKQ0AVBUgDCb+Kq1i9RKN61EQVKaKMoJlsEkZkvzfm2RF17nEV2xNTKOoxe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776433054; c=relaxed/simple;
	bh=lgRwE7HUPEZyOYYYXDveFXO2mLg7WJjnrLdX2w3GAjA=;
	h=To:Subject:From:Message-Id:Date; b=RqTFf/krDIWjkkD1dlGaFleLB3H8TwZD35NU4C3T1E02FKtk0Ytt+XC9kMM8BjZ/VR9xB8DZLjMTXs5PbVaUrOsFCHFofyVxIDxs/YcDrChjScyc6PqbnneuAhD/yZ8/4iaZxwNGGv/dAbWbecj3T5XX1MQcoU1+QBd42/qqRVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enJvqSdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enJvqSdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B804EC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776433053;
	bh=lgRwE7HUPEZyOYYYXDveFXO2mLg7WJjnrLdX2w3GAjA=;
	h=To:Subject:From:Date:From;
	b=enJvqSdRjTIkyuMKvba93QyP/VRQ2gp7Cx/TaEfUvSyGPn5IW466kqf/LlQkSYxCK
	 7iS12VbV5/Xv5J69zTj5gZ/fM4J+G7++mlTGnjyjsJT1HcGa7UJos75fRPMs6GWk0U
	 sCAaY6tLLmL7Gejd0UK6fNoOv8wFq+E632wb9N6E0o2fmt5wuoEnMUDN2Ry+hJ6pfr
	 Nvrxe/Vvr3qNgwoJXId+NsyNiRTumOgey/wzLoOOY3uFe6P4EdRwxzssssDR/scP1N
	 WZb6N7JLVFeEAcnhY/HSmg/LwW8fJaEwmn7eKMY9PMb/nbPl/nTMBNv8HbHGncZnk0
	 JY8IX7uLIm25A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA647F436A3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643305368.6848.9031393654876951301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b104c9a2676e8f09128615d3ffca1be6bb46165bea6c420fa6510c051f02196
Date: Fri, 17 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776433053
