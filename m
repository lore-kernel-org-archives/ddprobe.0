Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEFB2D73B3
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757029194; cv=none; b=UMs0XIHA26C0ePt2N5Nx3Az5QK5zVhKfcCe8VqpqaGVQRnIjjXOyF9a1Ow/x0jzSrCOO5F25oQhYkM9LuhNdeVXw2SK9Yrf8XNJPrrXLhpJq2iAfoAk3dqYqsPxtOe9AXqmakscx7YN/Cga7RQetHRear5bbcTZJVPa9SV7yFYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757029194; c=relaxed/simple;
	bh=LjJGqW7bKvA7inyX85H+fHVJK7srf2zAxFALZ/VgTGA=;
	h=To:Subject:From:Message-Id:Date; b=jO9jlQsaLXbwD/EDYXV1k4rq9L/xrdHPHsWq4it3fVYfpiF+m9gfY+U/krmLYBptf0tI5mwLbsJB/jSjl/Nz9VWaodpUzxKRlrYiDWjrQuZQNX/qH33S7ki187T6DKMX0PpGGF4PvVlpflieLsxHXq9ibYAitVvSYFp9M0+f9pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tETjEOym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tETjEOym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9517C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757029193;
	bh=LjJGqW7bKvA7inyX85H+fHVJK7srf2zAxFALZ/VgTGA=;
	h=To:Subject:From:Date:From;
	b=tETjEOymnnHwLlMgwvA/T0TnN/IVQ5ylmXpUimgLUOhfqeUBRb7Jv5vA6FzPXA3tP
	 5ZCbq/pKNEgj+WnButNYF0jO0iaSZDw0IU2FAh9JBE3e9Mb0RQbSQGN1KsCiDMW8Bv
	 tbH8XZJluxxcMdxzzETi8T0Qn82fVi4r9Zrh2UAVCJ7PRGrlykg7e9vyplKqGa+oxG
	 ozZ2cAcNqbhpHDp7BDhEmLRePjnUDhW4+EhBUurtvqKy1s90yzSdU2+rNIBiMELglX
	 +duUmp6oigpKyfMSx1yMsR/Tf74vshTP0iqawQRJon5tWm3cbw6ILEF0NV9E5FJGle
	 K+b4wYizWv77w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CDCA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702919357.30803.4754259950507798700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4168fd8e60c6dccbedaf5ba7fe5f773c55b943eca57de2d166fad451e5e2943
Date: Thu, 04 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757029193
