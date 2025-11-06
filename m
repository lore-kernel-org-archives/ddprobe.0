Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A770217F27
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762457994; cv=none; b=S30NmMqZHh1rRt/iMLnraGvUEWjZK8+sdS+dQaD1A1OdY59A+wDiJJ0t7XcDcGeHBtWwqH+zEZiWhnGJ3xv7CKkmHrCQZANETnWyfXxBnME+XftKVmuNcg1bzTVIbchPHhYWpHLM5DuZbnlLRyEz3y+k2JuP1NVMvMFZETcEwsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762457994; c=relaxed/simple;
	bh=ROVNFeKgcdwZK84G17eQtlt7mnll8qh3cGD6LNMl7ZE=;
	h=To:Subject:From:Message-Id:Date; b=btd7Heu1WXyyEDyafpHiWh7YUnTIYU0Rcbue1EqOTde7GEZXVTf5thAHeG70Hac7H3eSAi9tooR0W2gecjRWLwo5NPy8BmMdRhBWsepyFkSxYfm3Ie5veg4JAAyWxgPzvZwOCK0wYHIjnyJ+e0L9A2sUV8G671/QEzh5Yy87Hmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnyWNWTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnyWNWTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6193C113D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762457993;
	bh=ROVNFeKgcdwZK84G17eQtlt7mnll8qh3cGD6LNMl7ZE=;
	h=To:Subject:From:Date:From;
	b=gnyWNWTPLcMwvzyCaHzOhyVVZ1Mmw2tKMUR3EdOeUaHkC4zmQZS257PPD/0dSYIh0
	 p1JuA3TAf25bWM2M2eeU9USCj21UPX851rpQgIRCMm07ShW0WXOBMErhBYtiTWb31t
	 KS6XVXC5rS4nG/BwoLPngtZi24xMcMsr+d70UMRgcQslvNA/S5mfy2VlRJqAsUn3Yw
	 CUqUeOYSbDtPRnhsN5iO0D1bCW7JQCc1Gu37fI63JK3izTz1oaMVGJinlWOxQVgpGi
	 x2FHb1hOEQNo4CkYcEttEHVEV/U/Rd6a0IIWQols5MGte8ij45UK9/7R2IbpZqnYjx
	 hyIJdqR5ON6TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94440CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245799358.24623.15599101987236713858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b48483eb5ef0a29b3cf3281f6b936c1217b56d49494261976baa0e521bf918
Date: Thu, 06 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762457993
