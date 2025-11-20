Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A97636D4E7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763660514; cv=none; b=jJtGGT+R9NBDEazsGN6xw6KyTOt4JBST7KZJSU93V0PqFvDOtohLfCvzE/nJXqW0Y4g1WvV+lIOEi+CekGsUq5t1DruKjybXoqsx0hoeLkG+aMYqoJOimE64h3zA+M0MipA0/jklz2+/wHFwInSO7sEj91XGtdOLIDuLOejI1Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763660514; c=relaxed/simple;
	bh=4TFSdYdOynjJMf4ADIJrxjZujzbzis5IUYoB1eSbigk=;
	h=To:Subject:From:Message-Id:Date; b=gjvG4m8pL/LJMH2ljU2/2R5BNx/mumHlYabBIlVAnS5iUTQ3LkF8b1cTbmnBD7s9QopQmPtKG+kfpOTVU5/iSieDM1dc77aKC3Nu0kARFMtoz63XLnwjxvbEoPLWLfdwdSN9q8FjKtct8byxPOxWA+wg3316mkPnR2GTpmwzgBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4pxxJ5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4pxxJ5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54DFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763660513;
	bh=4TFSdYdOynjJMf4ADIJrxjZujzbzis5IUYoB1eSbigk=;
	h=To:Subject:From:Date:From;
	b=I4pxxJ5kNWwALAFcI4plWnqmY3BGB6JePCTVZaMeoQ+ogYNDyGAV72UdI3Y0Y6Y9s
	 G033hy1VEGjwDFKVmmNYIykKWStnKCc2+gwOhOn1+E+nUpQfyd40m8FyMFudp3hwVg
	 A4f7e96ipMoASKR79m3rfnYewBDtU/Jw0qpc4OkYqAdHgozUsbIx6sY/deFMnxT1Wz
	 AAFUqs90R7+rtqX92ZIadH3H0OjeZ9l1fUxiQq/UF18tiymrfQoozyJsoq8qYzCvDo
	 8UxRnkZIB//1jsFpuuF5slAlanaILkzT0FiZ+pAXgpCRHVuU8ucW2TKjcyudJd1ofE
	 osOwMZjiLUheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92770CF9C7A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366051358.3327.12273299501194570060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca31f7d5d586208ee995aeebfe3b69f3da50c75a835a11b93063e1aba02d77d
Date: Thu, 20 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763660513
