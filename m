Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C1E54F81
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743651595; cv=none; b=lJpG2+I4GS6TCqavESskQ614VOgA/32j8aO2wASUFb9ijhewCv8NQfTNY8YC5MPdfQxLy/pD2pfV78mqfZnmi5qQGz3ypffdJBhIzP8S76S2jecd5hlwf2RBlffvBBVLSwRaZIQX5fyljiDbctGpW8VR9V3BMpsw2v4QNNhxzzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743651595; c=relaxed/simple;
	bh=VNtxBJfEHDRStOlpaeRt6cQSL0aGy0aADxryC6JsZm8=;
	h=To:Subject:From:Message-Id:Date; b=qlXND52uRCiQmZn/gBLWRSDf4CahanOb63cYFzf8AyJ/g9UKHpZdtcBrYeT+12HQaohBNhKdoTEWtSLJchLxusK6Iye9jUeFUuouZrFNUefV9+AbBuz3FrWppHGdA/jD4kOd1vxQdKmXa/7PhP3rblxWXZyFJNVQUCPT6gluzTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUNBL8FI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUNBL8FI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B10C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743651593;
	bh=VNtxBJfEHDRStOlpaeRt6cQSL0aGy0aADxryC6JsZm8=;
	h=To:Subject:From:Date:From;
	b=lUNBL8FITfpaTIDeQb0OOTZTMu23NoUfdlGouX0442ZjGyDq3NfFKf0JgM0Ztz+2w
	 Ocx7QrdEbaE7vZHHI08KavN2Tj4S1KHiJ96rCo4V4vLSnfu+yETCaLfXzWHXakjDt0
	 7G/3cei+h9vMMvIUgEGWzA1/1M8AxVFpLeaWqnQ6Ij71278zdC+2AU1UCdBV5VY+sZ
	 peIq7F0NJ1FL5Sq/3ZMa3TBr4HmTrPu+zHj+gnK84bIZEe0iQsgLu8Vo/23xr3y3Ni
	 W9M8n3fyTcqU9ZhCiI01hXpbcc9iKEZaR3HE/55QI97sEJwxLLkObMAPhHbhQ5wOEM
	 GQm/sMuW+cE+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C8C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365159358.9233.2787826843215700382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34a4563eb394a724b7eb282207ba638ce8f20b5e9eeb12dea6747fd36d59fc4
Date: Thu, 03 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743651593
