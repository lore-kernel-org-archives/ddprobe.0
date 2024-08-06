Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B16BA53
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722928554; cv=none; b=NQbtZX0rLKlZT0mZ9RLmEurNk2AzOiXDWoOWsIaNEJspTrW9pxByjyPzYjdPbxZAFl3UNhvcsOErcib1fSbPimi7hUY0qAhXKmfdCD0BaxFJBkJmZIz+UWXIjflQRroIojmKY8Rfh6RXpVTfhbKpZESlAFEr0742YjJ0pdcl9c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722928554; c=relaxed/simple;
	bh=MPmj0NSYrLpjCp0ukOOJ/HiiKCgAcJxXhHEiZD+2vLE=;
	h=To:Subject:From:Message-Id:Date; b=aRgwIbpvKigtYi9FUMukSJkWkfvDzB1Y204KlQ+RTclbeDTDYXPWm0xJzif67Svzg49LHUNgT/K86bQMoAJH7mHIdltQsAxUA4w0cXY/Ko+TK3++pN7rM61T4O9V0pO3VxLPIaZckuSQhshvxcis4m2SZQdu0N7doaUfcjwV1oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucOhcBmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucOhcBmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CA9C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722928553;
	bh=MPmj0NSYrLpjCp0ukOOJ/HiiKCgAcJxXhHEiZD+2vLE=;
	h=To:Subject:From:Date:From;
	b=ucOhcBmZ1ipv+rLQYpif/jfcxGpYT08Q7WHRusfjQ1SG5wQKBrn6qRBJ93prsIS47
	 wZfHNxeK0tTjWBTd7PM8A9rShI5I5FMwF+suu/IO0VLWQyhGaSR+hbPgKSMyX9+tem
	 QQs5HYQtzQBcu69o39pvBppgA0t+CHng9j+q2YDbevAZx8xPPk2fsf+XRvcmdlQVa8
	 wZQMQDcjAJaS16HOddLiRLWbiPMb5r2zy+soso/bGasNMJrquNQVXrS014rh0rFDRD
	 IweOVTi9NMX2f9FKuoCthPyeS5DmxNJpCrK6T+HcR/rA+QcWdn3zAaAsuBzVlgv905
	 NL0KGTtqSEOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC44C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292855360.909.15014471578612712396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da850fd3270b76d19b440a38674aacf2f17a3b3a3ece24c56f5f49decb73580e
Date: Tue, 06 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722928553
