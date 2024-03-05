Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8685A796
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709668697; cv=none; b=hsOFhsZeT4cT573XD+H1vKSPzB/mOEvjP1c46pnC/kvfBqKYSlnYjvOrJoKqjwqh0aWpgc7qnDUEQuV+UgEwUsNZdLEuguvZTGAEaKbzjow0U7t9tJJ8Mujw6ueoYWB5GHXs9aPtL7K9WEUE2CqXLFPpsHMrmIjiQkFzlnl2Onc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709668697; c=relaxed/simple;
	bh=Z1qVhhXOCfdK0B/RhQsiMcpR+ckDQLRH8BnfykSXzuU=;
	h=To:Subject:From:Message-Id:Date; b=P4Qd6SWegbFqmc7l7w8Tw/OA4T6YprA+H7kjBndcD8Qd9OaBwwqbylW/n2x+BG7wdksJSWxMwlOyRq3TkmsCbgg+REDmM2t5y1NVZEmeCaT0o+bSYjqzNeoo+JJ2EkemddcgyuQGdTGF5ZnV8hjRriDsBu+yu7TutusrN9jbwQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8WryX8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8WryX8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A5A5C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709668696;
	bh=Z1qVhhXOCfdK0B/RhQsiMcpR+ckDQLRH8BnfykSXzuU=;
	h=To:Subject:From:Date:From;
	b=f8WryX8lhj5cQZmyo/sXtlUYgElU03nVp+MEN53wtOkB4ToF5z0NayThS0ybSQ7yd
	 kD3cQIfiH1UlJ2qWPBFay5kBSE2uLO6rcVsLaJYxIhhT6aFckU6rZuzus3bR+VWfIW
	 iII75fhrR8vGCkG4W12/kHYBka9GZxgeGiE5ni0AH4BHwtn+iIUzv8g1hN250MdKKZ
	 UztF9fsr+bLQ9VCc5F2EdWSreGnH8OzSuGF8UgtgYXK+QkIAIfqcGKnEcs3yxt31jF
	 HXE9/Oi50cfLs38t0T36/KriUUKJvzeKqiSCt9DuaFe2KteP+JYAEgYqzM0F16z8so
	 QO7nHoqIVaFdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70368C54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170966869645.32596.4277995493419280869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c401345369dfb9d39eb5ef26f2d2a2542cd9c7e61198799ee7ed122f3695220
Date: Tue, 05 Mar 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709668696
