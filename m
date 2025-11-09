Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227322144C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762667394; cv=none; b=aG7lImjUlK/UcX82KChonqJ/0Zc7F3DuyZeY6K6XYTPYeqtKpcaonQ5xUN3mpEVWFt4KLkhwcMTGnhTqn3rMFkiCvwpWN5sQGjUqN0jyrL9VJwIdmi4jjPRQidfAFdNmttR6I0OaLGkPm76Q6GvigMMmY3PuAP6ta1UAsd2zU8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762667394; c=relaxed/simple;
	bh=lBy8r+fWurA/2CQBkudAoTDMdXzcFcJppmRRXXDCHnU=;
	h=To:Subject:From:Message-Id:Date; b=JufX/BJ6esiB3xoxnJOg1P8A/cN4y2UQj2yzACEPxAxLRNxTaitPB+KXrZDcQlw+kQ7G51yZh89NaptYyxehCqMZGeZGhBTQy7tBIV+rdqwJh4O5J0BaYFdM3TsM7mvs6d2qgxovPn4BNoO6rNAe9tWZfl1vSI0hrFMxPFSG0/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KX3HrP4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KX3HrP4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1439C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762667393;
	bh=lBy8r+fWurA/2CQBkudAoTDMdXzcFcJppmRRXXDCHnU=;
	h=To:Subject:From:Date:From;
	b=KX3HrP4znPwcSUDLwKs4DAlXk1vKm1FA+CBHt2tem0oc0hz495P+fRzuQUhS3I5tB
	 TJ78BXAmtGazg7T36g844bAkcieCmBPPoVBnXvtbTU3EeBPA/GPLK1EvSzevHOfM9Q
	 nnql8AjNshXHb0g62H+gFr9KaQQx2i17LiHF0TNyiidP/i/ZHHxSXhTNIzDmV2AQ54
	 +9BabBsM0CyO08tgpRJdYK4Y/GBw9m5pR++siaM8XTA7JGFgr9hezLE3SerVF0RTi/
	 nKFbyf5+pk6wePGj+7hGfx8DtuMbGa2u66nVRZhbG6NdmtLauD3buYxGdsY+M3oHzn
	 DJa5r6chGq4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511ACCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266739358.26626.4909678420487926120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d3e9c2b45069d231cd22cc5907e446b94a0b9abf3a2cfbf36cd46521d47422
Date: Sun, 09 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762667393
