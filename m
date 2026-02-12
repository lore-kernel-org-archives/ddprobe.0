Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E59D2EDD4D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893094; cv=none; b=AXEl5r1r4NklZM2HBxSMpkuqGhsQgjahRwxj0/8l0VzDxhFfBmNF4TfQryvl6GQeYkS113jXRS9O+SDYCRgm2xCqWMv3sJs6bspGsq3HArHAAQqu87kyf5sgV7o432IJCROPvJlmc09YVlqtpvdemJB1nIJl3yaQ1S/hJbUN/pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893094; c=relaxed/simple;
	bh=FXbAGQAkR+d9HuuooOA1sl5p3QzEEgs0u8P2bu+N7bE=;
	h=To:Subject:From:Message-Id:Date; b=IKXkyyPDNNAHJ+1nj3EBY2llU6NCTZBRHke+g6KhNvrbJKrmn46fXvyMlhF4K6C0iOjLbluUJrlmgxjrsbRjwBTmrrCgxw67u94cePJFX9MJilFHIBGOVRzq87e/hIro7CU5Ed8JMIYRwcCnIUJE/r1UNnsrqyzbhSXP1EEM7Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2f3rC2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2f3rC2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A1BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770893093;
	bh=FXbAGQAkR+d9HuuooOA1sl5p3QzEEgs0u8P2bu+N7bE=;
	h=To:Subject:From:Date:From;
	b=M2f3rC2DWBky/+YlKhO7OYd0hBCkbPKAGHEK91F6YPa6yqAdTVL5q1TD2ad52PPBk
	 0bMb818bABQLV/Q23BFS9xTYUMZbq9/qHV/CEbjn6AP+uYYSEFyRt7Vk7JJBoL/8El
	 nq+QbXqR3KLcOfp++G0tNNPgk4vt6FQiRpIXhD1LP+JY2EU05W1MfREf6NTFTg4aKD
	 OYShT5UFQ2FawcmuTLqRVO8I3OYGastyiFIHcrKeucKJAxoHcb8qu1EyO7UcvUeS35
	 UrMvU+Ac6aG5LdqMDY7WhIYCeR3MjMzIeUAHQVu8TK0kReUuv5tbL9rri/tRPUQXhr
	 K+vEiRtAgJp+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B629EB48F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089309362.25560.10178766262374393597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb944785497bd1dfeba72767e314e832e1fa43e0b76d8f3ea361e5848c3c2b5
Date: Thu, 12 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770893093
