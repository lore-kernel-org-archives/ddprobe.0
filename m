Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE4912CD89
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713275963; cv=none; b=jZ6cHACYWzR9GeDC8cH9nyrRkIK5Uw3Ksy/oCcwPT5ttMtdjBUqokKYJZaqbgwC0fwps8+f+SVNcnFQUfyM+sAbfyZeIPWfDcltlDxA9YCruBInwCV8pyfPpzbcHPbPW/viYoKZA73Unm4sI4chvva9kLaNx+j+bxoRDhrVDGzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713275963; c=relaxed/simple;
	bh=6j1NQFdEKEUqtX6BQzxM7RGUKrieKnrj+MivHHpocVM=;
	h=To:Subject:From:Message-Id:Date; b=mTQC8CiVpdOiP9RARW2O2tqyDTNC+G0LGuey5WG1UfAdc/Ev2M2yJ3HoIBfJWR9OjtnoMnOLkO3GR7YOVwjesL5seA+MO45JAmaXLfR1g+5bKsoxW7ck9oU7RRb9RlWVKuBB6GOx2H2Jal2+Lp3OEW2lpsQ9IOFt1d/gLIiQi0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPp1Ws56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPp1Ws56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95D8C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713275962;
	bh=6j1NQFdEKEUqtX6BQzxM7RGUKrieKnrj+MivHHpocVM=;
	h=To:Subject:From:Date:From;
	b=NPp1Ws568YuC/S1E8gbSs5IZ4YDYr+fnYaLG6Ffl3Hjh9PAiQ3F7EjOEE6XjFu2qd
	 OA7x11oLi7NYQLZPz0uoIZHUKuMTAEeQ3YVr4AikYSgx5R0zFLSNivrZdtN/DY2ZUX
	 ROQWRd5xbl2nzNJ/0yzkw6SwkGIZBqQSxhTFtnZ4tLwyopZJ6IOkGPj7xB204e8K+M
	 nUtGpwiq5XfLIkXhRJgEX6jJc/tXFgohYmyHkxSKCsQVYZymPoS9tVhIJUh5inTMqJ
	 YLHTrOC3Om4NOT4yCmHTKpORWHmxUukLwAlljnYLp4aMzSnDKATFqmxhg7484g0vch
	 N7cEsdxNHeW7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C2DC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327596281.4653.6399517677298564746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e513ce303ea98b425ea14ac2d85c04652429832f87dbea3a1d144792d1ed2e
Date: Tue, 16 Apr 2024 13:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713275962
