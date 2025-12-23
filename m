Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6813777E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766462634; cv=none; b=LXTXtFKMlz3/V3uuYFLILzVV+0Gtxtj30iMjBqxK9l6UVVhq+cNHCgFigBPIKZy5lxgbR8tUppTDYzjwato0DsphTGG+wE4TGOXU/H3i9mIl/C1fVO8t6VW9pbLeR5WLEoKThwQnwucsg9+aTHtoFyaxTZS7dT+UKmX1Ria60hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766462634; c=relaxed/simple;
	bh=8QXzfz69YflTyXzUfJ4GisKgEHKVleqfQFceUBKgSuI=;
	h=To:Subject:From:Message-Id:Date; b=mF3PvWhsRK02oqtMbh/MNfPoWzLQtNZhZ0TqdA8JWYr7UvpyMMBSZcHHKcQYJQhECowHtB4deDzzT7L/4/i2YXIMMYFr9KPuACNIcQCA9oI71rF2aeI2d8sPh0hOzlY8L68OtM/1pQ+XGTW1P6pqnU7yPEWUW1ZfPnftyPD0lvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoQRxFbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoQRxFbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A6C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766462633;
	bh=8QXzfz69YflTyXzUfJ4GisKgEHKVleqfQFceUBKgSuI=;
	h=To:Subject:From:Date:From;
	b=uoQRxFbXsxSy62tS9Um7HIGbqMJPL96b/mGh1qeqgTv5CYRQIXnh9dY1vAndVQlJf
	 D1oXDzmA7ySJq9kbfqZ7B41InhEpq0eCC+7xLHDXvEGlHIpzVnEkasiCUEZwHAX3CK
	 RBVXi4xpqYu/Qxs3bIJGsYj0D4955qtMTfiXRYHk22AqgAfSMNRcVTQOd1ME4coqGm
	 Yni1cXzXcPfKAAcfijBqU+sWS+iWtVOkeSR8plN+DkQgLjJGZVrDtfmxyEcCZs10NN
	 5UA05D5RBVvUwssAJkCDJDecjPcrwhQpdDxB22kiHalfeKd38q5g9hFTjWm0UlSBOg
	 LnNqsFthTfi/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F541E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646263357.30527.14117708804854789842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea767cc40b51eaf7659d11cc63e3b635d9d23fbc1b2384b4c747cee9788a12e
Date: Tue, 23 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766462633
