Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CD9126BF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775157334; cv=none; b=i/YLcEnCqFXUWfyx7bcvKHaFUCNbSpWwL7x+SMu2oJmX05Ch+LGQ8h38GoGFqhytpOqnb28o6q2GVJj0pPXVeyc8RxDpa2Z8kkhLiRw1uj2+npNgl/ZORocCQ3jzE8qQNnJ9c//2g3lbhgkXyotLy/B1O4BFVi3IFA30H2aCsCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775157334; c=relaxed/simple;
	bh=kc9M2MMiDlTUS8otvvlm1dEry96WcQVruXnAC4kqMS8=;
	h=To:Subject:From:Message-Id:Date; b=ZK3oBniRNGJkUbb3IYA7syNdVBTQ2HhG4gTIsDxm2E/9JUSK7VBzm897JAamdnO5lP2jmSZwJTxmwZCJgBWPHdPYk0vINXu4c+HmPOAw7Fv12CcXRjsVjmwZevCFN86Z1eEwBxT3PZNgOBWUZBRtyT+9FNxi9Bce6rKjXe4Yoyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScbpxsAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScbpxsAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5B1C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775157333;
	bh=kc9M2MMiDlTUS8otvvlm1dEry96WcQVruXnAC4kqMS8=;
	h=To:Subject:From:Date:From;
	b=ScbpxsAs6CVTUbsbagFsP5mFjRXKJfi4Aj3JjgWWy9eo7KwmoYT5nEpTEWpSUEFL+
	 c/wdzKlqY8dMtVl07NVGZK6yt8GVM82MkgZ96tfPcNWTMOCniuR3MMWKCCIbjh+I21
	 zKW0e0bvRpduVJBR7lZSuajs7gouOMV61rVe8UwJU4Gd55NFlOYqaGfOid5m1M591r
	 jZ41S6zphuownUTapXXbsyQ2JIOZdAPzwVG0FRXrQy0Z2+sI9V3KhoELNmUOrYD0ki
	 d8qG4RPp7NGqy51CPYq37s1V7LytNAPhM2IvxbxPYk/I2ko25Qgim710qDkCwKu0HU
	 1tCHip7sL4aTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA363D6AAFD
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515733368.2279.1666079771120277352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4840a3b14e265560ef93b6a71642ad40e2925246bfd76c25286dd11ac318213a
Date: Thu, 02 Apr 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775157333
