Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097F672618
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768161834; cv=none; b=Q3CpLFEm/8fRjJmGxxRH5uihTySHHrEot53U6l70DZF3YH0rdAPOM0yAJCmlKj0phoGCeR5B5vCNk4gSEYJQqO4xeGjwVMZMGcHLXGx+998f5VSExMwATWiehnAHW4rVgZgslNFwtFh2Ujq0jO8+KKCe2ePls9xXkj6Nsa1ps5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768161834; c=relaxed/simple;
	bh=ZwGmVZt2AcaYnXCagfcMmyq5CeCAMwmF/Wzj0HpX0EE=;
	h=To:Subject:From:Message-Id:Date; b=sadkX4BbZCoka5leoVdHhxRYUCu7WNohTUTCRRmq0nn2ke3wfgazObK1oX8is25d+S4xMGfXdNhfIfSwaifVrKpH/j/Vdz9wOasvgDnFPfqGGYr69FZg/smlkGNHWqolMmFElNyfCWd9t7a9ESP3V3TzczcKksURsCNm6woPbVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+Ld2xmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+Ld2xmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02BFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768161833;
	bh=ZwGmVZt2AcaYnXCagfcMmyq5CeCAMwmF/Wzj0HpX0EE=;
	h=To:Subject:From:Date:From;
	b=W+Ld2xmpPSGy4k2899OclqeWF8vuAL2qDVV34UuR99dtLAdmxnDzLNHcYScgaX8iF
	 Htqz9K6rx9snp/qnKymuytMeTj5J6te8C3vEKp/cTLG3PVMPuu8FySd8rpEnT9ooIn
	 j1DYA+GcDYhjH3VN9JDL3HKkxGGUGxplsTmIvC7arWLPXDdRNgaoMh+NBpRSX2eHvZ
	 XA3xkT0getk73nD5l0YjPU/iy7Z/qKj8ZCG1hMv4PH0ULnJZvO03Kjoy8p7o7fZCkO
	 im0Euk36ZeCHh/SpC/fVr5qQ4dwfQ7uMeA02XdWa0vW5Rsm+4W/PWcxywerumjye8K
	 UiaKmA4XFHxZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CFD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816183358.12467.10133513254841852431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d902f02b6ba3c6858bcd77ed33a5558ddf6fdd33e41fb3f2d6a2cfeab16cff06
Date: Sun, 11 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768161833
