Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB0B1FDA76
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741964334; cv=none; b=e5PBrLuk60c0GVw4dXYcff3LvDCyl1MYuewtQltBtUjvlQnDmoAwA3XpK3aJ0vvEPPhUUPdOvfAgIoOAT+OVYPBtrECdBHTIyb3EY5BCsTsiEdsta1lNKbLSlmCfhKcvZW7F35vgfs6Ieq3yYN3+c903DXoswaTZBfR12Z6O+Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741964334; c=relaxed/simple;
	bh=ZSwnb+WgBrqyRewLxgSGhzVWZFGCO+7yfbFt0Tsk+oI=;
	h=To:Subject:From:Message-Id:Date; b=PdcoO1UG2At0RvGD1J9bA3DoOZXAU98xnRkAAyPYybCfd+/uvNpgAlc8Dz7haDpG5gELwLTscq8wpijlKXQb77iCnldtW164lz7ESEFDIxvtdvFJ224N0fnV0fddw2tWwVI8eU2IJQxnkCm7IQ1kYN2QNqCofkk8FSgxo+cJatU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnrJvwio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnrJvwio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB648C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741964333;
	bh=ZSwnb+WgBrqyRewLxgSGhzVWZFGCO+7yfbFt0Tsk+oI=;
	h=To:Subject:From:Date:From;
	b=pnrJvwiojOVTK/eZUDikWlNk3++bpJ9TTc1K4GFOBTexeRrkjirGWBsyJUkryvGVV
	 ICU8/2gHrObb5hfKBBmoB2mWfYv23bCzBUY37b+tNnNOlGp7oQkTrqwSyoqzT5Dukc
	 P3KzJz7EfQKvqeHRLkU0+n8ynMg1bWD8UeDlfjyShOKpOSwbNTCiN6pca813dRgPhM
	 2EIA9HX6835GVqOtmuytWKCe/1fZS77D6w2gfQN2SJOQfUiUlyaFM+b2PUro0mlLeQ
	 2f853HWWx2Q2yWWRML9ZRArad5chi/ASRSyzyoP4utYdKyi+144Ru2WsPyuym5EvTd
	 j4eX6nQZap5HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3AABC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196433366.14970.9309159850936202217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181456319bfdf30f90af505512b105892ea6962427ea7af53ee27de0198c88a7
Date: Fri, 14 Mar 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741964333
