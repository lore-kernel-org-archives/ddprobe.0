Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26428136E28
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728226555; cv=none; b=Ttvcfx61AcCeie3aH13K/KyOzshWqtkcP6aDLoS3S9I21GHH3kpnvjNSP7KqxViWQwj2RPfKtkVB1uajDZt2icrOV4e7mmuvQ71BNdmFZvZ0r7xb6tzFo7EbkeCV5fLn7fFe0vheWBeLALhn2RRIaXAvGKA7lLBHf4jDqBGD11c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728226555; c=relaxed/simple;
	bh=pEY3MUrn6gXfRuf01HA7mYl10iYXXNnSMLRPorcjik0=;
	h=To:Subject:From:Message-Id:Date; b=hODrCE2zymM3hNYyLFss0qsuNX8x3eKR4IMoUPEiimPnmhMHAC7F9ncCU07sB8PqDkzQ7lONlBySZQ/rBf7i3ZA3HfbMyBN3RFUP9uPSOLGHL6vvyx2s05bXk0lpBZ3vs8aMKVKFW9otT8JasQxeQE9l3+TDq4k58F6NZa+82Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1BcMns7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1BcMns7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF35AC4CECE
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728226554;
	bh=pEY3MUrn6gXfRuf01HA7mYl10iYXXNnSMLRPorcjik0=;
	h=To:Subject:From:Date:From;
	b=q1BcMns7u8v7MMKbDBUmthpxr+L2caEvfFCDljZcL8ARQOozWM6DV4Zm95V/j7l8y
	 wcuKxKgVY+LJFykbNRSqoVD9OYNrjD9RWWtr8E/T9F206WmFUdpsLZ6cG+qJvKbjN+
	 kPQrA2wu3IAzsMDCz660xM7k+NtoeAmHVrqiXrWQmfvtyUaCUjtgv50/YU1nkuyrOo
	 pFPFdIN0HDACBhYPiXsnj4bQMC8gsjAtOXxuK0eIsRJqMzgpfVf6+iAhRHItjmaGEd
	 yAMgEuWcHcvUCNRVbLELc+wwi0298q6sbkb1wIvFEf4i5hLw2wSeMW0k+mItqcRd04
	 +/omoOounEkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A9CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172822655369.20069.248624929375314208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49eb9a4a9a1dae1bff89a9917147cd42ece41fe6d3b0e93bf03e6fd4a03ae135
Date: Sun, 06 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728226553
