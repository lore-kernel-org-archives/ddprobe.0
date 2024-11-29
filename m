Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4748F5A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732848354; cv=none; b=dHGjRnAGhpGEn7Y70csj4R23aDrm3GrOkJDy226/HWjm0wcIHovT9O3SBd+i5Ig1ZUjN55/zzw4j6hEwDu5IBMoZHLoMjBwUa1XsS68JAkrV4peBAw+ZQsYndkt+PjrQDLN8O+hFZwIdNLAVkH7k2d/W6nEbPRmuPjAD1jCMV80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732848354; c=relaxed/simple;
	bh=8uvYS2+qLn2PIYJVFS8JJoRCanIlV4uzr702gNs3QJc=;
	h=To:Subject:From:Message-Id:Date; b=IfMinhFcKjq+OaiWBqaeYiMu2I2YqW3hgd7ER8BQRea4kt5It1HW86a/5srD80WXG4lsDsWnlbnqPO97ZCX1L01t+O1QWq011elbNRFtKqaz+Ikdjyy6EqpVXEJEt5HW6YRqu81CR6itnSdaRfNFsK9v8dLpe3+jRDQ7Ea3U2vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdMBx8he; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdMBx8he"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654FC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732848353;
	bh=8uvYS2+qLn2PIYJVFS8JJoRCanIlV4uzr702gNs3QJc=;
	h=To:Subject:From:Date:From;
	b=CdMBx8heTMToHCHDi1fdkLoiR0G9PDvnWj6udtK/MPAZ+XHbh06DAPMzYpjJ2q4lG
	 uPywuWODtoC39P8cv2ScMf1c93ZLcavMrJ1b6RiYeUg8WUrFhvMnyl6vpV/DvWbIlu
	 0kJyHxAqgdCF/y0OFmSCJr/lNN7Nemci+Shmb3aL/6l+2qA1r6JzIqVlkFN7d0NFqt
	 6r80fVev6YirpOm63RAt/2MgCvKkgEqPIrfHOwmn5L2nHSdOKcVyGnGpVEykeATCeE
	 a49wZU09ktThlkTUyxFZnoGlLk1z8c5/kl3iuIXwmhYpBj7p+oOYheOkwtEijTbWeA
	 rRxGAO0CFFSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90476D70E06
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284835358.7309.16898983752902801049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58bd2f22857abf05b08ba45877083227ef319ec4b18081bc038f06503cb6f717
Date: Fri, 29 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732848353
