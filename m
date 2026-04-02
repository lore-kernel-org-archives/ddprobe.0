Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C3E1F09A5
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775162733; cv=none; b=RiLunBb8zEg9SFVoY2EFny/RqM+Ks2rtnyPZLp+kgC8oLBbrhAJlsuEQZ1N9ni2tPZ1oU+KjelNZBR8oPj6q8pYBzLBcDkvDELYWqIwfEIEEwToAF2bhrq6442G0AoAwXlcA5cxx3314wdIC6J+icgXmRTf8JrGHst9QZzm39X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775162733; c=relaxed/simple;
	bh=3l86dcCobLoV/bobG1s/ExLFhoxwUbCo3hPJTk4IwaM=;
	h=To:Subject:From:Message-Id:Date; b=KERorKiMRElozO/8NsK4Rwp32+trbgn5YXW4brE8yMkS0k+ULtiDV2HvVHmWrYsmCfUiBekPYkDxf8IdLH/Te11hLTmL2NdfWu3U07kK7yGnPUIdYx8gzDICtQvU3iiEmXJkZkn1/rIBHgoM9eeLzlvSdcQyiBps+Xk1/atRBd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLOvaiRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLOvaiRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB09DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775162733;
	bh=3l86dcCobLoV/bobG1s/ExLFhoxwUbCo3hPJTk4IwaM=;
	h=To:Subject:From:Date:From;
	b=eLOvaiRgxAvyiF7uqPSf4G0je9Z0rOQcKJISJBJPrUEWtGs+IO0f1SttqIsP9/CDk
	 gFtEAHg0A7KSwi6R4XUjZWuxRDqCNzhSxinzomgcQ9ILdlcq5jrw+2rkJHEVYSCSvf
	 KormdCsvWqF0IXrZGrN6vDSwT5ZZf0ctnPOArJHQDTP0U3Q4Y2mIYdxXoQEp9tJhFF
	 104dd/pjqgv1NTGwhe5nyoq50v4y+r9Y3/3ziyqyRZFnMA128+2Z8i/9IJ8QUrLWbD
	 EMoscitQKZr0mZsirBF74T1tt8Tioc/b0M0pt1L8IF75V48LGvtSOM7Mz5BeYXmg/o
	 sK/TnkdKMvbIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD19D6AB08
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516273369.17119.8425818585198723535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e208258d46b78b034424d957bf6e099a1585a7612bce59320ac8b72f1c53cf1
Date: Thu, 02 Apr 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775162733
