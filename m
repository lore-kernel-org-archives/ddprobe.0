Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45E5155325
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731148553; cv=none; b=gVcgWQB0uUFW/P7IEzxF6iwVmIFBZDMvhpTRAYDRImhQ6E4w46INSTgxIjghxsYsb0MR4cXVeTKRodBZuwJA4kq8Syb6FyzdND4fyqy6DLwfwYlcq7uO0EPOs/IFcQWcICSGCLLh14I9LtKvNxloyddBuofBBZusLXjUIvYTz0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731148553; c=relaxed/simple;
	bh=lC1gLcAlp36bUGZ3ym3JJKmFNpUL5PYXG+M+IhhUoto=;
	h=To:Subject:From:Message-Id:Date; b=aJVEw8qL438tzh5cVQv7Aqh15Z7UfN3GvAbWcDGnJWM9LGMTh+u88T4/KmxKfHBhCljx2UUQZkzyZdVOhj+wipE6UTx1hzjLOU1KtCPZ+qYPh4+Fa1imCz/n5coXei5s7MUOE6PioZhEXzXXkPjyzYSnmH8VOBtjGhVnWtf0/AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kvyu4YmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kvyu4YmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52EFC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731148553;
	bh=lC1gLcAlp36bUGZ3ym3JJKmFNpUL5PYXG+M+IhhUoto=;
	h=To:Subject:From:Date:From;
	b=Kvyu4YmO4R3nbwt1ODIosOMU9wYYJE0Ey659wDKBlOBV7bkeQ350c50GPccXN4MPv
	 gz/klybxALoaHEBfO9gJiJnzfdV8dA6wR/d9Y/4LJyZyJEyuSIHAUlmFsSzfffETZo
	 QmpDyAwvlripmqomMi5PN8oOcT7hlufUHX0Reqx/lBhtE5eUL+VnEPVs3SLnpfGvsQ
	 NlPKrV2HeSnGRIO231dgaQmZFtuj5CkII7vqI+i7qBtw87TJQBOi+52A0WYT9fg2ZQ
	 xNZvcLbPEuviPEBqpeMXY4Itao3niKEw6c3ORT6igV/m0SvMWSPPUBcWj1OdVAwhx3
	 9gSdT6HlZ+FqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABDD5E364
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173114855360.30499.11934163053263578863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fdcfa2cd7acbfe269342da1cf976cea8ff33719d174f8760a7394424802306
Date: Sat, 09 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731148553
