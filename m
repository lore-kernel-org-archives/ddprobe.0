Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C7E1E885A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766630034; cv=none; b=kUVh1NqRxhDfeQA7TjsI4OBbPDotsUDxBbW1ITN8njnVYvm9U+eFevUZmGnOKWE0lg7cjt/gs2y80zH8EynoMcWgQHCjvQ+6Gr7vuw94pIb0RTjYw0+ulJSJ0xNton0UZdsm3qjeDcGSMNsU1WGkZAvV9gjy6kA6dqjoKsNkHn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766630034; c=relaxed/simple;
	bh=p7L/mBmXbYZLe1IFn0jPjofoN2yLfSZE7v48PlvxwUc=;
	h=To:Subject:From:Message-Id:Date; b=PXdqhNolzupDkf0wQRRpJOstmXNJKN8kq8Q1AX6lZ3O/567u8AhQV0RSgxLU9sZF5cFk18vHCuBW6Sv8Yo4OU9LPnW9ByVPTwxpIjpyW/mFFYtN+bymUeLis6zkqnVOj2lu76yAhuY3sGl/B27wVjpk341mSCLH3SfzNGkKnKe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLFPrVnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLFPrVnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FDFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766630033;
	bh=p7L/mBmXbYZLe1IFn0jPjofoN2yLfSZE7v48PlvxwUc=;
	h=To:Subject:From:Date:From;
	b=dLFPrVnThGgmKY6o1/1Gv9c0Dph7Wbi9Xp5YKDcYRaIkxKZnldIpBLGVopQ3GdrO7
	 DhEZId3bYgfLyINqoLGHXl6EIrPc6Ev/UMP1hrhi0CHXuvE27VyQRnHoKo6pXj2h/K
	 vwiidX6jTWAm5ANzrl1R8Wko+WALvdqhpCJyLjl2lOJraOPBNrarq1gjJuyx15yh5d
	 ZegIaujzxuwjdOmyJjo7xL6vbQgIhtboWQ3/odE0vPDiuW8DV/8kNo3NiVqZxS+PJ8
	 nNEIeh4lFvqoMHSW3PCpTowmr7U/3KDzusRJPM6xK/b12jaZptYy4lj/JvP+UDuG6o
	 5DGqsEkDDDcMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65FE784BC
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663003357.22248.14244450023378175881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d67d232fd58cc0f54088e8a2aaf705289fc2e640549222382d8fe28ab35a84
Date: Thu, 25 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766630033
