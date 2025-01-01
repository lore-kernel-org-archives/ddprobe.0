Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F7C184E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735696554; cv=none; b=f297xdZ1j4MLT1TA1mnzsbo9N/r9Eq5BnUFxUA55he8knT23dZzCJ0BCRfWLlSu8LiDKve/O8kRXPGghkslYMNtZeZXvU+Kc1/waKPFnixL6gAHOz/7XB8hrhRPCDlzl4+VGt5F4YdFupRUS9q5qqa09maVrErIRjV20qDuc+qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735696554; c=relaxed/simple;
	bh=6morAkmYs85ECQSKtuBM4gJBJbv1cOIS+PdP5MsYJa4=;
	h=To:Subject:From:Message-Id:Date; b=nUAFv7OFNv35L0GckKz/ADJ5HlaWOlivmS7iWQOiZKgQ3Ww0lnuLQifRIgsPfMlP+2kvmvZ50Ee60n/gP+Ti0zdIPYcQAFkkua5uuJ2eF3AsoJB8/57A6iOYvigUcSe8N2wXYnl35GV5v3XiqjJlKYmMTVEFtObB72QqxILQmfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGzJolId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGzJolId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2571C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735696553;
	bh=6morAkmYs85ECQSKtuBM4gJBJbv1cOIS+PdP5MsYJa4=;
	h=To:Subject:From:Date:From;
	b=cGzJolIdqMdiDFDRyyor1eG1Z8GFmcd7qtNwgJQdtaCiIaoWnbFUSwnkDBz2FcSQO
	 f0TfwVTUdLuP5Iv8bxr+Rj+WGpHNwRXwadLnTdfrkjI7Ux3YbnuICPpKE/muu6E7PB
	 QepWDuVCjq4KH9fDj1VC5JyiqGD+aKjfvinfT0SYog7FDRKc3RM9YxyYtbhpJ2ia1o
	 vA8zCaj6kYJWh0r53TEwV5StSdLx1nZ6uJBa0JdGsRLdN/lwP6pmAgtKObgFqev7Uc
	 k9eCx/byPbzjRn+pp3Sn/TLWOJ7qiHlHo61YtuQxM5JicB7ZazS2X4VH0+BGWtGAgB
	 xoh3m+N/mg9Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD1E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569655358.20335.1836662706232455087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54fb88be24e76d0fa02ecdadb70bcaa2fa35b8e7c6d0fbf29bbdd8b84e1c561
Date: Wed, 01 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735696553
