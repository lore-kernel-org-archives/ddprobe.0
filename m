Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0840724A044
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772954094; cv=none; b=pQBuXI5E+0seeAttC6nw+BReCUlARXYRcRsIlhXjJ5ZS5zTI47oFd4LPycVdutwVrbhs4qY8Bd7+r7Asj87bIXSKCuTDyQggR8qdgV7r9E3KEXJLtaPxJnWYttAeqn1jHgClydUUzt/LzbsW6FqJ/haLBfvIK3uBuM1feA4bQN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772954094; c=relaxed/simple;
	bh=cC0yO7fbfWtfsE86i/+StMePxfeOJzanBEcyvAo59Bk=;
	h=To:Subject:From:Message-Id:Date; b=pl94wnJvpEBuOYvNijYxEzH3ZwpRmd/qqryu0UFDnbM0dNgIGNf66J1IkSfBkRw8hQr/agVoYkEgMD9F5C+qzfqUyguT4LhXo3cyNgE2qjX3USWJmiYd9iD7sbxUmRk8dwcUX++J29yuwioJgm9j3QpztwwiU9w6sgdghAf7KZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJPnjeHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJPnjeHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F5FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772954093;
	bh=cC0yO7fbfWtfsE86i/+StMePxfeOJzanBEcyvAo59Bk=;
	h=To:Subject:From:Date:From;
	b=DJPnjeHIhGGVPhIbsT5faCoZMxKAHki9vFORWRyHYCKuiTILP2vH78NOOPiCTav+s
	 tZj4Toh7nxHYkBGSfqxaMsngpS+gSrw0b4HMC3G7F29/1IDRwlnwNp/zjHEMQGNjdf
	 6llbI6KPf/SRUq2JL08gmSvtxiKXjQi6jPUtX+i9giULrpheN09Ou9alObxLp3bYyT
	 +xcn6O3rfG0tzVBfxzX5vjyGrzkNeeGFkVpnMVMGceeXb2qckfEBUuiANZZiRcjl3K
	 WDX9BrYbPlD11Tsfh3VAs2hIndjcX1i0TL3kmcdoUPTUc9D+V/h37sfow9W62uoxp/
	 EYxb0sw7/cAdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93079F55132
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295409358.14096.16692566505409954975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374da5b64af38724e2d94f6a61fd0c81bf17f980e8ee57d32f917844fe0a4e15
Date: Sun, 08 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772954093
