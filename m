Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD9117C9F1
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741703334; cv=none; b=ULno8VnttOBq7aYCqSZF8sx9ksIl8AffYU2qJO90WetUL5eavnXpu9/SUX/XVYafbgtLsDy1iY2PCbn88b+CySiabAMWiC27ODqV0PIyZNINKtACow3ijhUIopduSnqfmF/XBWvE8N4v6De+tPxEmhRgIcO2AtNJZ3w3o/i3OQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741703334; c=relaxed/simple;
	bh=qOjGYPCZtvFhS/y9JU4X8x6Jw/Cbpc+2apmPGPAc6G8=;
	h=To:Subject:From:Message-Id:Date; b=MMCEo3lAqLlqn+AcYxW+6PfmCeZFy32lO6Iq6IBKggYOnzE7irYgFj3MYH7nuAPAHaqRVfu+WoxfoFmTxNcjG5PlwPLVlu0MTML2OFYkFVRqjhXd4CVYI4TtZmEdmxEgvr4L+Jn/7MG06YHzEhRLeQ715kJKOo1/ndW+AhfnkbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lI4+v0hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lI4+v0hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741703333;
	bh=qOjGYPCZtvFhS/y9JU4X8x6Jw/Cbpc+2apmPGPAc6G8=;
	h=To:Subject:From:Date:From;
	b=lI4+v0hygtGHwuzOmVHaiGROnmOJTqX/+sYWaViD0Bv8uOmDtyuxDKoAU9pkEySKA
	 pCG7fLzFsFk18X9s50wYUyCfyYj7VLz3QWaqaNWfd8a8ZtE5ckRfvPbw3RIBRXI3bY
	 QEjfiRgEx2pnfTPO/FT4jHBS5MQLgRpHSNOF54l6Fwobq4m8d1eQUdnpNxF7UTRSNC
	 sJJJxv41c4v9gZVdtgom5pGTThebXh92EI6OGRnReS/JLoIR7B/7xIY7RzniqFHMiu
	 hNBFF2sI3XrNeBVaLPog8tBEEmIZTujR0B2uTfjtfshsR5f750m0fmk5kUq6K6tYLr
	 GubCPT3TpgIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A35C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170333359.24736.2793361815386608196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8fbaf8324bda66205ce198bf2bdb162a0a961948f1e3c172fa0bdcfbf82ec3
Date: Tue, 11 Mar 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741703333
