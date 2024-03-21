Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1BC85650
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711038497; cv=none; b=dafRaPn+82hjzUIiwvnvSnM8tCobgbwRFWjUN/g5CSirmxdf4fEqaFzxYOb496InMX6BuPPVs4S/ui63MEFs1jbwy1rWw7OH9lvzvC3eER0VQ42tPhtpH8/MIwlF17yoXyvl6yUUk3dUcIdNArnsgGtQ0fPgZfn467Fa4PwfidM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711038497; c=relaxed/simple;
	bh=+pw1BnKbmjNbWd9uFaj2sClhRCtmrhHH9AkinM1XGHw=;
	h=To:Subject:From:Message-Id:Date; b=IPXMzuwGriqCjt1qF7T1rVlH69dgBnsbuujQ6XOdRmdiR7+EFQtEK6qPaiiB7PBKxZJ7P8qKEfFECYVWDAwgjiYK4RPrlrR5DyQDUBV0V42f8dIGRO0laMIbRH8lqaMAF9UG7335KhIH7WjxGkyTe5egt7omtPCUFIsgqsHC6G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZx5MR3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZx5MR3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 794CEC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711038496;
	bh=+pw1BnKbmjNbWd9uFaj2sClhRCtmrhHH9AkinM1XGHw=;
	h=To:Subject:From:Date:From;
	b=OZx5MR3iUIhl7j2+ow26gTs7DzfJoCbsJ8f06ozWPA/1FRcibqvzpo8GKvMGjhcbQ
	 H1HMUy1Ogh2d2huL9itYCrlBoOysbFItQ+7t292jHKZSf+nQayZNlVMyv7B0XjqCob
	 jtKjXKKuTsuymerdtnAxcHdlmS3jDqHhvtMXlpZi9nPrT0O6oc9ekET7ENr737hOkp
	 YNQMFzB1uoHleDDumyHE5Bg9k+DB2nUurkwIYzWyR+OWic135R8I+1MBzNZcB1tOu+
	 xT8SetRkALodaX0tXDdebFAZZFswMB7dIusurCJchXGY9FypiblqBDOnygsSDcqtgU
	 QF34Z9K/Tj4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62920CD11C2
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171103849639.27953.2577451445365258127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0f90ee637be57806558d34e2ed55e028b45113366ac765e1c02bdc18ea7126
Date: Thu, 21 Mar 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711038496
