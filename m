Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C727A13A
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735163754; cv=none; b=BvkF0FhUFiqqYbrmBDXmUaGMorlJoO5o2BlRTTd5X73g8em6H5CcF4ISd3AhTx6oYQgX3XGH9Lh8UODt04dDjxDd1YbCI8Wm6t+53wToWzMsrleA/TM2CCOal+d2AOY+pNtP+3DjvP9bTiqRKvht7pT5U8EnE2rtHjVrJkKjQkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735163754; c=relaxed/simple;
	bh=1HccR6RArD7iv7VL9CepASLwwM50qNydCd+pHnLuqKQ=;
	h=To:Subject:From:Message-Id:Date; b=afDutlREn6CzZhlhMOd4vTk5HcW1jS7piny5eavggeb8TIFqmPxfhWVkxrSCzVE7dLa6OjVn2JfsHQ2GPLG51j4VBOILluIFa7Qz1/cKh3QrX/R8h7FC1D+aK+v6z3VS07zc95AWDKGSplBB7kAxzU8A/jH0ptv2rZ9UlHXAYp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kbx9Zmu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kbx9Zmu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21CDC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735163753;
	bh=1HccR6RArD7iv7VL9CepASLwwM50qNydCd+pHnLuqKQ=;
	h=To:Subject:From:Date:From;
	b=Kbx9Zmu/zKdOw6k2yRxRTUoT4bf3tS2VgQcOILNe8/MnmrXfVYgMZizKmf6VL66Sd
	 LdkHODs6Egqy3rry1TPi9t5d5YlDngPhdEDuDIPcKblgzkUKtCHZP0z0POYhyFOGrP
	 wGslsC5V02GsNpiX9mf/1uzAPvNv+e1TgYbni9dmagVHdD3vzIHwhVg0Nz1+5IFD6V
	 CttnBId4ubWVmPm9NDtrWJ0Z954p78jxZqLzGyN1paUzNIUYsIWgt3KHUZ1z6P3mTp
	 liRH2XlhyY2XO+TPt0jzjudFlueVdYyVcO1m+nPA4TxCtbxsMink32z/Aw9F/wHYZi
	 e/nFo968MEjJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF8CE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173516375361.26258.14937376922196348306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb9d3ce63bb777d484123641b90e15efed09a2946f2d685e0cc1ec5df521755
Date: Wed, 25 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735163753
