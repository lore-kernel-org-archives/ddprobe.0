Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186112C21EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768217634; cv=none; b=ulsL/IwUb8pp/VJWs74zbu71ItYAOM8TN4GbI4C0yWB9vdzM3hpMW3pUkD2nVWoh4qb+dGvhGKO0tVVM5FoLwYbt4Z3xGRxcnfSc5zPl0NXHrl73gYizYDYltvcupVnWM1VM67CWeROaIUEWv5Fy7nmLFMAGGZGvrAZYSKqsU9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768217634; c=relaxed/simple;
	bh=8bYCEMz1vBtHZIMm5VWU4j4rhKZkea2f+v2sjPiB240=;
	h=To:Subject:From:Message-Id:Date; b=cwUAzk9n3VcF9oOHHxdm/H8HkaqdXjGRD+xXdALtjnFtjWeBKPRlCLbLY9Bb+ngv17qWhE02Mz5T4OPX0BMxkuyYdEmTEt/l4fVuwJUgmp6BUkHSP0GEraYemajFr8wPgzjpB8U81GkCBXq4kGU9m8z0By1p/rZDKwh3t1Z5sr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIuhP372; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIuhP372"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E28C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768217633;
	bh=8bYCEMz1vBtHZIMm5VWU4j4rhKZkea2f+v2sjPiB240=;
	h=To:Subject:From:Date:From;
	b=YIuhP372TGhSH4gufSPo0+tEdQrr1kTGFctAwpXDeoXQswGbjuEVb2Fxl08Am7UPZ
	 3xN14xO1k/QSsgMeI/uaFd6qG+LmMg7FjDAC3wHFA408oGdN3dz1j+2Q9vunZiC4cV
	 amozenjy5imriNrPVTxz40ITzmleETVvup6/0L9bHgtx+1aCg6GYAaog+Fg6GqI3Ih
	 pMLpI9iMzMV9xHFmsqDQOFJUIny8nzxmDAVOzbyYT1jOAPMmDi4gk4LhRcNNcm8Iju
	 Y72Dg45Eue41/HXKDU+2gOr9ScQm4u6VZ2FnMP+VznEpYOusjJi4+LcBVNBYg7FwgW
	 S/cdZtae35zyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFBC9EC78
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821763359.17832.7002554547225430830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5d892dc83d7813ad5743b08dedf1660a8cc78f23b647f839a92d8102bd2568
Date: Mon, 12 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768217633
