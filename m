Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD147478
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788745234; cv=none; b=r5UaX0cQZh1oBkv9erqfzc5eCBvIiUFu2eUc5T9byBf5dgXF9T7S6P6jIxs9xvngz7l6N6u6EyU6tIX90Dv5xKxx1EtUes9vjk5pZEzAEPEFuXmeTR4Ho7N9raOD2OY7SH272xJ3qO7LhI6A3b9GkxKwYyCYyoki70oWCBrosu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788745234; c=relaxed/simple;
	bh=zbaHnlLp2KFhGbCCa2hmAtHrOXi19qJdmvZmZ3IBWfc=;
	h=To:Subject:From:Message-Id:Date; b=nsZpfNGL9bO24RhqKv6WyX4UyGFgBx29eklU39blBhaJi6reNGGI4i/uQP9c396XNsYQjHz3gQgNtEw30kYSGHmPLtY0Jz+v61YeL6wjK3lmTvpOcElAEf91wl/x3xQlUQuU9cwJe8pwvx+NOFMmocnGX9hcQuxhXGCQg1LlPrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0dqibu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0dqibu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4910C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788745233;
	bh=zbaHnlLp2KFhGbCCa2hmAtHrOXi19qJdmvZmZ3IBWfc=;
	h=To:Subject:From:Date:From;
	b=c0dqibu8XQ9VL9Me0RdrxcELL55HOqWlkLCalGNgKnsCk5L0DfumE1myIPNW5vJ5z
	 k9UmnnyoZuFhG8o4EH3+fM38Lwm5U5Px3OHftdMxRGOmQGyRg0ywGq+2S/m4YBq9s6
	 G6oJcgND2bxaysrli79MADbxAGwuPxGyE6DRpQz0j+ReywFv5KfqS/gr+Ufh8DwPWZ
	 Hvv2aoAe7PeJD07Eh5rBSDUuxAPuPg8Dmp150zhsU2JVhGaNH6TuuCBKB4SgzTKmwj
	 tyuAl3mZUb7n0RtwejFNs7Bevkioba/nCtwExNQFfK5RcGjSFxNqIHPnaFxC3PVvrl
	 HH2CUDN4Vl7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DEFC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874523369.29529.17867460335806259269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b28df1f58bf837a29ea86f764144949377d2e887caedbdada31f7d8686df60c
Date: Mon, 07 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788745233
