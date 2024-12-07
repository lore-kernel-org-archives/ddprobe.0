Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A53D140E2E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733606754; cv=none; b=SX7zbzL8suplymYbBADxK5KppFwK8vw/7u9FofVjEjkB9Hu8B8rdZ063DAPq3cIIlskNKb6c9dvhW2rQwiEaPSqGx8K79x/iV284OYxvDzLiQOQ671zDzxM809up3jhN0Yo3c8ZlxYJqu6l5RkNgEG3EHOoMIr7VK7J0KIXsuWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733606754; c=relaxed/simple;
	bh=il7Dx6ZmuIhfTQbDnVD5y78nVQ/1J38zKevBVPslUKE=;
	h=To:Subject:From:Message-Id:Date; b=kkpb70bJ6KtI3tkovfG2flQPSA8AE4F5xf+cKqBykDMjJBrAYh33yK4Rr/ODTYEzUn77j7+WJAy+saPooFW1mncSU1wmPXWI7GaR8eXECaZ7EMVfM8xKlNHgEFOXCFY0LfzIUbMfn2AYoAX7BlMDIM34Bu7BGxZ7Qorw/7YlLlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzKZXZLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzKZXZLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE445C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733606753;
	bh=il7Dx6ZmuIhfTQbDnVD5y78nVQ/1J38zKevBVPslUKE=;
	h=To:Subject:From:Date:From;
	b=MzKZXZLuOClBSCFI6Tq0tS/WNUTBzPmpBqett+Dmlmlf7FYnQywlA9P7B8iQ6T0CG
	 vydsgeQkrr7OfJauhpdl9KoWiBsSKtl1gpjcCk9WqhUAyq2aQVRA5g/oFz3CpwB+an
	 0B2AHoGIztc3NRCYlHNZsWzmbiL/4bRjLw0cnNjeL3jInEkls+j3/s4wloiK7nKBIh
	 WxwQaf4nsic4um5kilmIYoOd1ik4WGFhLAAgmK9RofPh3z7j01OcUOJZ5UtbIAi6l9
	 jyXj01faQJqNJPZIiLj1OokYXVzm77aJiihKwmxROOeQHrtbgA52sUO7ttcTKMNlYq
	 1TFL9yvMNMapA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2A8E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360675363.32025.1690759582163828679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d4fb22161b8b71f953881949f8281e71322932ea033ac9ae94f281608458a5
Date: Sat, 07 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733606753
