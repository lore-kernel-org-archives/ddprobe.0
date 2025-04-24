Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C76111BF
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745506794; cv=none; b=p2P3fViBr1yQx53k1FyWCZn6Je0tQ2vtYitK6mr8O4nI9p4PnunVuFfvxGTzr2vxErb8o2bw7y3kLFilISiMNHoCoInPDPXlW1sL8zrlS3en+Lk4W/0MNrbqjyENBZwppsZtkhL9QLvjjhjVD/yPd5hT7rVoNHHlJ4coJ7I1PAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745506794; c=relaxed/simple;
	bh=C/Dbi/0C3Un0xuVYYZ/cgSJq7EOrquWEEzcuYLNX8ZI=;
	h=To:Subject:From:Message-Id:Date; b=riNnL2kt4kNznW46+qPMkoxTFqV+RizehuZuj+R5Ruw6zD/obHhR1zAy/T/ZNCgUfRbsoMs9dqb7OmQUaFK25vPAMAuSsC7r8RmLVqnBNW7Q43K8evqatoAG+fBina7FK9wn0/Qypx6yHePhBIFBVSPudrwnNorPapbtEXaZXdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb/Z/WlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb/Z/WlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03ACC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745506793;
	bh=C/Dbi/0C3Un0xuVYYZ/cgSJq7EOrquWEEzcuYLNX8ZI=;
	h=To:Subject:From:Date:From;
	b=Fb/Z/WlAntBYJHOAVA1f69Kb9cDTRTnEi4qXPbL8ZKpR3dxmktB6t7jFll4qnke86
	 WGGBFVT8xkD8RGZkX223gkiORPISN41NbaMEUlIFJ9OY4Ot0IhdjfU6sP39tH/kGpE
	 K9c3JY9KFgdQJo1mklSKz2AWSMbgUpAYHUI4KbYYTgOVVr6H8LM1lcDQAoTk79Gi01
	 6zPK0sHmsTXjEWsS6cQs5/ni2Zu9oIJIKWTpl71tWrcsVSvpry8BdIIrHTX1sztZ2n
	 PyUBtBkYVM/euC3hqpEA2lQrglxFKkdjIJLgU8jIguQeoK6ciAG7r1KpY88jLyHBca
	 3Kseq27w43vig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7AC369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550679358.24627.17512973530995805410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc629e6a47693da1e52b6b8184212e3e7c65d052d4d7eb02dfe381b12428b78f
Date: Thu, 24 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745506793
