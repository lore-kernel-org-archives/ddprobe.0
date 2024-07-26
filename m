Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BCF803
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721954154; cv=none; b=HduoAZdw01HB5A4Xa39lkytGVdCAbUIkZOmdxRV2hC3ddrvpEG9Cs+I/Eiu5IF4xT9cWVKbJRQ1q5QkpHwJUxm5zqyyLtil55sJi345ooDxQT9+0tVbEY64hs7FyjngSVNLFgHh+QSt+ngiZOxEG7lsPsnGyV4ZckopjTuyOaFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721954154; c=relaxed/simple;
	bh=oonsBC2sImwIzeVJakOyiZTk7K217OfqzaHOU3wiCSo=;
	h=To:Subject:From:Message-Id:Date; b=dFHDizui/hl69og+L2j/FZVXY4XaaL+fTLdLTQjTkfaHXjVNJewhUPLxRDlIqG9Z7CtiiFTGLT1wy5BRbMxLXVAHNnbd5ad4X1fC1Nkjm4XziJYja8LjL6HaTTm1/cdTKHwqPN9GkzH9KNylvA8fa/dSDRa32+xTv5E3zy+AKdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4nNHHSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4nNHHSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A966DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721954153;
	bh=oonsBC2sImwIzeVJakOyiZTk7K217OfqzaHOU3wiCSo=;
	h=To:Subject:From:Date:From;
	b=Q4nNHHSZaM5xlDtFxZhGaEhAWu1XgvGK380jH/vPcdeKn2LGhnve0+lxbqtMgflMQ
	 gsxmtwMHMMPIVvBIr6Gx2j+zMwX1LGeouz9yH3K0kVO92aqN8Io4+cwzKgKyapLB38
	 8zdyhZAwCwXRwduEf5/P/fAljk9y8NlH+IzCk/IDBryNxwWMyxtLrINNh0SpIv21kG
	 pyMoXq+mnEQRkxKtxjZlZB/Z+4oqVQ/8ZiReXsJzMlRyv5u3HwmOuOK2deoOSYuwru
	 2Yi2o/7r7B8pNazlh521x5GxCge+pPu/n8d3j0a2O16p7FAaJY5UAFvKTrpDxkvz2A
	 M3a9dIj2fPgIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93699C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195415359.25806.1392049159951517188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572c91cd57bf78e715405aed45b2de959b949c81e5a7b4a7090cd9edf7085e9d
Date: Fri, 26 Jul 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721954153
