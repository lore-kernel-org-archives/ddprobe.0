Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148662063F3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736495154; cv=none; b=qyplL4DP0dBWm6tAMAXSgfdEAr9BbFQmhUkpUB0tb1u6GH1KzysF64aOKLSgQZdzAi/9/dq0F6kOAi6OC1fMmegS/YC1rYp7Ha8xVtKFLZ63BhAC0ZwrKHwyrYCKEBX6g1kOjD0uFZ8FrYFlk+YIGwdCf2JmYmUdchY3aHUUnBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736495154; c=relaxed/simple;
	bh=/lTe3nlK0hwFxE0Z58YQDy8/A5qv1sKGMOcEOHQOjfM=;
	h=To:Subject:From:Message-Id:Date; b=tcSoktSDGZLc/7F++2l3tgiuOvApiTK8/gAlmMtiQLhvLs60BIvPjiCFlRyPab4BU0oQueCXjw13YeCrsUsFtuwUEiFcGp+cpiUdjq9bOzAtpLWpnaXxCZ1+UYKON3Imn9eO38N49t1QdDttm62tiid0wLMRXqKQGUldt1i+v2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqfDF4HU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqfDF4HU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F24EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736495153;
	bh=/lTe3nlK0hwFxE0Z58YQDy8/A5qv1sKGMOcEOHQOjfM=;
	h=To:Subject:From:Date:From;
	b=cqfDF4HUvQroL5F/o4kL+4lYscWHNM3UX/j3NWxy6BNgClCUR6lxFxM63h1U9hhg0
	 k0HdS/jYGJWyD9ds7rTiwyW5Ulgr+ET6NQA6c0GfR3hgliy9hAumzSuJqcff+lUMeC
	 eK/0XwH4m1HRBFAzgbs7InZCbjGqPDa60uezdRIC2exvRKx0nvVUUkj84A7a6P+rjk
	 eQ/m4/Mt33BOB4vKsWt8MeFkKZoM3MyXTUXxbC04GlXSNad4+fZQpJ+hH63aoeObt3
	 lELdpO66S5Bqx9qT1zZpfL0zSMmfp9q74xTvYx76d9lE5tNhWl8ISe8plpy8j+itUp
	 BZsmGWJA8Iqvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F441E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649515357.13002.16872814897082799814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003b52d1964051730ca49a8a4754715bf18208e0be11d3d00a9a9f11cfac21dc
Date: Fri, 10 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736495153
