Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9C33659E8
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763480515; cv=none; b=ufd8xOFQ9scLHzXEqeLYP70K8dlrWbs0mA0tBM7IB7vgekPqk7AKsu62MC6rnb1Ht0VvAIffwRCb3ExBMLfroMnDfsk9Hio4fc5HKQsQf0hdppVFVDTb5y3FkjqbCLNJnsHug15yXfF9ikI5xbnUkweZqlTvdYYI9dmYd6f6MQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763480515; c=relaxed/simple;
	bh=ejahYqd9pwsssqufMvushiNAP6mJJn7NOOPuGBBeK+Q=;
	h=To:Subject:From:Message-Id:Date; b=Gxr98o2kC/tRg4dP2Be52y115fXZAFDpDZpW9bXcigDkn+n0mOg//XD/YPqM+fRwAJfC8KixByrGy8wCYjGRJtrSeRyaYS+bT+etC5gmUYotzizm3SLBwl/KHVST+8PqRqZE3ouLy2jlUPUhS83T7xm4Zs/0oT2wGX3duEUx/hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjyUMXhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjyUMXhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC514C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763480513;
	bh=ejahYqd9pwsssqufMvushiNAP6mJJn7NOOPuGBBeK+Q=;
	h=To:Subject:From:Date:From;
	b=LjyUMXhd/c+/HFrcGvFtl3COPb3pAhepj3pd4FIo9vJ17/jhvNQhWak/PUe1lUIF4
	 2L+Trt/LH/NJBqYWUvAjL02OPw5fynVQTIHBnntDYKOqyAwCQfe1vfvWHap1y1Acfz
	 kmI9z1rIKb96rSAwyNE/eJRpPi87QmR48kTa2T7fz1qxW5gSPevFPJba4PjrV3QOGs
	 h7tvKZqxTN3M/roUKdXEdP/GWqlbHNKx7AJgOo42khQnq2VlV3pPcY9Q3gVoIV+wwy
	 wdasJcvhUxqYU/Rq103XbwDzilKIIynAVtbeS7fvyfCuBGIwDafJZZLilZbehWkTOe
	 XtyLvotn0c6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A0CEE328
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348051358.4291.5269552695049628748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38cf27aef94e89a8dbd249eef334ad2be1f9a5adaf0d9ecca4edf03d0cd0e629
Date: Tue, 18 Nov 2025 15:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763480513
