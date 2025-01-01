Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD841C5F2A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735739154; cv=none; b=KPvqiaNSR1Z8YITPpyJ4R11vwoGzE0x3tN+raFu5g67rXbnBVISr7g4nPRmUgZTq285KmJXsfeAzlFGAw3paM6t7WEBIn8azOSjBb/maHUH4XJ0sxaZjmcUSZpJ58YfCJ3HiaDOZSVZYTA4r5VYpOon8A0/DDfP7dstA9Ta7g8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735739154; c=relaxed/simple;
	bh=MnqmHgtqfZCxHKlkxKsfwKiqlN9L3747tkl5PxpWhgs=;
	h=To:Subject:From:Message-Id:Date; b=d+Us4BntSe0gSjTtV8Es21xZ05bEzMCRQQMUvEVulIYKrbvzKYH+0nO1E769cro/WXQxbA7mu8EswDeIdXNNpgRorwk86YvuyTDem9RGyrPuqJuhf684ITVYCP/Gdmwy6d6p19zIZea2kUR/gHR1HO+Z7CdjmENoYOmEwEPTymg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQLLA/ZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQLLA/ZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92BDC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735739153;
	bh=MnqmHgtqfZCxHKlkxKsfwKiqlN9L3747tkl5PxpWhgs=;
	h=To:Subject:From:Date:From;
	b=QQLLA/ZZzQ3Ar48ISt57JI8QRv1u2S7ZMfLBWiCsy8Zlm1SFQa59Ig3VFl0ir67HW
	 c3zf18mFQEo16/agRWyKyD6f8FcQAHHc5r1uCQRMobBOuGc5ry2Q36DFns8+R8rmoC
	 6reJ9Ab1DoIuCLE6uXIXvU4NVQ1xeHz7B3d0PSA6pqWp2a7oyDRIn5vuB8hQC4IrfG
	 I4TYiatlwkSsM4lO0V9QkK4TTi3WJ9n4uUgVESBIl9Ci0OJQrcpJMeWyOmfhDQCgwA
	 QI6sP6MUsciw/L68ugEt6DwTVtl9PExoq5e0Ib5uU1ndW9Eiq3a2HgAGOgCSG+awMi
	 CbpFhpH4UDpVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC8E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573915358.31539.17100078075565537774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca8c12d6b706c4c8634677a90f36fc62e9d35598d234c702e5dd515e2539a09
Date: Wed, 01 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735739153
