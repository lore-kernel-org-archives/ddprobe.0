Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346E13C07A
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779981754; cv=none; b=NgIlWClW8C8yWKvROfRrEYucxetRmb3RcWwGN/FaNT7KMh3ZfdK8AhVvvf0CB/Wq/Kxvb9JM43ZG8HVZrWsfzgto7PTmwY2Wf12hh25nsJjQ9Wq+RW/pBxyoLbmWN83e2SI1wjf2WB1jN8QcOqBGgH9YYUGqgnO0xkDlgtU9C2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779981754; c=relaxed/simple;
	bh=B86GsIgooS3F4CgseQ34rtvQf2ejSuJQCsc4ESqVknY=;
	h=To:Subject:From:Message-Id:Date; b=hM2Ytz3S6vKym5D0s5Pi5QKmbHC26726Opr5HbbWQiOUMfmiJxgR8k/BB3qAbLnRkVIYxjrsd1cCEoowrl5TTiYTc7F95JF2PeQI67+S+0LGCH4HksOj2ru1gWnh87h2YUI0PFu/DMbCecNbYg+YC7jtyvr4cWYf9IDin1aOy4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leRXZU2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leRXZU2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F21C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779981753;
	bh=B86GsIgooS3F4CgseQ34rtvQf2ejSuJQCsc4ESqVknY=;
	h=To:Subject:From:Date:From;
	b=leRXZU2y3wTGs3dNFFbiYfEMQmsz/e4OMsBBHfCpyYwWnqSHKjvJIQGJiryVIhpvu
	 n6cd1dH7H2H9RmUeSK5OuAOyZr+Uy7q4w4eQVIN5Xs0wHQJvXFuVo1iIOZypFL7mPH
	 FA8ZY7xBK4IKjltnWtZaO8w/jfUSqI9D4srFB6v036simeq/5yquKiF95blI2DK9vc
	 +qOwiyG0iABAOQn361SFhQTnRoAe9Ce8BUAX/Mat5JJDhN+1555wIPsvg/5c95TEHU
	 miX+G8AYZss9D4/rz+9BQR9yVLcQvG2Gti1anfsU1HD8/4j8V100nXtj8nta0aX+n6
	 VmHiheaaKGvgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAA8CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998175368.18409.11658773108762030236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649c6e1c270f16ff0b46ea81672efea6d4647f7b7a734b6cda92e89a94242d55
Date: Thu, 28 May 2026 15:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779981753
