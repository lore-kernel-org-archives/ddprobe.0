Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0604C313547
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421234; cv=none; b=u2TkhFg70fCGE1SNjgPDYBRwb49SNDDmV0ewFIgEZm2xG+LrBxDPlDeNpKRY/ZbMIdHYZRH/4Qs77VQnkvD4sG6mi7KVKTZsLOBlJ9iIeP55nScg8TiL85EMfhdx12AAVFSp5gkcc21C32Wo1x5CgjdQFKNNFrAhj7/djtX6tcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421234; c=relaxed/simple;
	bh=BxzFHJVcTa5jNxtgWOlAYOkkrJgV5drl+b/NBvdkPzI=;
	h=To:Subject:From:Message-Id:Date; b=lUEYMA3VGNYSC89qOBQwnhURZieGf5IrVXfdNajDciwl+e5HI165Aoo6ncqlUpk0JEdge8/fekr5w7zAcVpd8s9AkI9qFjpOQmt7WOeMumY9SHxSys2YxixyUQzP0+De7iU1DovItuVV91ftccqu2V6CsG+EXBxiVgYZIRHjhfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlUUn/q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlUUn/q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA03C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769421233;
	bh=BxzFHJVcTa5jNxtgWOlAYOkkrJgV5drl+b/NBvdkPzI=;
	h=To:Subject:From:Date:From;
	b=TlUUn/q/17/dsUjhbbZ806+WrMhaKpo5RRt4QQatG5X3pkNfTz2Z4WG1EmkVC6cY4
	 pL8Prr/VIZ9gZ11kdHrq3PY0hqhf1eocBWnZh5Ad+l/oreUhKZhRWYeasnsVmRmI3T
	 aUt0blCnLM61Cif/wiUQErQNYHUW5NcKa6QNIzX8tzyVFm2IjFJDwN8zR2LKvrh/+o
	 qhtbvqjuxjvFE//v+oTpHGjwwWaDcvg2LvLioWRXlzjopziRSPv9wTup6XWtMTYXig
	 QDlL4lI8LxKqFrV6DR178cAmwyDmPfuR3SaEBWP3ySpT6vAVYgwPqCBciQqxffdkOY
	 NuIll2MqOSahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F003CF65CB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942123357.12473.2338918699909115062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67684b2557207395710d6463b7d518689ff9838e7188f183dd84fbe36d844d12
Date: Mon, 26 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769421233
