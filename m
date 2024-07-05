Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3495E13C914
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720177523; cv=none; b=h0Q2O0ZJ2GuVMe/EgVlSVqAdIcTa2DHEm7XZO5KoJPi5+Xtfi2ZX8ulmVzUwZEj7tAPsBiz+1EqzjLpbOVhj4n0m4DUifL1++ltO+Tem1hZHmofLzghZ2b2Xr9ebuJylFdY1SXY2KNbVGIydLwbh9dRIO2I5Zjok7uBkeGuT9k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720177523; c=relaxed/simple;
	bh=cQ7k6InW0XnlMtKMIeaZo+QnmTZp4dUu6bbP23KhGtk=;
	h=To:Subject:From:Message-Id:Date; b=Kjm5eWf3I0HS7T7NBDjSlAArEh8L186Yuglqt4G+JwOoJyIUx9fK+ne5yXA648uN1X4rN0/jiO/g+2D0UYPqKxSQmC6vVrU90R/AgU3PvxJyubrWiRgchyaPMh0zN6A/DgxathyjI1vACMPZK/Hs11h9eZS90hwFIxp003clmMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmsW7K4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmsW7K4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D123CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720177522;
	bh=cQ7k6InW0XnlMtKMIeaZo+QnmTZp4dUu6bbP23KhGtk=;
	h=To:Subject:From:Date:From;
	b=AmsW7K4IY9iTa6AKr2aed1RW57XGbCCUuEtSUAjjfDBhYy7qahT+wexNGDt+xKoW+
	 czX7QGMsiCCJT43CgnFNfBPRlOaxjjXbQryTFc2+l3kiLpbYYL6xZKfPgD7BmUyxno
	 ND5l3M+8CyezX79wmOzuapol1mrtZ7GnAj0/NxQfTpftqhfILMOSZWxkyaiOaERS7C
	 5Yd53Rf0DIcFKYrwzjCkHbJxjhrZkUp2BYBdXjt67DgNcu9ct8hvJbeAszm4ZmPL0O
	 wIjHvfZJ35e0exHi+YQdjsJWtPxVTu5xOYln2aHfsNIqSt0A++xXb0q3zCrc4XTF1x
	 cQVZ8gOJyaxiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC91C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017752275.32684.15993356095070279337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7316961b778f1a85c4d688e51812af08b31fec14eaad4aaf69e56e94f31ce85
Date: Fri, 05 Jul 2024 11:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720177522
