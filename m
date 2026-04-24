Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BF9312819
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777068454; cv=none; b=QAdpHObnPgDxJ44gi/44JbLlXnueVamwcLlo+eLYG4Tc9+ZF4N8W73qh+Rq88ey2u64ZyT24Wr+YCJ4knx5r5Z7rx1NkpgIZyrNel5T6h+fO3IWLvYsucLsKCo3KR1/pm88ZZJOPaQUcrK5WIb3gDkYRQhfd27WPncztURr6+iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777068454; c=relaxed/simple;
	bh=+EYWm9tv9Bd0nqFkEQeNRCIgZ/wvWdQzb3pVQQ63akY=;
	h=To:Subject:From:Message-Id:Date; b=POB9F9TpZ9zBAt8YnC0nngsvPRpqR/E7/KmwqaGNJt3OFsJOhfjZUvTgCzYGNVir6IVnRiZIaoprtcUCZQPemfbV+0fb/pHatAsGXR7+ITzOe/OMc0LGmgIs2C4WFHaLo+O6I3N19COVzFZnukLvSlTwv+4fKg2vxRFHDGnvHzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MifWg3fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MifWg3fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AB9C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777068453;
	bh=+EYWm9tv9Bd0nqFkEQeNRCIgZ/wvWdQzb3pVQQ63akY=;
	h=To:Subject:From:Date:From;
	b=MifWg3fsDhOCe2sZl5cymLLsD5W0RBTWOFGHKh6THyJvZ2/oXqI4kBl2dnse1juaE
	 t5s+DMO3oILGgXp27yLvuhGol0jK4fXgD5Dj3oYBLhrQNj6Gbvwda85gs4lEQwfQSU
	 oGcyLhaCg2ALLHcvMtoSwkR/EeJ4VrYbr7A4i+lhBfAe50vJgh03spEf9Rt3f4zNy8
	 uV/DgzME+NoBHLLV/q7KBEyPyec6jGcXjxDwmZJPXQvkbwa9PkfsGlitC3firLPLPl
	 WIdG8IN8fGNPEJdSkXUDB+Cj79/t83d9IIp5HVgSFJZzDJ5MCwGtBCSRVcndL+ViX/
	 oyxJ/2WWRcdnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD57FF885A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706845371.18939.6680494132483588813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c848a5f7a6b0c3c35d556a2424ceb04fa44f099d79e20fef2f402c2d714789e8
Date: Fri, 24 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777068453
