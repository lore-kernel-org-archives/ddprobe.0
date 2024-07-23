Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C22A15444F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721754954; cv=none; b=oXlqFvocW8gYRDwThmQcaErPHyJNK0QfS92XUvZYfZwz+KHsyEf8rNQwyRpoKA+wlXITWZoPFl++6VAx9ThYaGhC5a61E+UbgMnaLoWFGIy6U09ZMDFwlN7AxP7Ws5dC6cGFhhG+8Jp9WPsZGOh/2TBWsrbIxOZKfRTQI/HT2J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721754954; c=relaxed/simple;
	bh=EXf8zIrKpp92hBRjNa4+2/A6bJ0JoNK0kzDiJY2vvrw=;
	h=To:Subject:From:Message-Id:Date; b=Q2x4Q8/AJkeA2KXyyu1WCEaGh9xx3zN+qG7kJP2qSDKqCM7PuK3f9oZE+k+19bvKlT/HBMawiRWq0Fp0L/hPlUm5WwSktFhJkIeZ30MTHb/YOzMW2u/tqdt0mhtM1FCkWSokch3Z9RGeS5BZfOUea3k0w5qY2gW1FaIr6Pr/WcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+VdUb4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+VdUb4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B71C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721754953;
	bh=EXf8zIrKpp92hBRjNa4+2/A6bJ0JoNK0kzDiJY2vvrw=;
	h=To:Subject:From:Date:From;
	b=p+VdUb4baMmO637YK/kD7nGc96PetTFh8udeen5ds/z/NoZIM7yJZffgdIzJtk/IM
	 aKCWlGYLIokMGAhr1+l7pS0Czx5KU/JcoB/MhloEIb2jCc0a0nODTJ/+AogSg1smOB
	 3+/QcTjdhWQVTFBVuH/cUMm0eqgKc2ijFYP2z5TzdwOWS1O4esUOonEAK6wFc8Ti2A
	 Guv4GMJ5xJ1OhykYm/Kq6UkbgTKJZWpgyLlECI3xfTcf+3p93s/ve0IGqY9jKnDzsZ
	 Rx5/xxHGE9kkyb5Q7MxUyWkND0AuIafMdhfaSJt+souNqNibhnkoRvapRzeCE7CGNo
	 dCvnYTnBtL6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D7EC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175495360.15957.15582292178018596654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae70136ae13f88902661c3f9795ba180c2b686492e3cebd295a6493e0c0146ca
Date: Tue, 23 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721754953
