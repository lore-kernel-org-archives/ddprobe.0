Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4451422AB
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730954754; cv=none; b=CibWrpK/moE1StMGdGQEAD6ms/XdN5VVBzUtNbY6xgH5iUTO/1JPUnQcdCMc1kuEvE60P1gQJgXj9mx79cdapGgfP56IFeNfIldK5PCjOqFmgduqeU7n4rhju1gUZI7RP/3507vam50xhu4wfCBMWNpfJ5cLIcoa7FF7vxdqr/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730954754; c=relaxed/simple;
	bh=x6SAmQFwV9+kt1scnOumPXIJX0EL7xOqa4YXFspBqQw=;
	h=To:Subject:From:Message-Id:Date; b=azTavWUl4iTUllgOJ1fXBJswB9IXg0EvYgtNUz4ORkx8Uk3EUi2mHYS9AyE+DRiqk2i5wNbaKFaPi7k1jCLE9kb7H8Vr6oBuhZl1t6lzreBz+SFg6BAgAzsgkX8cHLkW5WlAefolrubu3lDSjcAFeYiP2wwKIr+wlPxO/YXsZHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uibZEttX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uibZEttX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C223EC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730954753;
	bh=x6SAmQFwV9+kt1scnOumPXIJX0EL7xOqa4YXFspBqQw=;
	h=To:Subject:From:Date:From;
	b=uibZEttXLf/UMzaOwxEc1RCIGTWsCcwSoGedkBwwzPDYJUOc5tyPZPAgnQqM67AOB
	 rfoeohY2ANWSE5BgXw6K65V3okDodz/Un5xOPw1meEDw5+oNHJvwW7WU3Q77QrHclE
	 xLISrZ7hJzJMsHWlzwuBORwgB+VF/w9gEbsvbfN5gCtZ1UTN+Shg/eFiQQDVbrlgxr
	 jwcV5Qo5vZPxHU7ItbOkg50/jzs90fAe/a/hcPgXInoqv888451RD6M3g9JidQyhgL
	 Cq5nOXQAjNtt6RLpMZ9bFw6TrcUkbJqHFvwKh7Hjsx5uwghvVQfe5kYqiD1AvNED0b
	 T2kIDbSSMS0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0726D5AE61
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173095475361.21030.11685525474368378064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd19f12458cec843dd75df93d1a71dd0294457a3e06e417d804b40b52850b179
Date: Thu, 07 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730954753
