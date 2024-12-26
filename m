Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D781198E8C
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735250154; cv=none; b=nEbe8xhm+9te8fyvCxtdAX+M75RptfYgJ69ImB4kuxNwXka0s5PLDqxPeODCt6x3PS/CwhgIPFaY3GTJ2or1fr8J/+nut2iXz7x1unSZacHOQ0eWbID7qfkCrVzO/86U5lng6LlL+NAFemI+xX72IvkjxMVM8qk0X8CluzR2opQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735250154; c=relaxed/simple;
	bh=5CMeEZ9k4gQE55JlPryC0GFy7JpysndAWr7wtDZ5lpA=;
	h=To:Subject:From:Message-Id:Date; b=RzTj7+FBLaGk4r80bUMyvuxvpsaSvJfTo9HDU7vA2md6r1kmSgvhbDem0nxqEhlJjsotkw+0DToe4QC+6jf8JMfwo7bw0cYXBsrhuQgZxy9sAasMJN4M0LwKdQg7K/wc0WIW6B+gIEj8kPVkWps3I7amjWGdWR23uwdnAEhN0yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UobgKEPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UobgKEPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0F8C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735250153;
	bh=5CMeEZ9k4gQE55JlPryC0GFy7JpysndAWr7wtDZ5lpA=;
	h=To:Subject:From:Date:From;
	b=UobgKEPdvC9tdCao6xjRjPzo0+1ZxiIg/3+cv70dOSg1IQs+2rmO8sXiynyHzqYJr
	 85VW7y9HjqO7iWzO2HYtypcVQq8udNkjW/MS4WT9U9OtSKG3uadcwY7CoJiO8wwhZN
	 5ChKwuGz0dsibdrpRbASqyZjj1ZNjibcnUIfPkAk+gRCu4CeiA0rwoV5VXcQU/ZUx/
	 cVjwF320fQGUl2j8CajwPfPHQlTCwm30pc1+5BRFJDxVs9XzrcIhbVLNG7oBghVjhW
	 Uq2f5rbEYbFXKLbSSPzSEBqAbQZorJLegUU8WJ2itRapEKUlJe4OTFlXstdtVz19qH
	 +8FnaPDbQ+DjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CD9E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173525015365.10716.3121431665491387108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89006e94f12e03501aa0bf5538de138724098a295b7fdd9b698123b5dad39035
Date: Thu, 26 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735250153
